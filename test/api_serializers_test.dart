// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';
import 'package:thingsboard_client/src/api/device_controller_api.dart';
import 'package:thingsboard_client/src/api/entity_query_controller_api.dart';
import 'package:thingsboard_client/src/api/two_factor_auth_config_controller_api.dart';
import 'package:thingsboard_client/src/api/user_permissions_controller_api.dart';

/// Answers every request with [responses] for its path and records the body.
class _FakeAdapter implements HttpClientAdapter {
  _FakeAdapter(this.responses);

  final Map<String, Object> responses;
  final List<Object?> requestBodies = [];

  @override
  Future<ResponseBody> fetch(RequestOptions options,
      Stream<Uint8List>? requestStream, Future<void>? cancelFuture) async {
    if (requestStream != null) {
      final bytes = await requestStream.expand((chunk) => chunk).toList();
      requestBodies.add(jsonDecode(utf8.decode(bytes)));
    }
    final body = responses[options.path];
    if (body == null) throw StateError('No response for ${options.path}');
    return ResponseBody.fromString(jsonEncode(body), 200, headers: {
      Headers.contentTypeHeader: [Headers.jsonContentType],
    });
  }

  @override
  void close({bool force = false}) {}
}

Dio _dio(_FakeAdapter adapter) =>
    Dio(BaseOptions(baseUrl: 'http://tb'))..httpClientAdapter = adapter;

void main() {
  test('API classes do not reference standardSerializers', () {
    // Referencing it would keep every model in an AOT build.
    for (final file in Directory('lib/src/api').listSync().whereType<File>()) {
      expect(file.readAsStringSync(), isNot(contains('standardSerializers')),
          reason: file.path);
    }
    expect(File('lib/src/thingsboard_client.dart').readAsStringSync(),
        isNot(contains('standardSerializers')));
  });

  test('deserializes a discriminated subtype inside a map', () async {
    final adapter = _FakeAdapter({
      '/api/2fa/account/settings': {
        'configs': {
          'TOTP': {'providerType': 'TOTP', 'authUrl': 'otpauth://x', 'useByDefault': true},
          'EMAIL': {'providerType': 'EMAIL', 'email': 'a@b.c', 'useByDefault': false},
        },
      },
    });
    final settings = (await TwoFactorAuthConfigControllerApi(_dio(adapter))
            .getAccountTwoFaSettings())
        .data!;
    expect(settings.configs!['TOTP'], isA<TotpTwoFaAccountConfig>());
    expect((settings.configs!['TOTP'] as TotpTwoFaAccountConfig).authUrl, 'otpauth://x');
    expect(settings.configs!['EMAIL'], isA<EmailTwoFaAccountConfig>());
  });

  test('serializes a discriminated subtype as the request body', () async {
    final adapter = _FakeAdapter({
      '/api/2fa/account/config': {'configs': <String, Object>{}},
    });
    await TwoFactorAuthConfigControllerApi(_dio(adapter)).verifyAndSaveTwoFaAccountConfig(
      twoFaAccountConfig: TotpTwoFaAccountConfig((b) => b
        ..providerType = 'TOTP'
        ..authUrl = 'otpauth://x'
        ..useByDefault = true),
    );
    expect(adapter.requestBodies.single,
        {'providerType': 'TOTP', 'authUrl': 'otpauth://x', 'useByDefault': true});
  });

  test('round-trips a polymorphic query and a map of lists', () async {
    final adapter = _FakeAdapter({
      '/api/entitiesQuery/find': {
        'data': [
          {
            'entityId': {'entityType': 'DEVICE', 'id': 'd1'},
            'timeseries': {
              'temp': [
                {'ts': 1, 'value': '20'}
              ],
            },
          },
        ],
        'totalPages': 1,
        'totalElements': 1,
        'hasNext': false,
      },
    });
    final page = (await EntityQueryControllerApi(_dio(adapter)).findEntityDataByQuery(
      entityDataQuery: EntityDataQuery((b) => b
        ..entityFilter = SingleEntityFilter((f) => f
          ..type = 'singleEntity'
          ..singleEntity.replace(AliasEntityId((id) => id
            ..entityType = 'DEVICE'
            ..id = 'd1')))
        ..pageLink.replace(EntityDataPageLink((p) => p
          ..page = 0
          ..pageSize = 10))),
    ))
        .data!;
    expect((adapter.requestBodies.single as Map)['entityFilter'],
        {'type': 'singleEntity', 'singleEntity': {'entityType': 'DEVICE', 'id': 'd1'}});
    expect(page.data!.single.timeseries!['temp']!.single.value, '20');
  });

  test('deserializes a map of sets of enums', () async {
    final adapter = _FakeAdapter({
      '/api/permissions/allowedPermissions': {
        'operationsByResource': {
          'DEVICE': ['READ', 'WRITE'],
        },
      },
    });
    final info = (await UserPermissionsControllerApi(_dio(adapter)).getAllowedPermissions()).data!;
    expect(info.operationsByResource!['DEVICE'], BuiltSet<Operation>([Operation.READ, Operation.WRITE]));
  });

  test('round-trips a model with nested discriminated configurations', () async {
    final device = {
      'name': 'd',
      'deviceProfileId': {'entityType': 'DEVICE_PROFILE', 'id': 'p1'},
      'deviceData': {
        'configuration': {'type': 'DEFAULT'},
        'transportConfiguration': {'type': 'DEFAULT'},
      },
    };
    final adapter = _FakeAdapter({'/api/device': device});
    final saved = (await DeviceControllerApi(_dio(adapter)).saveDevice(
      device: Device((b) => b
        ..name = 'd'
        ..deviceProfileId.replace(DeviceProfileId((p) => p
          ..entityType = EntityType.DEVICE_PROFILE
          ..id = 'p1'))
        ..deviceData.replace(DeviceData((d) => d
          ..configuration = DefaultDeviceConfiguration((c) => c..type = DeviceProfileType.DEFAULT)
          ..transportConfiguration =
              DefaultDeviceTransportConfiguration((c) => c..type = 'DEFAULT')))),
    ))
        .data!;
    expect(adapter.requestBodies.single, device);
    expect(saved.deviceData!.configuration, isA<DefaultDeviceConfiguration>());
    expect(saved.deviceData!.transportConfiguration, isA<DefaultDeviceTransportConfiguration>());
  });

  test('explicit serializers passed to an API class are still used', () async {
    final adapter = _FakeAdapter({
      '/api/permissions/allowedPermissions': {'operationsByResource': <String, Object>{}},
    });
    final info = (await UserPermissionsControllerApi(_dio(adapter), standardSerializers)
            .getAllowedPermissions())
        .data!;
    expect(info.operationsByResource, isEmpty);
  });
}
