import paho.mqtt.server as mqtt

def on_connect(client, userdata, flags, rc):
    print("Connected with result code"+str(rc))
    client.subscribe("#")

def on_message(client, userdata, msg):
    print(msg.topic+" "+str(msg.payload))


server = mqtt.Server()
server.on_connect = on_connect
server.on_message = on_message
server.listen(1883)