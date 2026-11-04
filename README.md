# thingsboard_client

ThingsBoard REST API client for Dart and Flutter.

Generated from the ThingsBoard OpenAPI spec, with a handwritten runtime facade for JWT authentication, automatic token refresh, WebSocket telemetry subscriptions and typed error handling.

> **Migrating from `thingsboard_pe_client`?** ThingsBoard is now a single product, and this package replaces `thingsboard_pe_client`. Rename the dependency in `pubspec.yaml` and the imports (`package:thingsboard_pe_client/` → `package:thingsboard_client/`). See [CHANGELOG.md](CHANGELOG.md) for the 5.0.0 changes.

## Features

- **Full REST API coverage**: 92 API classes and 1041 model types.
- **JWT authentication**: login, automatic refresh, concurrent request handling.
- **WebSocket telemetry**: real-time subscriptions with automatic reconnect.
- **Typed errors**: `ThingsboardError` with the `ThingsBoardErrorCode` enum and retry logic.
- **Tree-shakable**: each operation registers only the serializers it needs, so models of operations an application does not call are dropped from its build.
- **Flutter Web and mobile**: no bare `dart:io` imports.
- Requires ThingsBoard 4.4.0 or later, and Dart 3.10 / Flutter 3.38 or later.

## Installation

```yaml
dependencies:
  thingsboard_client: ^5.0.0
```

## Quick start

```dart
import 'package:thingsboard_client/thingsboard_client.dart';

void main() async {
  final tbClient = ThingsboardClient('https://your-tb-instance.com');

  await tbClient.login(LoginRequest(
    userName: 'tenant@thingsboard.org',
    password: 'tenant',
  ));
  print('Logged in: ${tbClient.isAuthenticated()}');

  final response = await tbClient
      .getDeviceControllerApi()
      .getTenantDevices(pageSize: 10, page: 0);
  print('Devices: ${response.data?.totalElements}');

  await tbClient.logout();
}
```

## Telemetry WebSocket

The WebSocket API (subscriptions, their commands and updates) is in a separate library, `package:thingsboard_client/telemetry.dart`. Several of its types share a name with a REST model of the main library (`EntityId`, `EntityType`, `EntityDataQuery`, ...), so import it with a prefix:

```dart
import 'package:thingsboard_client/telemetry.dart' as ws;

final subscriber = ws.TelemetrySubscriber.createEntityAttributesSubscription(
  telemetryService: tbClient.getTelemetryService(),
  entityId: ws.DeviceId(deviceId),
  attributeScope: ws.LatestTelemetry.LATEST_TELEMETRY.toShortString(),
);
subscriber.attributeDataStream.listen((data) => print(data));
subscriber.subscribe();
```

A client created with an API key (`ThingsboardClient(url, apiKey: key)`) authenticates both the REST requests and the WebSocket with it.

See [example/main.dart](example/main.dart) for a complete example.

## Documentation

- [ThingsBoard documentation](https://thingsboard.io/docs/)
- [REST API reference](https://thingsboard.io/docs/reference/rest-api/)
- Generated API docs: [doc/](doc/)

## Development

The client is generated from [spec/openapi.json](spec/openapi.json). Prerequisites: Java, Dart SDK, Perl, Python 3.

```bash
tool/generate-client.sh onprem             # Regenerate the package from spec/
tool/generate-client.sh --dry-run onprem   # Validate and generate only, no build_runner
tool/publish.sh onprem                     # pub.dev dry run
tool/publish.sh --publish onprem           # Publish to pub.dev
```

```
dart_thingsboard_client/
├── spec/openapi.json        # OpenAPI spec (input)
├── common/lib/src/          # Handwritten facade, copied into lib/src/ on generation
├── tool/                    # generate-client.sh, generate_api_serializers.py, publish.sh
├── lib/                     # Generated sources + copy of common/
├── doc/                     # Generated API docs
├── example/
└── test/
```

Edit handwritten code in `common/`, not in `lib/src/`: generation overwrites the copy. `lib/src/api/`, `lib/src/model/`, `lib/src/serializers.dart` and `lib/src/api_serializers.dart` are regenerated on every run. `README.md`, `CHANGELOG.md`, `LICENSE`, `example/` and `test/` are kept.

An edition is one package generated from one spec. `onprem` is this package at the repository root. A cloud client can be added as a separate package in `cloud/` with its own `cloud/spec/openapi.json`; see "Editions" in `tool/generate-client.sh`.

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/thingsboard/dart_thingsboard_client/issues).

## Contributors

The client is developed by ThingsBoard, Inc. `common/lib/src/model/telemetry/telemetry_models.dart` (copied to `lib/src/model/telemetry/`) also keeps contributions to the 4.x client by Meric Koc and Vincent Långström; its copyright line reads "ThingsBoard, Inc. and contributors".

## License

BSD-3-Clause, see [LICENSE](LICENSE).
