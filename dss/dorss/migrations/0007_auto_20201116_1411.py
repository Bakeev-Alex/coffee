# Generated by Django 3.1.3 on 2020-11-16 11:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('dorss', '0006_auto_20201116_1327'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='imagemodel',
            options={'verbose_name_plural': 'Изображение верхнего блока'},
        ),
        migrations.AlterModelOptions(
            name='introimagesmodel',
            options={'verbose_name_plural': 'Контент верхнего блока'},
        ),
        migrations.AddField(
            model_name='productionmodels',
            name='title_body',
            field=models.CharField(blank=True, max_length=250),
        ),
    ]
