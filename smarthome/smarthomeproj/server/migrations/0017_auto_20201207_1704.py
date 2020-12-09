# Generated by Django 3.1.3 on 2020-12-07 17:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0016_auto_20201207_1501'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sensor',
            name='sensortype',
            field=models.CharField(choices=[('led', 'LED'), ('motion', 'MOTION'), ('camera', 'CAMERA'), ('servo', 'SERVO')], default='Undefined', max_length=20),
        ),
    ]
