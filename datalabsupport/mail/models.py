from django.db import models


class MailMessage(models.Model):
    msgid = models.TextField(primary_key=True)
    subject = models.TextField()
    slackthread_ts = models.CharField(max_length=100, blank=True, null=True)

    def __str__(self):
        return "{} {} {}".format(self.subject, self.msgid, self.slackthread_ts)
