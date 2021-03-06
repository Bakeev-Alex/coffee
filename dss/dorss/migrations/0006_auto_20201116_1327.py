# Generated by Django 3.1.3 on 2020-11-16 10:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dorss', '0005_auto_20201114_1422'),
    ]

    operations = [
        migrations.CreateModel(
            name='ImageProductionModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='production/%Y/')),
            ],
        ),
        migrations.CreateModel(
            name='ProductionModels',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(blank=True, max_length=250)),
                ('body', models.TextField(blank=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='introimagesmodel',
            name='img',
        ),
    ]
