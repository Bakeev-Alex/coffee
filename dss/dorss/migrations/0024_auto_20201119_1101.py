# Generated by Django 3.1.3 on 2020-11-19 08:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('dorss', '0023_auto_20201118_2335'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='applicationmodel',
            options={'verbose_name_plural': 'Заказать услугу с покрытием'},
        ),
        migrations.RenameField(
            model_name='imageservicemodel',
            old_name='image',
            new_name='image_serv',
        ),
    ]
