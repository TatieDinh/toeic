# -*- coding: utf-8 -*-
# Generated by Django 1.10 on 2016-12-29 04:58
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0063_auto_20161229_0457'),
    ]

    operations = [
        migrations.AddField(
            model_name='useranswer',
            name='usertest',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='toeic.UserTest'),
        ),
    ]
