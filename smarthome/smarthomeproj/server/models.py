from django.db import models
from django.contrib.auth.models import AbstractUser, User
from django.core.validators import MaxValueValidator, MinValueValidator
from django.conf import settings
from django.db.models.signals import post_save
from django.dispatch import receiver

# Create your models here.
class Home(models.Model):
    name = models.CharField(max_length=20)
    latitude = models.CharField(max_length=20, null=True, blank=True)
    longitude = models.CharField(max_length=20, null=True, blank=True)

    def __str__(self):
        return "%s" % (self.name) 

#@receiver(post_save, sender=User)
#def create_user_profile(sender, instance, created, **kwargs):
#    if created:
#        Profile.objects.create(user=instance)

#@receiver(post_save, sender=User)
#def save_user_profile(sender, instance, **kwargs):
#    instance.profile.save()

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
        ("motion",'MOTION'),
        ("temperature","TEMPERATURE"),
        ("luminosity", "LUMINOSITY")
    ]
    name = models.CharField(max_length=20)
    sensortype = models.CharField(max_length=20,choices=SENSOR_TYPE, default="Undefined")
    room = models.ForeignKey(Room, on_delete=models.CASCADE)
    ios = models.BooleanField(default=True)
    actuator = models.ForeignKey('self', on_delete=models.SET_NULL, null=True, blank=True)
    gpio = models.IntegerField(
        default=1,
        validators=[
            MaxValueValidator(40),
            MinValueValidator(1)
        ])
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "%s" % (self.name)

class SensorValue(models.Model):
    idsensor  = models.ForeignKey(Sensor, on_delete=models.CASCADE)
    value = models.DecimalField(max_digits=3, decimal_places=1)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "Id sensor: %s ||| Value: ||| %f Created: %s" % (self.idsensor, self.value, self.created_at)

class Vehicle(models.Model):
    brand = models.CharField(max_length=20)
    licenseplate = models.CharField(max_length=6)
    model = models.CharField(max_length=20)
    home = models.ForeignKey(Home, on_delete=models.CASCADE, default= 1)
    year = models.IntegerField(validators=[
            MaxValueValidator(2050),
            MinValueValidator(1900)
        ])
    def __str__(self):
        return "%s %s" % (self.licenseplate, self.brand)

class Photo(models.Model):
    photo = models.ImageField(upload_to='static/photos')
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "%s" % (self.photo)

class Favourite(models.Model):
    sensor = models.ForeignKey(Sensor, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    class Meta:
        unique_together = ('sensor', 'user',)
    def __str__(self):
        return "%s %s" % (self.sensor.name, self.user.username)
        
class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    home = models.ForeignKey(Home, on_delete=models.CASCADE)

class Notification(models.Model):
    profile = models.ForeignKey(Profile,on_delete=models.CASCADE, null=True)
    notification = models.CharField(max_length=50)
    licensePlate = models.CharField(max_length = 6, null = True)
    description = models.CharField(max_length = 20, null = True)
    photo = models.ForeignKey(Photo, on_delete=models.CASCADE, null=True)
    seen = models.BooleanField(default=False)
    created = models.DateTimeField(auto_now_add=True)




