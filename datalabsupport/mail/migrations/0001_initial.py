# Generated by Django 2.1.2 on 2018-10-04 15:09

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='MailMessage',
            fields=[
                ('msgid', models.TextField(primary_key=True, serialize=False)),
                ('subject', models.TextField()),
                ('slackthread_ts', models.CharField(blank=True, max_length=100, null=True)),
            ],
        ),
    ]
