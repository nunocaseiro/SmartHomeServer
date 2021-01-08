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
    from .models import Room, Sensor, SensorValue, Vehicle, Profile, Notification

    try:
        m_decode=str(msg.payload.decode("utf-8","ignore"))
        m_in=json.loads(m_decode)        
        idSensor = int(msg.topic[1:])
    #logger.info(idSensor)
    except ValueError:
        logger.error(ValueError)

    sensor = Sensor.objects.get(id=idSensor)
    if (m_in["to"] == "server" and m_in["from"] == "espNuno" ):
        if (sensor.atuador != None):
            atuador = Sensor.objects.get(id=sensor.atuador.id)

        if(atuador.sensortype == "led"):
            if(atuador.atuador != None):
                atuador2 = Sensor.objects.get(id=atuador.atuador.id)
                #enviar estado em vez de value
            if m_in["value"] == "0.00":
                #if sensorValue.value == 1.00:
                    sensorV = SensorValue(idsensor = sensor, value = 0.0)
                    sensorV.save()
                    logger.info("zero")
                    client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","off")),qos=1)
                    client.publish("/"+str(atuador2.id), json.dumps(createMessage("espNuno","server","turn","off")),qos=1)


            if m_in["value"] == "1.00":
                #if sensorValue.value == 0.00:
                    logger.info("um")
                    sensorV = SensorValue(idsensor = sensor, value = 1.0)
                    sensorV.save()
                    #publicar mensagem
                    
                    client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","on")),qos=1)
                    client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","photo","on")),qos=1)
                    # if atuador2 tipo camera entao envia mensagem para tirar foto
        if (m_in["action"] == "photo" and m_in["value"] == "sent"):
            logger.info("KAESTOU")
            photo = Photo.objects.latest('created_at')
            logger.info(str(photo.photo))
            text = plate.extractLicensePlate(str(photo.photo))
            logger.info(text)
            textToCompare = re.sub('[\W_]+', '', text) 
            textToCompare = textToCompare.strip()
            logger.info(textToCompare)
            try:
                go = Vehicle.objects.get(licenseplate=textToCompare)
                allProfiles = Profile.objects.all()
                for profile in allProfiles:
                    newNotification = Notification.objects.create(profile = profile, notification = "New vehicle detected: OK",seen= False)
                    newNotification.save()
            except Vehicle.DoesNotExist:
                    for profile in allProfiles:
                        newNotification = Notification(profile = profile, notification = "New vehicle detected: NOT OK", seen=  False)
                        newNotification.save()
            client.publish("/android", "teste", qos=1)
            #allsensors = Sensor.objects.all().filter(ios=False)
            logger.info(atuador.id)
            client.publish("/"+str(atuador.id), json.dumps(createMessage("espNuno","server","turn","on")),1)         
      
        
    

def createMessage(to,fr0m,action,value):
    send_msg = {
        "to": to,
        "from": fr0m,
        "action":action,
        "value":value
    }
    return send_msg



    """ if (sensor.atuador != None):
        atuador = Sensor.objects.get(id=sensor.atuador.id)
#separar o que envio do que recebo
        if(atuador.sensortype == "led"):
            if(atuador.atuador != None):
                atuador2 = Sensor.objects.get(id=atuador.atuador.id)
                #enviar estado em vez de value
            if msg.payload.decode("utf-8")== "0.00":
                sensorV = SensorValue(idsensor = sensor, value = 0.0)
                sensorV.save()
                logger.info("zero")
                #publicar mensagem
                client.publish("/"+str(atuador.id), "off")
                client.publish("/"+str(atuador2.id), "off")

            if msg.payload.decode("utf-8")== "1.00":
                logger.info("um")
                sensorV = SensorValue(idsensor = sensor, value = 1.0)
                sensorV.save()
                #publicar mensagem
                client.publish("/"+str(atuador.id), "on")
                client.publish("/"+str(atuador2.id), "on") """



client = mqtt.Client("server")
client.username_pw_set("smarthome","smarthome")
client.on_connect = on_connect
client.on_message = on_message
client.on_disconnect = on_disconnect
client.connect_async("161.35.8.148", 1883, 60)