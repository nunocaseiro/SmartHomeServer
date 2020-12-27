from django.db import models
from django.contrib.auth.models import AbstractUser
from django.core.validators import MaxValueValidator, MinValueValidator
from django.conf import settings


# Create your models here.
class Home(models.Model):
    name = models.CharField(max_length=20)

    def __str__(self):
        return "%s" % (self.name)

class Room(models.Model):
    name = models.CharField(max_length=20)
    home = models.ForeignKey(Home, on_delete=models.CASCADE)
    ip = models.CharField(max_length=20)
    testing = models.BooleanField(default=True)
    ROOM_TYPE = [
        ("bedroom", 'BEDROOM'),
        ("garage", 'GARAGE'),
        ("kitchen", 'KITCHEN'),
        ("living", 'LIVING ROOM'),
    ]
    roomtype = models.CharField(max_length=20,choices=ROOM_TYPE, default="bedroom")
    def __str__(self):
        return "%s" % (self.name)

class Sensor(models.Model):
    SENSOR_TYPE = [
        ("led", 'LED'),
        ("plug", 'PLUG'),
        ("camera", 'CAMERA'),
        ("servo", 'SERVO'),
        ("motion",'MOTION')
    ]
    name = models.CharField(max_length=20)
    sensortype = models.CharField(max_length=20,choices=SENSOR_TYPE, default="Undefined")
    room = models.ForeignKey(Room, on_delete=models.CASCADE)
    ios = models.BooleanField(default=True)
    atuador = models.ForeignKey('self', on_delete=models.CASCADE, null=True, blank=True)
    gpio = models.IntegerField(
        default=1,
        validators=[
            MaxValueValidator(40),
            MinValueValidator(1)
        ])

    def __str__(self):
        return "%s" % (self.name)

class SensorValue(models.Model):
    idsensor = models.ForeignKey(Sensor, on_delete=models.CASCADE)
    value = models.DecimalField(max_digits=3, decimal_places=1)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "Id sensor: %s Value: %f" % (self.idsensor, self.value)

class Photo(models.Model):
    photo = models.ImageField(upload_to='static/photos')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "Id sensor: %s" % (self.photo)







