import asyncio
from bleak import BleakClient

async def run(mac_address, service_uuid, characteristic_uuid):
    async with BleakClient(mac_address) as client:
        await client.connect()
        services = await client.get_services()
        data_char = None
        for service in services:
            if service.uuid == service_uuid:
                chars = await client.get_characteristics(service)
                for char in chars:
                    if char.uuid == characteristic_uuid:
                        data_char = char
                        break
                break
        if data_char:
            data = await client.read_gatt_char(data_char.handle)
            print("Data:", data)
        else:
            print("Data characteristic not found.")

if __name__ == "__main__":
    mac_address = "10:02:12:65:12:36" 
    service_uuid = "0000ffe0-0000-1000-8000-00805f9b34fb" 
    characteristic_uuid = "00001801-0000-1000-8000-00805f9b34fb" 
    loop = asyncio.get_event_loop()
    loop.run_until_complete(run(mac_address, service_uuid, characteristic_uuid))
