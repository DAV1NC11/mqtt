import asyncio
import bleak

async def run(address, loop):
    async with bleak.BleakClient(address, loop=loop) as client:
        # Connect to the BLE device
        await client.connect()
        print("Connected!")

        # Discover the services and characteristics of the device
        await client.get_services()

        # Get the UUID of the characteristic that you want to receive packets from
        characteristic_uuid = "0000FFE1-0000-1000-8000-00805F9B34FB"
        char = await client.get_characteristic(characteristic_uuid)

        # Subscribe to notifications for the characteristic
        def callback(sender, data):
            print("Received data:", data)
        
        await client.start_notify(char.uuid, callback)
        print("Subscribed to notifications for characteristic", characteristic_uuid)

        # Wait for the data to be received
        await asyncio.sleep(6.0, loop=loop)

address = "10:02:12:65:12:36"
loop = asyncio.get_event_loop()
loop.run_until_complete(run(address, loop))
