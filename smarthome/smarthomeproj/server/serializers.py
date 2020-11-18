from django.contrib.auth.models import User, Group
from rest_framework import serializers
from smarthomeproj.server.models import Sensor, ValorSensor





class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['url', 'username', 'email', 'groups']


class GroupSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Group
        fields = ['url', 'name']



class User1Serializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('username', 'password')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        password = validated_data.pop('password')
        user = User(**validated_data)
        user.set_password(password)
        user.save()
        return user

class SensorSerializer(serializers.ModelSerializer):
    class Meta:
        model = Sensor
        fields = ['ssid', 'nome']

class ValorSensorSerializer(serializers.ModelSerializer):
    class Meta:
        model = ValorSensor
        fields = ['ssidsensor', 'valor']