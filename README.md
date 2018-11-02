A simple Django app for helping us manage our support emails

At the moment, it just monitors our shared IMAP folder(s) for unseen
messages, and then posts them to our Slack channel.

We use the university IMAP system as it allows us to use a proper
email client and all reply from the same place, and use their spam
filtering, etc etc.

Possible future directions:

* As messages are routed to our shared IMAMP folder via Mailgun, we
  could potentially extend this to handle incoming mail automatically
* Slack bot commands to list unreplied emails (could rely on imap `NOT
  ANSWERED` flags?)
* Ability to reply inline via Slack
