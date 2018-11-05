from django.core.management.base import BaseCommand
from django.template.defaultfilters import truncatewords_html
from talon import quotations
from talon import signature
from bs4 import BeautifulSoup

import email
import os
from imapclient import IMAPClient
from slackclient import SlackClient
from mail.models import MailMessage
from htmlslacker import HTMLSlacker
from datetime import date
from datetime import timedelta
from django.conf import settings


def get_body(email_message):
    """Return body text, by assuming the first text part is the body.

    We assume an explicit text/plain part is preferable HMTML, which
    we might want to revisit, given we Slack-format HTML later on in
    any case.

    """
    body = None
    for part in email_message.walk():
        charset = part.get_content_charset('iso-8859-1')
        if part.get_content_type() == 'text/html':
            body = part.get_payload(decode=True).decode(charset, 'replace')
            if body:
                body = str(BeautifulSoup(body))
                break
        if part.get_content_type() == 'text/plain':
            body = part.get_payload(decode=True).decode(charset, 'replace')
    return body, part.get_content_type()


def fetch_messages(**options):
    with IMAPClient(settings.IMAP_HOST) as server:
        server.login(os.environ['USER'], os.environ['PASSWORD'])
        server.select_folder(options['folder'])
        if not options['text']:
            criteria = ['SINCE', date.today() - timedelta(hours=1)]
        else:
            criteria = ['TEXT', options['text']]
        messages = server.search(criteria)
        # keys are IMAP message ids
        return [x[b'RFC822'] for x in server.fetch(messages, 'RFC822').values()]


def save_fixtures(**options):
    messages = fetch_messages(**options)
    for i, msg in enumerate(messages):
        with open("/tmp/%s.msg" % i, "wb") as f:
            f.write(msg)


def get_messages(**options):
    for message_data in fetch_messages(**options):
        channel = options['channel']
        email_message = email.message_from_bytes(message_data)
        subject = email_message.get('Subject')
        from_header = email_message.get('From')
        to_header = email_message.get('To')
        from_name = email.utils.getaddresses(
            [from_header])[0][0]
        msgid = email_message.get('Message-ID').strip()
        try:
            seen = MailMessage.objects.get(pk=msgid)
        except MailMessage.DoesNotExist:
            # Create a nicely-formatted version of the message
            body, mimetype = get_body(email_message)
            reply = quotations.extract_from(body, mimetype)
            text, sig = signature.extract(reply, sender=from_header)
            msg = "_{}_ to _{}_\n*{}*\n\n{}".format(
                from_name,
                to_header,
                subject,
                HTMLSlacker(text).get_output())
            msg = truncatewords_html(msg, 400)
            opts = {
                'channel': channel,
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

        parser.add_argument(
            '--channel',
            required=True,
            help="Slack channel to post to")

        parser.add_argument(
            '--folder',
            required=True,
            help="IMAP folder to check")

    def handle(self, *args, **options):
        import talon
        # loads machine learning classifiers
        talon.init()
        get_messages(**options)
