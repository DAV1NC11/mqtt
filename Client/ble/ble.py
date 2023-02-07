import asyncio
from bleak import BleakScanner
from bleak import BleakClient

async def run():
    devices = await BleakScanner.discover()
    for d in devices:
        print(d)

    client = BleakClient("10:02:12:65:12:36")
    await client.connect()
    services = await client.discover_services()
    for service in services:
        print("Service UUID:", service.uuid)

#async def connect():
    

loop = asyncio.get_event_loop()
loop.run_until_complete(run())