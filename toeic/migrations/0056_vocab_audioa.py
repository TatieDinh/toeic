# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-11-18 04:40
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0055_auto_20161117_0542'),
    ]

    operations = [
        migrations.AddField(
            model_name='vocab',
            name='audioa',
            field=models.FileField(blank=True, null=True, upload_to='audios/vocabs'),
        ),
    ]
