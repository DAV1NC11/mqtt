using MQTTnet.client;

namespace sub;

public static class sub
{
    public static async Task Publish_Application_Message()
    {
    var mqttFactory = new MqttFactory();


    using (var mqttClient = mqttFactory.CreateMqttClient())
    {
        var mqttClientOptions = new MqttClientOptionsBuilder()
        .WithTcpServer("localhost")
        .Build();

            await mqttClient.ConnectAsync(mqttClientOptions, CancellationToken.None);

            var applicationMessage = new MqttApplicationMessageBuilder()
                .WithTopic("jada/test")
                .WithPayload("19.5")
                .Build();

            await mqttClient.PublishAsync(applicationMessage, CancellationToken.None);

            await mqttClient.DisconnectAsync();
            
            Console.WriteLine("MQTT application message is published.");
    }
    
    }
}