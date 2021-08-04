import 'dart:io';

import 'package:thingsboard_client/thingsboard_client.dart';

const thingsBoardApiEndpoint = 'http://localhost:8080';

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
      var currentUserDetails = await tbClient.getUserService().getUser();
      print('currentUserDetails: $currentUserDetails');
      await tbClient.logout(
          requestConfig:
              RequestConfig(ignoreLoading: true, ignoreErrors: true));
      exit(0);
    } else {
      await tbClient.login(LoginRequest('tenant@thingsboard.org', 'tenant'));
    }
  } catch (e, s) {
    print('Error: $e');
    print('Stack: $s');
  }
}
