from django.contrib.auth.models import User, Group
from rest_framework import serializers
from smarthomeproj.server.models import Sensor, SensorValue, Home, Room

class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = User
        fields = ['id','url', 'username', 'email', 'groups', 'first_name', 'last_name']


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

class SensorValueSerializer(serializers.ModelSerializer):
    class Meta:
        model = SensorValue
        fields = ['id','idsensor', 'value']

class SensorSerializerMeta(serializers.ModelSerializer):
    class Meta:
        model = Sensor
        fields = ['id', 'name', 'sensortype','room', 'gpio']

class SensorSerializer(serializers.ModelSerializer):
    value = serializers.SerializerMethodField("get_last_value")
    roomname = serializers.SerializerMethodField("get_room_name")
    roomtype = serializers.SerializerMethodField("get_room_type")

    def get_last_value(self,obj):
            #queryset = SensorValue.objects.all().filter(idsensor=idsensor).order_by('-created_at')[:1]
        try:
            value = SensorValue.objects.all().filter(idsensor=obj.id).order_by('-created_at')[:1]
            serializer = SensorValueSerializer(value, many=True)
            return serializer.data[0]["value"]
        except Exception:
                return 0
    
    def get_room_name(self,obj):
            #queryset = SensorValue.objects.all().filter(idsensor=idsensor).order_by('-created_at')[:1]
        try:
            room = Room.objects.get(pk=obj.room.id)
            serializer = RoomSerializer(room)
            return serializer.data["name"]
        except Exception:
                return 0
    
    def get_room_type(self,obj):
            #queryset = SensorValue.objects.all().filter(idsensor=idsensor).order_by('-created_at')[:1]
        try:
            room = Room.objects.get(pk=obj.room.id)
            serializer = RoomSerializer(room)
            return serializer.data["roomtype"]
        except Exception:
                return 0
        
    class Meta:
        model = Sensor
        fields = ['id', 'name', 'sensortype','room', 'gpio', 'value', 'roomname', 'roomtype']
    
    

class HomeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Home
        fields = ['name','id']
    
class RoomSerializer(serializers.ModelSerializer):
    class Meta:
        model = Room
        fields = ['id','name','home','ip', 'roomtype']
