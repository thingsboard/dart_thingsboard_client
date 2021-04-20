ThingsBoard API client library for Dart developers.

## Usage

A simple usage example:

```dart
import 'package:thingsboard_client/thingsboard_client.dart';

main() async {
  var tbClient = ThingsboardClient('https://demo.thingsboard.io');
  await tbClient.init();
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: http://example.com/issues/replaceme
