# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-10-12 02:05
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0007_auto_20161011_1946'),
    ]

    operations = [
        migrations.AddField(
            model_name='vocab',
            name='main_form',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AddField(
            model_name='vocab',
            name='other_form',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
