from django.core.management.base import BaseCommand
from talon import quotations
from talon import signature

import email
import json
import os
from imapclient import IMAPClient
from slackclient import SlackClient
from mail.models import MailMessage
from htmlslacker import HTMLSlacker
from datetime import date
from django.conf import settings


def get_body(email_message):
    """Return body text, by assuming the first text part is the body.

    We assume an explicit text/plain part is preferable HMTML, which
    we might want to revisit, given we Slack-format HTML later on in
    any case.

    """
    body = None
    for part in email_message.walk():
        if part.get_content_type() == 'text/plain':
            body = part.get_payload()
            break
        if part.get_content_type() == 'text/html':
            body = part.get_payload(decode=True)
            if body:
                body = body.decode('utf8')
                break
    return body, part.get_content_type()


def fetch_messages(folder, **options):
    with IMAPClient(settings.IMAP_HOST) as server:
        server.login(os.environ['USER'], os.environ['PASSWORD'])
        server.select_folder(folder)
        if not options['text']:
            if folder == 'INBOX':
                criteria = ['UNSEEN']
            elif folder == 'Sent Items':
                # "UNSEEN" doesn't work with this folder - they appear to
                # be defaulted to SEEN when they are posted.
                criteria = ['SINCE', date.today()]
        else:
            criteria = ['TEXT', options['text']]
        messages = server.search(criteria)
        # keys are IMAP message ids
        return [x[b'RFC822'] for x in server.fetch(messages, 'RFC822').values()]


def save_fixtures(folder, **options):
    messages = fetch_messages(folder, **options)
    for i, msg in enumerate(messages):
        with open("/tmp/%s.msg" % i, "wb") as f:
            f.write(msg)


def get_messages(folder, **options):
        for message_data in fetch_messages(folder, options):
            email_message = email.message_from_bytes(message_data)
            subject = email_message.get('Subject')
            from_header = email_message.get('From')
            from_name = email.utils.getaddresses(
                [from_header])[0][0]
            msgid = email_message.get('Message-ID').strip()
            try:
                seen = MailMessage.objects.get(pk=msgid)
            except MailMessage.DoesNotExist:
                # Create a nicely-formatted version of the message
                body, mimetype = get_body(email_message)

                #reply = quotations.extract_from(body, mimetype)
                text, sig = signature.extract(body, sender=from_header)
                msg = "*New message from {}*\n{}".format(
                    from_name,
                    HTMLSlacker(text).get_output())
                opts = {
                    'channel': "#mailtest",
                    'text': msg
                }

                # Attempt to thread any email conversation as a Slack thread
                references = email_message.get('References', '').split()
                thread = MailMessage.objects.filter(msgid__in=references)
                if thread:
                    opts['thread_ts'] = thread.first().slackthread_ts

                sc = SlackClient(os.environ['SLACK_TOKEN'])
                response = sc.api_call(
                    "chat.postMessage",
                    **opts
                )
                if response['ok']:
                    ts = response['ts']
                    msg, created = MailMessage.objects.get_or_create(
                        subject=subject,
                        msgid=msgid)
                    msg.slackthread_ts = ts
                    msg.save()


class Command(BaseCommand):
    help = ('Monitor an IMAP folder, and post its contents to Slack, '
            'attempting to thread messages')

    def add_arguments(self, parser):
        parser.add_argument(
            '--text',
            help="For debugging, limit results in "
            "folder to those matching the given text")

    def handle(self, *args, **options):
        import talon
        # loads machine learning classifiers
        talon.init()
        save_fixtures("INBOX", **options)
        #get_messages("Sent Items", **options)
