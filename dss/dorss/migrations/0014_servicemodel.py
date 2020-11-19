# Generated by Django 3.1.3 on 2020-11-17 09:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dorss', '0013_auto_20201116_1654'),
    ]

    operations = [
        migrations.CreateModel(
            name='ServiceModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=250)),
                ('price', models.CharField(max_length=100)),
                ('body', models.TextField()),
                ('image', models.FileField(blank=True, upload_to='service/%Y/')),
                ('body_center', models.TextField(blank=True)),
                ('title_project', models.CharField(max_length=200)),
                ('title_table', models.CharField(blank=True, max_length=250)),
                ('body_table', models.TextField(blank=True)),
            ],
            options={
                'verbose_name_plural': 'Страница сервис',
            },
        ),
    ]
