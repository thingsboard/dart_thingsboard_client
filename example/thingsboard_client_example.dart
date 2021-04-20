import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';
const localStorageFileName =  'tb_client_storage.json';
const username = 'tenant@thingsboard.org';
const password = 'tenant';

void main() async {
  try {
    var storage = LocalFileStorage(localStorageFileName);
    var tbClient = ThingsboardClient(thingsBoardApiEndpoint, storage: storage, onUserLoaded: onUserLoaded, onError: onError,
        onLoadStarted: onLoadStarted, onLoadFinished: onLoadFinished);
    await tbClient.init();
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}

bool loginExecuted = false;

void onError(ThingsboardError error) {
  print('onError: error=$error');
}

void onLoadStarted() {
  print('ON LOAD STARTED!');
}

void onLoadFinished() {
  print('ON LOAD FINISHED!');
}

Future<void> onUserLoaded(ThingsboardClient tbClient, bool isAuthenticated) async {
  try {
    print('onUserLoaded: isAuthenticated=$isAuthenticated');
    if (isAuthenticated) {
      print('authUser: ${tbClient.getAuthUser()}');
      var pageLink = PageLink(2);
      var devices;
      do {
        devices = await tbClient.getDeviceService().getTenantDeviceInfos(pageLink);
        print('devices: $devices');
        // await Future.delayed(Duration(seconds: 20), () => true);
        pageLink = pageLink.nextPageLink();
      } while(devices.hasNext);
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
