# Generated by Django 3.1.3 on 2020-12-28 19:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0029_auto_20201228_1948'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='home',
            name='geo',
        ),
        migrations.AddField(
            model_name='home',
            name='latitude',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AddField(
            model_name='home',
            name='longitude',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
    ]
