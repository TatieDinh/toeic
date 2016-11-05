# -*- coding: utf-8 -*-
# Generated by Django 1.9.10 on 2016-10-18 02:15
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('toeic', '0029_auto_20161017_0249'),
    ]

    operations = [
        migrations.CreateModel(
            name='Dictation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.CharField(max_length=200)),
                ('translation', models.CharField(max_length=200)),
                ('date_added', models.DateTimeField(auto_now_add=True)),
                ('audio', models.FileField(blank=True, null=True, upload_to='audios/vocabs')),
                ('level', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='toeic.Level')),
                ('topics', models.ManyToManyField(blank=True, null=True, to='toeic.Topic')),
            ],
        ),
        migrations.CreateModel(
            name='VideoType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.CharField(default='', max_length=100)),
                ('date_added', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='video',
            name='listeningtopics',
        ),
        migrations.AddField(
            model_name='question',
            name='video',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='toeic.Video'),
        ),
        migrations.AddField(
            model_name='video',
            name='topics',
            field=models.ManyToManyField(blank=True, null=True, to='toeic.Topic'),
        ),
        migrations.AlterField(
            model_name='video',
            name='vocabs',
            field=models.ManyToManyField(blank=True, null=True, to='toeic.Vocab'),
        ),
        migrations.AddField(
            model_name='video',
            name='dictations',
            field=models.ManyToManyField(blank=True, null=True, to='toeic.Dictation'),
        ),
        migrations.AddField(
            model_name='video',
            name='videoType',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='toeic.VideoType'),
        ),
    ]