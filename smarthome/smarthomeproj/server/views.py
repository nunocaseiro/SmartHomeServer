from django.contrib.auth.models import User, Group
from smarthomeproj.server.models import Sensor, SensorValue, Home, Room
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

from smarthomeproj.server.serializers import UserSerializer, GroupSerializer, User1Serializer, SensorSerializer, SensorValueSerializer, RoomSerializer, HomeSerializer, SensorSerializerMeta


class UserViewSet(viewsets.ModelViewSet):
    """
    API endpoint that allows users to be viewed or edited.
    """
    queryset = User.objects.all().order_by('-date_joined')
    serializer_class = UserSerializer
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

class GetCountSensors(APIView):
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