// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Uses only the public libraries of the package, as an application would: no
// import of package:thingsboard_client/src/.
import 'package:test/test.dart';
import 'package:thingsboard_client/telemetry.dart' as ws;
import 'package:thingsboard_client/thingsboard_client.dart';

void main() {
  group('main library', () {
    test('exports the login models that ThingsboardClient.login() takes', () {
      final client = ThingsboardClient('http://localhost:8080');
      final request = LoginRequest(
        userName: 'tenant@thingsboard.org',
        password: 'tenant',
      );
      // Compiles only if LoginRequest is the facade type of login().
      final Future<LoginResponse> Function(LoginRequest) login = client.login;
      expect(login, isNotNull);
      expect(request.toJson(), {
        'username': 'tenant@thingsboard.org',
        'password': 'tenant',
      });
    });

    test('Authority of AuthUser is the Authority of the REST models', () {
      final user = AuthUser.fromJson({
        'sub': 'tenant@thingsboard.org',
        'scopes': ['TENANT_ADMIN'],
      });
      expect(user.authority, Authority.TENANT_ADMIN);
      expect(user.authority == Authority.TENANT_ADMIN, isTrue);
      expect(user.isTenantAdmin(), isTrue);
      final restUser = User(
        (b) => b
          ..email = 'tenant@thingsboard.org'
          ..authority = Authority.TENANT_ADMIN,
      );
      expect(restUser.authority, user.authority);
    });

    test('an anonymous AuthUser has no authority', () {
      final user = AuthUser.fromJson({'sub': '', 'scopes': <String>[]});
      expect(user.authority, isNull);
      expect(user.isTenantAdmin(), isFalse);
    });

    test('authorityFromString', () {
      expect(authorityFromString('CUSTOMER_USER'), Authority.CUSTOMER_USER);
      expect(authorityFromString('customer_user'), Authority.CUSTOMER_USER);
      expect(authorityFromString('ANONYMOUS'), isNull);
      expect(authorityFromString('unknown_default_open_api'), isNull);
      expect(Authority.SYS_ADMIN.toShortString(), 'SYS_ADMIN');
    });
  });

  group('telemetry library', () {
    test('creates a subscription with its own entity id types', () {
      final client = ThingsboardClient('http://localhost:8080');
      final subscriber =
          ws.TelemetrySubscriber.createEntityAttributesSubscription(
            telemetryService: client.getTelemetryService(),
            entityId: ws.DeviceId('03327560-8957-11ea-a27f-4b68cd5becb0'),
            attributeScope: ws.LatestTelemetry.LATEST_TELEMETRY.toShortString(),
          );
      expect(subscriber, isA<ws.TelemetrySubscriber>());
    });

    test('builds an entity data query', () {
      final query = ws.EntityDataQuery(
        entityFilter: ws.EntityTypeFilter(entityType: ws.EntityType.DEVICE),
        pageLink: ws.EntityDataPageLink(pageSize: 10),
        entityFields: [
          ws.EntityKey(type: ws.EntityKeyType.ENTITY_FIELD, key: 'name'),
        ],
      );
      expect(query.toJson()['entityFilter']['entityType'], 'DEVICE');
    });
  });
}
