import email
import psycopg2
from imapclient import IMAPClient
import os
from slackclient import SlackClient

slack_token = "https://hooks.slack.com/services/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"
sc = SlackClient(slack_token)


user = "prhc0256@OX.AC.UK\\ebmdata"
password = "8IkSgE7g8WWQ"
host = "outlook.office365.com"
port = 993

# If we want to thread messages, we're going to have to record slack's ts id

with IMAPClient(host) as server:
    server.login(user, password)
    server.select_folder('INBOX', readonly=True)
    # XXX or see IDLE mode
    messages = server.search('UNSEEN')
    for uid, message_data in server.fetch(messages, 'RFC822').items():
        email_message = email.message_from_bytes(message_data[b'RFC822'])
        subject = email_message.get('Subject')
        from_ = email_message.get('From')
        body = email_message.get_payload()
        sc.api_call(
            "chat.postMessage",
            channel="#mailtest",
            text=body
        )
        print(uid, from_, subject, )
