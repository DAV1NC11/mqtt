# subscriber
import paho.mqtt.client as mqtt

client = mqtt.Client()
client.connect('localhost', 1883)

def on_connect(client, userdata, flags, rc):
    print("Connected to a broker!")
    client.subscribe("jada/test")

def on_message(client, userdata, message):
    print(message.payload.decode())
    #print("Received message '" + str(message.payload) + "' on topic '" + message.topic)
    if str(message.payload.decode()) == "1":
        print("Pumped!")
    else:
        print("OFF")
while True:
    client.on_connect = on_connect
    client.on_message = on_message
    client.loop_forever()