from django.db import models

# Create your models here.
class Sensor(models.Model):
    ssid = models.IntegerField(blank=True, null=True)
    nome = models.CharField(max_length=20)

    def __str__(self):
        return "%s" % (self.ssid)

class ValorSensor(models.Model):
    ssidsensor = models.ForeignKey(Sensor, on_delete=models.CASCADE)
    valor = models.DecimalField(max_digits=3, decimal_places=1)

    def __str__(self):
        return "%s : %s" % (self.ssidsensor, self.valor)
