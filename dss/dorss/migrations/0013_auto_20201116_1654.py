# Generated by Django 3.1.3 on 2020-11-16 13:54

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('dorss', '0012_auto_20201116_1620'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProductionBlogModel',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=250)),
                ('slug', models.SlugField(max_length=250, unique_for_date='publish')),
                ('body', models.TextField(verbose_name='Текст новости')),
                ('image', models.ImageField(upload_to='news/%Y/')),
                ('publish', models.DateTimeField(default=django.utils.timezone.now)),
                ('status', models.CharField(choices=[('draft', 'Draft'), ('published', 'Published')], default='published', max_length=10)),
            ],
            options={
                'verbose_name_plural': 'Производственная база Блог',
                'ordering': ('-publish',),
            },
        ),
        migrations.AlterModelOptions(
            name='newsmodel',
            options={'ordering': ('-publish',), 'verbose_name_plural': 'Страница новостей'},
        ),
        migrations.AlterModelOptions(
            name='projectsmodel',
            options={'ordering': ('-publish',), 'verbose_name_plural': 'Проекты на главной странице'},
        ),
    ]
