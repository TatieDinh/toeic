# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-11-16 08:44
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0052_auto_20161115_1928'),
    ]

    operations = [
        migrations.AddField(
            model_name='speakinganswer',
            name='image',
            field=models.FileField(blank=True, null=True, upload_to='images/speakinganswer'),
        ),
        migrations.AlterField(
            model_name='speakinganswer',
            name='audio',
            field=models.FileField(blank=True, null=True, upload_to='audios/speakinganswer'),
        ),
    ]