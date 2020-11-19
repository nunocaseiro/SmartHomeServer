# Generated by Django 3.1.3 on 2020-11-19 00:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0004_sensor_sensortype'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sensor',
            name='sensortype',
            field=models.CharField(choices=[('Led', 'Led'), ('Weight', 'Weight'), ('Camera', 'Camera'), ('Servo', 'Servo')], default='Undefined', max_length=20),
        ),
    ]
