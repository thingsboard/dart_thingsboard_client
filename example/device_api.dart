import 'dart:math';

import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint,
        storage: InMemoryStorage(),
        onUserLoaded: onUserLoaded,
        onError: onError,
        onLoadStarted: onLoadStarted,
        onLoadFinished: onLoadFinished);
    await tbClient.init();
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

void onError(ThingsboardError error) {
  print('onError: error=$error');
}

void onLoadStarted() {
  // print('ON LOAD STARTED!');
}

void onLoadFinished() {
  // print('ON LOAD FINISHED!');
}

bool loginExecuted = false;

Future<void> onUserLoaded() async {
  try {
    print('onUserLoaded: isAuthenticated=${tbClient.isAuthenticated()}');
    if (tbClient.isAuthenticated()) {
      print('authUser: ${tbClient.getAuthUser()}');
      User? currentUser;
      try {
        currentUser = await tbClient.getUserService().getUser();
      } catch(e) {
        await tbClient.logout();
      }
      print('currentUser: $currentUser');
      await deviceApiExample();
      await tbClient.logout(requestConfig: RequestConfig(ignoreLoading: true, ignoreErrors: true));
    } else {
      if (!loginExecuted) {
        loginExecuted = true;
        await tbClient.login(
            LoginRequest(username, password));
      }
    }
  }
  catch (e, s) {
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


const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));
