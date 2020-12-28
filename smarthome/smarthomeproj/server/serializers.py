from django.contrib.auth.models import User, Group
from rest_framework import serializers
from smarthomeproj.server.models import Sensor, SensorValue, Home, Room, Photo, Profile, Vehicle


class Base64ImageField(serializers.ImageField):
    """
    A Django REST framework field for handling image-uploads through raw post data.
    It uses base64 for encoding and decoding the contents of the file.

    Heavily based on
    https://github.com/tomchristie/django-rest-framework/pull/1268

    Updated for Django REST framework 3.
    """

    def to_internal_value(self, data):
        from django.core.files.base import ContentFile
        import base64
        import six
        import uuid

        # Check if this is a base64 string
        if isinstance(data, six.string_types):
            # Check if the base64 string is in the "data:" format
            if 'data:' in data and ';base64,' in data:
                # Break out the header from the base64 content
                header, data = data.split(';base64,')

            # Try to decode the file. Return validation error if it fails.
            try:
                decoded_file = base64.b64decode(data)
            except TypeError:
                self.fail('invalid_image')

            # Generate file name:
            file_name = str(uuid.uuid4())[:12] # 12 characters are more than enough.
            # Get the file name extension:
            file_extension = self.get_file_extension(file_name, decoded_file)

            complete_file_name = "%s.%s" % (file_name, file_extension, )

            data = ContentFile(decoded_file, name=complete_file_name)

        return super(Base64ImageField, self).to_internal_value(data)

    def get_file_extension(self, file_name, decoded_file):
        import imghdr

        extension = imghdr.what(file_name, decoded_file)
        extension = "jpg" if extension == "jpeg" else extension

        return extension


class GroupSerializer(serializers.ModelSerializer):    
    class Meta:
        model = Group
        fields = ('name',)

class UserSerializer(serializers.HyperlinkedModelSerializer):
    groups = GroupSerializer(many=True)
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

class PhotoSerializer(serializers.ModelSerializer):
    photo = Base64ImageField(
        max_length=None, use_url=True,
    )
    class Meta:
        model = Photo
        fields = ['photo']

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

class VehicleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Vehicle
        fields = ['id','matricula','marca','cor', 'ano']

class ProfileSerializer(serializers.HyperlinkedModelSerializer):
    user = UserSerializer(many=False)
    home = HomeSerializer(many=False)
    class Meta:
        model = Profile
        fields = ['id','user', 'home']



