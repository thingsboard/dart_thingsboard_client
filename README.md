ThingsBoard API client library for Dart developers. Provides model objects and services to communicate with ThingsBoard platform using RESTful APIs and WebSocket protocol.
Current client version is compatible with ThingsBoard starting from version 3.5.0.

## Usage

A simple usage example:

```dart
import 'package:thingsboard_client/thingsboard_client.dart';

main() async {
    try {
      var tbClient = ThingsboardClient('https://demo.thingsboard.io');
      await tbClient.login(LoginRequest('tenant@thingsboard.org', 'tenant'));

      print('isAuthenticated=${tbClient.isAuthenticated()}');

      print('authUser: ${tbClient.getAuthUser()}');

      var currentUserDetails = await tbClient.getUserService().getUser();
      print('currentUserDetails: $currentUserDetails');

      await tbClient.logout();

    } catch (e, s) {
        print('Error: $e');
        print('Stack: $s');
    }
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/thingsboard/dart_thingsboard_client/issues
