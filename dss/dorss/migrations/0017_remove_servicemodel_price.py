# Generated by Django 3.1.3 on 2020-11-17 09:41

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dorss', '0016_imageservicemodel'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='servicemodel',
            name='price',
        ),
    ]
