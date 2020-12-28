# Generated by Django 3.1.3 on 2020-12-28 17:19

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('server', '0024_delete_userprofile'),
    ]

    operations = [
        migrations.AddField(
            model_name='home',
            name='users',
            field=models.ManyToManyField(to=settings.AUTH_USER_MODEL),
        ),
    ]
