from django.contrib.auth.models import User, Group
from smarthomeproj.server.models import Sensor, SensorValue, Home, Room, Photo, Profile, Vehicle
from rest_framework import viewsets
from rest_framework import permissions
from rest_framework import generics
from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.generics import RetrieveAPIView
from rest_framework.views import APIView
from django.http import Http404
from django.http import HttpResponse
import json
from itertools import chain
from . import mqtt as mqtt
from . import licensePlateRecognition as plate
from smarthomeproj.server.serializers import UserSerializer, GroupSerializer, User1Serializer, SensorSerializer, SensorValueSerializer, RoomSerializer, HomeSerializer, SensorSerializerMeta, PhotoSerializer, ProfileSerializer, VehicleSerializer
import logging

logger = logging.getLogger("django")

class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]

class ProfileViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Profile.objects.all()
    serializer_class = ProfileSerializer
    permission_classes = [permissions.IsAuthenticated]    


class GroupViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows groups to be viewed or edited.
    """
    queryset = Group.objects.all()
    serializer_class = GroupSerializer
    permission_classes = [permissions.IsAuthenticated]

class UserCreate(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = User1Serializer
    
class SensorViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Sensor.objects.all()
    #mqtt.client.publish("mensagens/teste", payload="enviei mensagens", qos=0, retain=False)
    serializer_class = SensorSerializer
    permission_classes = [permissions.IsAuthenticated]

class SensorValueViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = SensorValue.objects.all()
    serializer_class = SensorValueSerializer
    permission_classes = [permissions.IsAuthenticated]

class HomeViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Home.objects.all()
    serializer_class = HomeSerializer
    permission_classes = [permissions.IsAuthenticated]

class PhotoViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Photo.objects.all()
    serializer_class = PhotoSerializer
    permission_classes = [permissions.IsAuthenticated]
  


class RoomViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Room.objects.all()
    serializer_class = RoomSerializer
    permission_classes = [permissions.IsAuthenticated]
    #def list(self, request, *args, **kwargs):
     #   queryset = self.filter_queryset(self.get_queryset())
      #  return Response(queryset.values())



class LastValue(generics.ListAPIView):
    serializer_class = SensorValueSerializer
    permission_classes = [permissions.IsAuthenticated]
    def get_queryset(self):
        """
        This view should return a list of all the purchases for
        the user as determined by the username portion of the URL.
        """
        
        idsensor = self.request.query_params.get('idsensor', None)
        queryset = SensorValue.objects.all().filter(idsensor=idsensor).order_by('-created_at')[:1]
       
        return queryset

class RoomsForIOS(generics.ListAPIView):
    serializer_class = RoomSerializer
    permission_classes = [permissions.IsAuthenticated]
    def get_queryset(self):
      
        queryset = Room.objects.all().filter(testing=True)
        return queryset


class SensorsOfRoom(generics.ListAPIView):
    serializer_class = SensorSerializer
    permission_classes = [permissions.IsAuthenticated]
    def get_queryset(self):
        """
        This view should return a list of all the purchases for
        the user as determined by the username portion of the URL.
        """
        idroom = self.request.query_params.get('room', None)
        queryset = Sensor.objects.all().filter(room=idroom)
       
        return queryset

class AllSensorsOfType(generics.ListAPIView):
   serializer_class = SensorSerializer
   permission_classes = [permissions.IsAuthenticated]
   
   def get_queryset(self):
        sensortype = self.request.query_params.get('type', None)
        queryset = Sensor.objects.filter(ios=True).filter(sensortype=sensortype)
        return queryset

class GetUserByUsername(generics.ListAPIView):
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]
    def get_queryset(self):
        username = self.request.query_params.get('username', None)
        queryset = User.objects.filter(username=username)
        return queryset

class GetUserProfileByUsername(generics.ListAPIView):
    serializer_class = ProfileSerializer
    permission_classes = [permissions.IsAuthenticated]
    def get_queryset(self):
        username = self.request.query_params.get('username', None)
        user = User.objects.filter(username=username)
        queryset = Profile.objects.filter(user=user[0])
        return queryset

class GetCountSensors(APIView):
    from . import mqtt
    mqtt.client.loop_start()
    serializer_class = SensorSerializer
    permission_classes = [permissions.IsAuthenticated]
    def get(self, request, format=None):
        """
        This view should return a list of all the purchases for
        the user as determined by the username portion of the URL. 
        """
        idroom = self.request.query_params.get('room', None)
        queryset = Sensor.objects.filter(room=idroom).count()
       
        return Response(queryset)

@api_view(['POST'])
def postPhoto(request):
    """
    List all code snippets, or create a new snippet.
    """
    if request.method == 'POST':
        serializer = PhotoSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

def get_permissions(self):
    """
    Instantiates and returns the list of permissions that this view requires.
    """
    if self.action == 'list':
        permission_classes = [permissions.IsAuthenticated]
    else:
        permission_classes = [permissions.IsAdmin]
    return [permission() for permission in permission_classes]

class VehicleViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = Vehicle.objects.all()
    serializer_class = VehicleSerializer
    permission_classes = [permissions.IsAuthenticated]


class GetStatistics(APIView):
    permission_classes = [permissions.IsAuthenticated]
    def get(self, request, format=None):
        if request.method == 'GET':
            idHome = self.request.query_params.get('home', None)
            sensorsCount = 0
            rooms = Room.objects.filter(home=idHome, testing= False)
            for room in rooms:
                if room.testing == False:
                    sensorsofroom = Sensor.objects.filter(room=room.id, ios=False)
                    sensorsCount+= sensorsofroom.count()
            
            roomsCount = rooms.count()
            return Response({"sensorsCount": sensorsCount, "roomsCount": roomsCount})
