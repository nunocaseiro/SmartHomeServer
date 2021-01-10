import paho.mqtt.client as mqtt
import logging
import json
from json.decoder import JSONDecodeError
from .models import Room, Sensor, Photo
import re
from . import licensePlateRecognition as plate



logger = logging.getLogger("django")
allsensors = Sensor.objects.all().filter(ios=False)
# The callback for when the client receives a CONNACK response from the server.
def on_connect(client, userdata, flags, rc):
   
    #logger.error("Connected with result code "+str(rc))
    for sensor in allsensors:
        client.subscribe("/"+str(sensor.id))
        #logger.info("/"+sensor.name)

def on_disconnect(client, userdata, rc):
    if rc != 0:
        pass
        #logger.info("Unexpected disconnection.")
    else:
        pass
        #logger.info("Disconnected")

# The callback for when a PUBLISH message is received from the server.
def on_message(client, userdata, msg):
    from .models import Room, Sensor, SensorValue, Vehicle, Profile, Notification, Photo

    try:
        m_decode=str(msg.payload.decode("utf-8","ignore"))
        m_in=json.loads(m_decode)        
        idSensor = int(msg.topic[1:])
    #logger.info(idSensor)
    except ValueError:
        logger.error(ValueError)

    sensor = Sensor.objects.get(id=idSensor)
    if (sensor.atuador != None):
        atuador = Sensor.objects.get(id=sensor.atuador.id)

    if (m_in["to"] == "server" and m_in["from"] == "espNuno" ):
        if (m_in["action"] == "sval"):
            sensorV = SensorValue(idsensor = sensor, value = m_in["value"])
            sensorV.save()
            #logger.info("SENSOR ATUADOR:"  + str(sensor.atuador))
            
            if (sensor.atuador != None):
                if (sensor.sensortype == "motion"):
                    #logger.info("ATUADOR:"  + str(atuador))
                    
                    if(atuador.sensortype == "led"):
                        #logger.info("ATUADOR:"  + str(atuador.sensortype))
                        #logger.info("ATUADOR:"  + str(sensorV.value))

                        if sensorV.value == "0.00":
                            #logger.info("TURN OFF")
                            client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","off")),qos=1)
                        if sensorV.value == "1.00":
                            #logger.info("TURN OFF")
                            client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","on")),qos=1)

                if (sensor.sensortype == "led"): 
                    logger.info(str(sensor.name) + "||" + str(sensor.sensortype) + "||" +str(atuador.id))       
                    if(atuador.sensortype == "camera"):
                        if sensorV.value == "1.00":
                            client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","photo","take")),qos=1)
                        if sensorV.value == "0.00":
                            client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","photo","off")),qos=1)
                            
                if (sensor.sensortype == "camera"):
                    if(atuador.sensortype == "servo"):
                        if sensorV.value == "0.00":
                            #logger.info("TURN OFF")
                            client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","off")),qos=1)
                        if sensorV.value == "1.00":
                            #logger.info("TURN OFF")
                            client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","on")),qos=1)

        if (m_in["action"] == "photo" and m_in["value"] == "sent"):

            if (sensor != None):
                logger.info("KAESTOU")
                photo = Photo.objects.latest('created_at')
                logger.info(str(photo.photo))
                text = plate.extractLicensePlate(str(photo.photo))
                logger.info(text)
                textFinal = re.sub('[\W_]+', '', text) 
                textFinal = textFinal.strip()
                logger.info(textFinal)
                try:
                    go = Vehicle.objects.get(licenseplate=textFinal)
                    allProfiles = Profile.objects.all()
                    lastPhoto = Photo.objects.latest('created_at') 
                    for profile in allProfiles:
                        newNotification = Notification.objects.create(profile = profile, notification = "New vehicle detected",seen= False, licensePlate = textFinal, photo=lastPhoto, description = "allowed")
                        newNotification.save()
                        client.publish("/"+str(sensor.id), json.dumps(createMessage("espNuno","server","photo","on")),qos=1)
                except Vehicle.DoesNotExist:
                    for profile in allProfiles:
                        newNotification = Notification.objects.create(profile = profile, notification = "New vehicle detected",seen= False, licensePlate = textFinal, photo=lastPhoto, description = "not allowed")                        
                        newNotification.save()
                client.publish("/android", "newPhoto", qos=1)
            
                   

    #         if(atuador.atuador != None):
    #             atuador2 = Sensor.objects.get(id=atuador.atuador.id)
    #             #enviar estado em vez de value
                        #if m_in["value"] == "0.00":
                        #    client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","off")),qos=1)
    #             if sensorValue.value == 1.00:
                    
    #                 logger.info("zero")
    #                 client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","off")),qos=1)
    #                 client.publish("/"+str(atuador2.id), json.dumps(createMessage("espNuno","server","turn","off")),qos=1)
    #                 client.publish("/android", "updateSensors", qos = 1)


    #         if m_in["value"] == "1.00":
    #             #if sensorValue.value == 0.00:
    #                 logger.info("um")
    #                 sensorV = SensorValue(idsensor = sensor, value = 1.0)
    #                 sensorV.save()
    #                 #publicar mensagem
                    
    #                 client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","on")),qos=1)
    #                 client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","photo","on")),qos=1)
    #                 client.publish("/android", "updateSensors", qos= 1)
    #                 # if atuador2 tipo camera entao envia mensagem para tirar foto """

def createMessage(to,fr0m,action,value):
    send_msg = {
        "to": to,
        "from": fr0m,
        "action":action,
        "value":value
    }
    return send_msg


client = mqtt.Client("server")
client.username_pw_set("smarthome","smarthome")
client.on_connect = on_connect
client.on_message = on_message
client.on_disconnect = on_disconnect
client.connect_async("161.35.8.148", 1883, 60)