# thingsboard_client

[![pub package](https://img.shields.io/pub/v/thingsboard_client.svg)](https://pub.dev/packages/thingsboard_client)
[![CI](https://github.com/thingsboard/dart_thingsboard_client/actions/workflows/ci.yml/badge.svg)](https://github.com/thingsboard/dart_thingsboard_client/actions/workflows/ci.yml)
[![License: BSD-3-Clause](https://img.shields.io/badge/license-BSD--3--Clause-blue.svg)](LICENSE)

ThingsBoard REST API client for Dart and Flutter.

Generated from the ThingsBoard OpenAPI spec, with a handwritten runtime facade for JWT authentication, automatic token refresh, WebSocket telemetry subscriptions and typed error handling.

> **Upgrading to 5.0?** See [MIGRATION.md](MIGRATION.md): [from `thingsboard_client` 4.x](MIGRATION.md#migrating-from-thingsboard_client-4x-421) (services → generated API classes, with a table of every 4.x service method) and [from `thingsboard_pe_client` 4.4.x](MIGRATION.md#migrating-from-thingsboard_pe_client-44x), which this package replaces now that ThingsBoard is a single product.

## Features

- **Full REST API coverage**: 94 API classes and 1077 model types.
- **JWT authentication**: login, automatic refresh, concurrent request handling.
- **WebSocket telemetry**: real-time subscriptions with automatic reconnect.
- **Typed errors**: `ThingsboardError` with the `ThingsBoardErrorCode` enum and retry logic. `ThingsboardError.errorCode` is this facade enum, not the generated `ThingsboardErrorCode` (`number2`, ...), which only describes the REST model.
- **Tree-shakable**: each operation registers only the serializers it needs, so models of operations an application does not call are dropped from its build. Referencing `standardSerializers` (for example passing it to an API class constructor) keeps every model in the build. To serialize a single model, use `apiSerializers(register<Model>)` (for example `apiSerializers(registerAuditLog).toJson(AuditLog.serializer, log)`), which only includes that model and what it references.
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

  await tbClient.login(LoginRequest((b) => b
    ..username = 'tenant@thingsboard.org'
    ..password = 'tenant'));
  print('Logged in: ${tbClient.isAuthenticated()}');

  final response = await tbClient
      .getDeviceControllerApi()
      .getTenantDevices(pageSize: 10, page: 0);
  print('Devices: ${response.data?.totalElements}');

  await tbClient.logout();
}
```

## Telemetry WebSocket

The WebSocket API (subscriptions, their commands and updates) is part of the main library. Entity ids are the generated ones:

```dart
import 'package:thingsboard_client/thingsboard_client.dart';

final subscriber = TelemetrySubscriber.createEntityAttributesSubscription(
  telemetryService: tbClient.getTelemetryService(),
  entityId: DeviceId((b) => b..id = deviceUuid),
  attributeScope: LatestTelemetry.LATEST_TELEMETRY.toShortString(),
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

The REST API classes and models are generated from [spec/openapi.json](spec/openapi.json) by [tool/generate-client.sh](tool/generate-client.sh); the handwritten facade lives in [common/](common/). See [CONTRIBUTING.md](CONTRIBUTING.md) for how to regenerate the client and run the checks.

## Features and bugs

Please file feature requests and bugs at the [issue tracker](https://github.com/thingsboard/dart_thingsboard_client/issues). Report security vulnerabilities privately, see [SECURITY.md](SECURITY.md).

## Contributors

The client is developed by ThingsBoard, Inc. `common/lib/src/model/telemetry/telemetry_models.dart` (copied to `lib/src/model/telemetry/`) also keeps contributions to the 4.x client by Meric Koc and Vincent Långström; its copyright line reads "ThingsBoard, Inc. and contributors".

## License

BSD-3-Clause, see [LICENSE](LICENSE).
