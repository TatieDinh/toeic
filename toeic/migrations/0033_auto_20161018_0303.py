# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-10-18 03:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0032_auto_20161018_0256'),
    ]

    operations = [
        migrations.AlterField(
            model_name='dictation',
            name='audio',
            field=models.FileField(blank=True, null=True, upload_to='audios/dictations'),
        ),
    ]