import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const localStorageFileName =  'tb_client_storage.json';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

late ThingsboardClient tbClient;

void main() async {
  try {
    tbClient = ThingsboardClient(thingsBoardApiEndpoint,
                                 storage: LocalFileStorage(localStorageFileName),
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
  print('ON LOAD STARTED!');
}

void onLoadFinished() {
  print('ON LOAD FINISHED!');
}

bool loginExecuted = false;

Future<void> onUserLoaded() async {
  try {
    print('onUserLoaded: isAuthenticated=${tbClient.isAuthenticated()}');
    if (tbClient.isAuthenticated()) {
      print('authUser: ${tbClient.getAuthUser()}');
      await deviceApiExample();
      await fetchDevicesExample();
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
  var device = Device('My test device', 'default');
  device.additionalInfo = {'description': 'My test device!'};
  var savedDevice = await tbClient.getDeviceService().saveDevice(device);
  print('savedDevice: $savedDevice');
  var foundDevice = await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!);
  print('foundDevice: $foundDevice');
  await tbClient.getDeviceService().deleteDevice(savedDevice.id!.id!);
  try {
    await tbClient.getDeviceService().getDeviceInfo(savedDevice.id!.id!, requestConfig: RequestConfig(ignoreErrors: true));
  } on ThingsboardError catch (e) {
    if (e.errorCode == ThingsBoardErrorCode.itemNotFound) {
      print('Success! Device not found!');
    } else {
      print('Failure!');
    }
  }
}

Future<void> fetchDevicesExample() async {
  var pageLink = PageLink(2);
  PageData<DeviceInfo> devices;
  do {
    devices = await tbClient.getDeviceService().getTenantDeviceInfos(pageLink);
    print('devices: $devices');
    pageLink = pageLink.nextPageLink();
  } while(devices.hasNext);
}
