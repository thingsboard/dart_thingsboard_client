// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

/// Answers every request with [responses] for its path and records the body.
class _FakeAdapter implements HttpClientAdapter {
  _FakeAdapter(this.responses);

  final Map<String, Object> responses;
  final List<Object?> requestBodies = [];

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    if (requestStream != null) {
      final bytes = await requestStream.expand((chunk) => chunk).toList();
      requestBodies.add(jsonDecode(utf8.decode(bytes)));
    }
    final body = responses[options.path];
    if (body == null) throw StateError('No response for ${options.path}');
    return ResponseBody.fromString(
      jsonEncode(body),
      200,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

Dio _dio(_FakeAdapter adapter) =>
    Dio(BaseOptions(baseUrl: 'http://tb'))..httpClientAdapter = adapter;

/// Runs [body] in a new isolate. The apiSerializers registry is a global, so
/// there it holds only what [body] registers, not what earlier tests did.
/// `expect` only works in the test isolate: [body] returns what to check.
Future<T> _withFreshRegistry<T>(FutureOr<T> Function() body) =>
    Isolate.run(body);

class _CountingPlugin implements SerializerPlugin {
  int deserialized = 0;

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) => object;

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) => object;

  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    deserialized++;
    return object;
  }

  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) => object;
}

void main() {
  test('API classes do not reference standardSerializers', () {
    // Referencing it would keep every model in an AOT build.
    for (final file in Directory('lib/src/api').listSync().whereType<File>()) {
      expect(
        file.readAsStringSync(),
        isNot(contains('standardSerializers')),
        reason: file.path,
      );
    }
    expect(
      File('lib/src/thingsboard_client.dart').readAsStringSync(),
      isNot(contains('standardSerializers')),
    );
  });

  test('deserializes a discriminated subtype inside a map', () async {
    final adapter = _FakeAdapter({
      '/api/2fa/account/settings': {
        'configs': {
          'TOTP': {
            'providerType': 'TOTP',
            'authUrl': 'otpauth://x',
            'useByDefault': true,
          },
          'EMAIL': {
            'providerType': 'EMAIL',
            'email': 'a@b.c',
            'useByDefault': false,
          },
        },
      },
    });
    final settings = (await TwoFactorAuthConfigControllerApi(
      _dio(adapter),
    ).getAccountTwoFaSettings()).data!;
    expect(settings.configs!['TOTP'], isA<TotpTwoFaAccountConfig>());
    expect(
      (settings.configs!['TOTP'] as TotpTwoFaAccountConfig).authUrl,
      'otpauth://x',
    );
    expect(settings.configs!['EMAIL'], isA<EmailTwoFaAccountConfig>());
  });

  test('serializes a discriminated subtype as the request body', () async {
    final body = await _withFreshRegistry(() async {
      final adapter = _FakeAdapter({
        '/api/2fa/account/config': {'configs': <String, Object>{}},
      });
      await TwoFactorAuthConfigControllerApi(
        _dio(adapter),
      ).verifyAndSaveTwoFaAccountConfig(
        twoFaAccountConfig: TotpTwoFaAccountConfig(
          (b) => b
            ..providerType = 'TOTP'
            ..authUrl = 'otpauth://x'
            ..useByDefault = true,
        ),
      );
      return adapter.requestBodies.single;
    });
    expect(body, {
      'providerType': 'TOTP',
      'authUrl': 'otpauth://x',
      'useByDefault': true,
    });
  });

  test('round-trips a polymorphic query and a map of lists', () async {
    final adapter = _FakeAdapter({
      '/api/entitiesQuery/find': {
        'data': [
          {
            'entityId': {'entityType': 'DEVICE', 'id': 'd1'},
            'timeseries': {
              'temp': [
                {'ts': 1, 'value': '20'},
              ],
            },
          },
        ],
        'totalPages': 1,
        'totalElements': 1,
        'hasNext': false,
      },
    });
    final page =
        (await EntityQueryControllerApi(_dio(adapter)).findEntityDataByQuery(
          entityDataQuery: EntityDataQuery(
            (b) => b
              ..entityFilter = SingleEntityFilter(
                (f) => f
                  ..type = 'singleEntity'
                  ..singleEntity.replace(
                    AliasEntityId(
                      (id) => id
                        ..entityType = 'DEVICE'
                        ..id = 'd1',
                    ),
                  ),
              )
              ..pageLink.replace(
                EntityDataPageLink(
                  (p) => p
                    ..page = 0
                    ..pageSize = 10,
                ),
              ),
          ),
        )).data!;
    expect((adapter.requestBodies.single as Map)['entityFilter'], {
      'type': 'singleEntity',
      'singleEntity': {'entityType': 'DEVICE', 'id': 'd1'},
    });
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
    final info = (await UserPermissionsControllerApi(
      _dio(adapter),
    ).getAllowedPermissions()).data!;
    expect(
      info.operationsByResource!['DEVICE'],
      BuiltSet<Operation>([Operation.READ, Operation.WRITE]),
    );
  });

  test(
    'round-trips a model with nested discriminated configurations',
    () async {
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
        device: Device(
          (b) => b
            ..name = 'd'
            ..deviceProfileId.replace(
              DeviceProfileId(
                (p) => p
                  ..entityType = EntityType.DEVICE_PROFILE
                  ..id = 'p1',
              ),
            )
            ..deviceData.replace(
              DeviceData(
                (d) => d
                  ..configuration = DefaultDeviceConfiguration(
                    (c) => c..type = DeviceProfileType.DEFAULT,
                  )
                  ..transportConfiguration =
                      DefaultDeviceTransportConfiguration(
                        (c) => c..type = 'DEFAULT',
                      ),
              ),
            ),
        ),
      )).data!;
      expect(adapter.requestBodies.single, device);
      expect(
        saved.deviceData!.configuration,
        isA<DefaultDeviceConfiguration>(),
      );
      expect(
        saved.deviceData!.transportConfiguration,
        isA<DefaultDeviceTransportConfiguration>(),
      );
    },
  );

  test('explicit serializers passed to an API class are still used', () async {
    final adapter = _FakeAdapter({
      '/api/permissions/allowedPermissions': {
        'operationsByResource': <String, Object>{},
      },
    });
    final plugin = _CountingPlugin();
    final info = (await UserPermissionsControllerApi(
      _dio(adapter),
      (standardSerializers.toBuilder()..addPlugin(plugin)).build(),
    ).getAllowedPermissions()).data!;
    expect(info.operationsByResource, isEmpty);
    expect(plugin.deserialized, greaterThan(0));
  });

  group('operations with a string response', () {
    test('return a JSON object body re-encoded as a string', () async {
      final reply = {
        'temperature': 25,
        'status': {'ok': true},
      };
      final adapter = _FakeAdapter({'/api/rule-engine/DEVICE/d1': reply});

      final response = await RuleEngineControllerApi(_dio(adapter))
          .handleRuleEngineRequestForEntity(
            entityType: 'DEVICE',
            entityId: 'd1',
            body: '{"method":"getTemperature"}',
          );

      expect(jsonDecode(response.data!), reply);
    });

    test('return a JSON string body unquoted', () async {
      final adapter = _FakeAdapter({'/api/customer/c1/title': 'Customer A'});

      final response = await CustomerControllerApi(
        _dio(adapter),
      ).getCustomerTitleById(customerId: 'c1');

      expect(response.data, 'Customer A');
    });
  });

  test('claimDevice returns a typed ClaimResult', () async {
    final adapter = _FakeAdapter({
      '/api/customer/device/d1/claim': {
        'device': {'name': 'd1'},
        'response': 'SUCCESS',
      },
    });

    final result = (await DeviceControllerApi(
      _dio(adapter),
    ).claimDevice(deviceName: 'd1', claimRequest: ClaimRequest())).data!;

    expect(result.response, ClaimResponse.SUCCESS);
    expect(result.device!.name, 'd1');
  });

  group('facade roots', () {
    Object? fixture(String name) =>
        jsonDecode(File('test/fixtures/ws/$name').readAsStringSync());

    test(
      'registerPageDataEntityData deserializes entity data with a DeviceId',
      () async {
        final isDeviceId = await _withFreshRegistry(() {
          // The fixture's `data` is null; its `update` is a list of entity data.
          final json = {
            'data': (fixture('entity_data_update.json')! as Map)['update'],
            'totalPages': 1,
            'totalElements': 1,
            'hasNext': false,
          };
          final page = apiSerializers(
            registerPageDataEntityData,
          ).deserializeWith(PageDataEntityData.serializer, json)!;
          return page.data!.first.entityId is DeviceId;
        });
        expect(isDeviceId, isTrue);
      },
    );

    test(
      'registerEntityDataQuery serializes a query with an alias entity id',
      () async {
        final filter = await _withFreshRegistry(() {
          final query = EntityDataQuery(
            (b) => b
              ..entityFilter = SingleEntityFilter(
                (f) => f
                  ..singleEntity = AliasEntityId(
                    (a) => a..entityType = 'CURRENT_USER',
                  ).toBuilder(),
              )
              ..pageLink = EntityDataPageLink(
                (p) => p..pageSize = 10,
              ).toBuilder(),
          );
          final json =
              apiSerializers(
                    registerEntityDataQuery,
                  ).serializeWith(EntityDataQuery.serializer, query)!
                  as Map;
          return json['entityFilter'] as Map;
        });
        expect(filter['type'], 'singleEntity');
        expect((filter['singleEntity'] as Map)['entityType'], 'CURRENT_USER');
      },
    );

    test('registerNotification deserializes a notification', () {
      final json =
          ((fixture('notifications_update.json')! as Map)['notifications']
                  as List)
              .first;
      final n = apiSerializers(
        registerNotification,
      ).deserializeWith(Notification.serializer, json)!;
      expect(n.recipientId, isA<UserId>());
      expect(n.subject, isNotNull);
    });

    test('facade roots do not reference standardSerializers', () {
      final src = File('lib/src/api_serializers.dart').readAsStringSync();
      final code = src
          .split('\n')
          .where((l) => !l.trimLeft().startsWith('//'))
          .join('\n');
      expect(code, isNot(contains('standardSerializers')));
    });
  });

  group('standardSerializers', () {
    test('decodes the nested timeseries of EntityData', () {
      final data = standardSerializers.deserializeWith(EntityData.serializer, {
        'entityId': {
          'id': '784f394c-42b6-435a-983c-b7beff2784f9',
          'entityType': 'DEVICE',
        },
        'readAttrs': false,
        'readTimeseries': true,
        'latest': {
          'TIME_SERIES': {
            'temp': {'ts': 5, 'value': '20'},
          },
        },
        'timeseries': {
          't': [
            {'ts': 1, 'value': '2'},
            {'ts': 3, 'value': '4'},
          ],
        },
      });
      expect(data, isNotNull);
      final series = data!.timeseries!['t']!;
      expect(series.map((v) => v.value), ['2', '4']);
      expect(series.first.ts, 1);
      expect(data.latest!['TIME_SERIES']!['temp']!.value, '20');
    });
  });

  group('exported from the main library', () {
    test('apiSerializers(registerAuditLog) round-trips an AuditLog', () {
      final log = AuditLog(
        (b) => b
          ..id.id = 'a1'
          ..tenantId.id = 't1'
          ..entityId = DeviceId((i) => i.id = 'd1')
          ..userId.id = 'u1'
          ..actionType = ActionType.ADDED
          ..actionData = JsonObject({
            'name': 'dev',
            'tags': ['a', 'b'],
          }),
      );
      final serializers = apiSerializers(registerAuditLog);
      final json = serializers.toJson(AuditLog.serializer, log);
      final back = serializers.fromJson(AuditLog.serializer, json)!;
      expect(back, log);
      expect(back.entityId, isA<DeviceId>());
      expect((back.actionData!.asMap)['name'], 'dev');
    });
  });
}
