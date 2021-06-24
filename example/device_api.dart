import 'package:thingsboard_client/thingsboard_client.dart';
import 'example_utils.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint);

    await tbClient.login(LoginRequest(username, password));

    await deviceApiExample();

    await tbClient.logout(requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));

  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

Future<void> deviceApiExample() async {
  print('**********************************************************************');
  print('*                        DEVICE API EXAMPLE                          *');
  print('**********************************************************************');

  var deviceName = getRandomString(30);

  var device = Device(deviceName, 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');
  var foundDevice = await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
  print('foundDevice: $foundDevice');
  var res = await tbClient.getAttributeService().saveEntityAttributesV2(foundDevice!.id!, AttributeScope.SHARED_SCOPE.toShortString(), {
    'targetTemperature': 22.4,
    'targetHumidity': 57.8
  });
  print('Save attributes result: $res');
  var attributes = await tbClient.getAttributeService().getAttributesByScope(foundDevice.id!, AttributeScope.SHARED_SCOPE.toShortString(), ['targetTemperature', 'targetHumidity']);
  print('Found device attributes: $attributes');

  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  foundDevice = await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
  print('foundDevice: $foundDevice');
  print('**********************************************************************');
}
