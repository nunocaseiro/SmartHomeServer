# Generated by Django 3.1.3 on 2021-02-07 19:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0029_auto_20210206_0227'),
    ]

    operations = [
        migrations.AlterField(
            model_name='housekey',
            name='key',
            field=models.CharField(blank=True, default='4271496031', editable=False, max_length=10, unique=True),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='licenseplate',
            field=models.CharField(max_length=6, unique=True),
        ),
    ]