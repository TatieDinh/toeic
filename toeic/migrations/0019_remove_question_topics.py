# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-10-14 10:52
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0018_remove_question_grammartopics'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='question',
            name='topics',
        ),
    ]
