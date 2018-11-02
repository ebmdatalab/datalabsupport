import glob
import os
from unittest.mock import MagicMock
from unittest.mock import patch

from django.test import TestCase
from django.conf import settings
from mail.management.commands.monitor_imap_folder import get_messages


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

    def setUp(self):
        import talon
        # loads machine learning classifiers and xpath extensions
        talon.init()

    @patch('mail.management.commands.monitor_imap_folder.fetch_messages',
           new=MockIMAPClient(msgid='0'))
    @patch('mail.management.commands.monitor_imap_folder.SlackClient')
    def test_message_parsing_1(self, mock_slack):
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}

        get_messages(folder='INBOX', channel='#mailtest')
        mock_slack.return_value.api_call.assert_called_with(
            'chat.postMessage',
            channel='#mailtest',
            text='_Seb Bacon_ to _Seb Bacon - ebmdatalab <ebmdatalab@phc.ox.ac.uk>_\n*adieu*\n\nfarewell')

    @patch('mail.management.commands.monitor_imap_folder.fetch_messages',
           new=MockIMAPClient(msgid='1'))
    @patch('mail.management.commands.monitor_imap_folder.SlackClient')
    def test_message_parsing_2(self, mock_slack):
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}

        get_messages(folder='INBOX', channel='#mailtest')
        expected = ("View the <http://info.sagepub.co.uk/c/"
                    "11o8zNX6zKkZTZfhD08iisMdxM3A|_blank|submission "
                    "guidelines> for details")
        returned = mock_slack.return_value.api_call.call_args[-1]['text']
        self.assertIn(expected, returned)

    @patch('mail.management.commands.monitor_imap_folder.fetch_messages',
           new=MockIMAPClient(msgid='3'))
    @patch('mail.management.commands.monitor_imap_folder.SlackClient')
    def test_no_repost(self, mock_slack):
        """A message already sent to Slack should not be sent again
        """
        from mail.management.commands.monitor_imap_folder import get_messages
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}
        get_messages(folder='INBOX', channel='#mailtest')
        mock_slack.return_value.api_call.assert_not_called()

    @patch('mail.management.commands.monitor_imap_folder.fetch_messages',
           new=MockIMAPClient(msgid='4'))
    @patch('mail.management.commands.monitor_imap_folder.SlackClient')
    def test_threading(self, mock_slack):
        """A message which is a reply should be threaded in Slack
        """
        from mail.management.commands.monitor_imap_folder import get_messages
        mock_slack.return_value.api_call.return_value = {'ok': True, 'ts': '1234'}
        get_messages(folder='INBOX', channel='#mailtest')
        mock_slack.return_value.api_call.assert_called_with(
            'chat.postMessage',
            channel='#mailtest',
            text='_Seb Bacon_ to _Seb Bacon - ebmdatalab <ebmdatalab@phc.ox.ac.uk>_\n*adieu*\n\nfarewell reply',
            thread_ts="1538671906.000100")
