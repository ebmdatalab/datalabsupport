import glob
import os
from unittest.mock import MagicMock
from unittest.mock import patch

from django.test import TestCase
from django.conf import settings


class MockIMAPClient(MagicMock):
    def __init__(self, *args, **kwargs):
        super(MockIMAPClient, self).__init__(*args, **kwargs)
        msgid = kwargs.get('msgid', None)
        self.return_value = self.fetch(msgid)

    def fetch(self, msgid):
        base = os.path.join(settings.BASE_DIR, 'mail', 'fixtures', 'emails')
        if msgid:
            files = [os.path.join(base, "%s.msg" % msgid)]
        else:
            files = glob.glob(os.path.join(base, "*.msg"))
        data = []
        for fname in files:
            with open(fname, "rb") as f:
                data.append(f.read())
        return data


class TestEmailParsing(TestCase):
    fixtures = ['mailmessage']

    @patch('mail.management.commands.monitor_inbox.fetch_messages',
           new=MockIMAPClient(msgid='0'))
    @patch('mail.management.commands.monitor_inbox.SlackClient')
    def test_message_parsing_1(self, mock_slack):
        from mail.management.commands.monitor_inbox import get_messages
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}

        get_messages('INBOX')
        mock_slack.return_value.api_call.assert_called_with(
            'chat.postMessage',
            channel='#mailtest',
            text='*New message from Seb Bacon*\nfarewell')

    @patch('mail.management.commands.monitor_inbox.fetch_messages',
           new=MockIMAPClient(msgid='1'))
    @patch('mail.management.commands.monitor_inbox.SlackClient')
    def test_message_parsing_2(self, mock_slack):
        # XXX I'd like to make this more nicely parsed!
        from mail.management.commands.monitor_inbox import get_messages
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}
        get_messages('INBOX')
        mock_slack.return_value.api_call.assert_called_with(
            'chat.postMessage',
            channel='#mailtest',
            text='*New message from Tim Jones*\nNew feedback from tim@nhs.net Antidepressants\n \n Dear Sirs,\n \n We are going to be doing some work in Southampton City around antidepressants , especially reviewing patients who have been on ADs for four years and more.\n \n I just wondered if you could send me for each practice the numbers/costs of patients who have been on ADs for 4 years and more , prescribed the following in BNF paragraphs:\n \n 4.3.1 TCAs and related ADs 4.3.2 MOAIs 4.3.3 SSRIs 4.3.4 Other ADs drugs\n \n This is so I can have some numbers of patients that needs to be reviewed and also costings to the practice.\n It would be useful to have some figures for the whole CCG as a whole as well.\n \n Regards Tim Jones\n \n Tim Jones\n Locality Pharmacist\n Medicines Management Team\n \n Manchester City Clinical Commissioning Group\n First Floor, Folly Road\n Badbrook\n String\n GL5 6TT\n \n Tel: 022 1234 123456\n Work Mob: 07777 887887\n Usual days of work: Tuesday, Wednesdays, Thursday and Fridays\n \n \n \n ********************************************************************************************************************\n \n This message may contain confidential information. If you are not the intended recipient please inform the sender that you have received the message in error before deleting it.\n Please do not disclose, copy or distribute information in this e-mail or take any action in relation to its contents. To do so is strictly prohibited and may be unlawful. Thank you for your co-operation.\n \n NHSmail is the secure email and directory service available for all NHS staff in England and Scotland. NHSmail is approved for exchanging patient data and other sensitive information with NHSmail and other accredited email services.\n \n For more information and to find out how you can switch, https://portal.nhs.net/help/joiningnhsmail\n \n You can reply to this email, or visit <https://doorbell.io/applications/4272/feedback/2906565|https://doorbell.io/applications/4272/feedback/2906565>\n')

    @patch('mail.management.commands.monitor_inbox.fetch_messages',
           new=MockIMAPClient(msgid='3'))
    @patch('mail.management.commands.monitor_inbox.SlackClient')
    def test_no_repost(self, mock_slack):
        """A message already sent to Slack should not be sent again
        """
        from mail.management.commands.monitor_inbox import get_messages
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}
        get_messages('INBOX')
        mock_slack.return_value.api_call.assert_not_called()

    @patch('mail.management.commands.monitor_inbox.fetch_messages',
           new=MockIMAPClient(msgid='4'))
    @patch('mail.management.commands.monitor_inbox.SlackClient')
    def test_threading(self, mock_slack):
        """A message which is a reply should be threaded in Slack
        """
        from mail.management.commands.monitor_inbox import get_messages
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}
        get_messages('INBOX')
        mock_slack.return_value.api_call.assert_called_with(
            'chat.postMessage',
            channel='#mailtest',
            text='*New message from Seb Bacon*\nfarewell reply',
            thread_ts="1538671906.000100")
