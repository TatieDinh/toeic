# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-11-11 03:05
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0044_auto_20161110_0723'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='speakinganswer',
            name='speakingQuestion',
        ),
        migrations.AddField(
            model_name='speakingquestion',
            name='speakingAnswer',
            field=models.ManyToManyField(blank=True, null=True, to='toeic.SpeakingAnswer'),
        ),
    ]
