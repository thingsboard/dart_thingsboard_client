import 'example_utils.dart';
import 'thingsboard_client.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const apiKey = 'tb_your_api_key';
void main() async {
  try {
    final tbClient = ThingsboardClient(thingsBoardApiEndpoint, apiKey: apiKey);

    var deviceName = getRandomString(30);

    var device = Device(deviceName, 'default');
    device.additionalInfo = {'description': 'My test device!'};
    var savedDevice = await tbClient.getDeviceService().saveDevice(device);
    print('savedDevice: $savedDevice');
    var foundDevice =
        await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
    print(foundDevice);
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}
