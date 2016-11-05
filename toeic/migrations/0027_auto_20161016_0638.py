# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-10-16 06:38
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0026_auto_20161016_0535'),
    ]

    operations = [
        migrations.AddField(
            model_name='vocab',
            name='phonetic',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='vocab',
            name='main_form',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
        migrations.AlterField(
            model_name='vocab',
            name='other_form',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
    ]