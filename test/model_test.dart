// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:test/test.dart';
import 'package:thingsboard_client/src/model/page/page_data.dart';
import 'package:thingsboard_client/src/model/page/page_link.dart';
import 'package:thingsboard_client/src/model/page/sort_order.dart';
import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/id/entity_type_models.dart';

void main() {
  group('PageData', () {
    test(
      'fromJson deserializes data array, totalPages, totalElements, hasNext',
      () {
        final json = {
          'data': [
            {'id': '1'},
            {'id': '2'},
          ],
          'totalPages': 3,
          'totalElements': 25,
          'hasNext': true,
        };
        final page = PageData.fromJson(json, (j) => j['id'] as String);
        expect(page.data, equals(['1', '2']));
        expect(page.totalPages, equals(3));
        expect(page.totalElements, equals(25));
        expect(page.hasNext, isTrue);
      },
    );

    test('fromJson with empty data list', () {
      final json = {
        'data': <dynamic>[],
        'totalPages': 0,
        'totalElements': 0,
        'hasNext': false,
      };
      final page = PageData.fromJson(json, (j) => j as Map);
      expect(page.data, isEmpty);
      expect(page.hasNext, isFalse);
    });

    test('emptyPageData creates zero-element page', () {
      final page = emptyPageData<String>();
      expect(page.data, isEmpty);
      expect(page.totalPages, equals(0));
      expect(page.totalElements, equals(0));
      expect(page.hasNext, isFalse);
    });
  });

  group('PageLink', () {
    test('toQueryParameters with page and pageSize', () {
      final link = PageLink(10, 0);
      final params = link.toQueryParameters();
      expect(params['pageSize'], equals(10));
      expect(params['page'], equals(0));
      expect(params.containsKey('textSearch'), isFalse);
      expect(params.containsKey('sortProperty'), isFalse);
    });

    test('toQueryParameters with textSearch', () {
      final link = PageLink(10, 0, 'search term');
      final params = link.toQueryParameters();
      expect(params['textSearch'], equals('search term'));
    });

    test('toQueryParameters omits empty textSearch', () {
      final link = PageLink(10, 0, '');
      final params = link.toQueryParameters();
      expect(params.containsKey('textSearch'), isFalse);
    });

    test('toQueryParameters with sortOrder', () {
      final link = PageLink(10, 0, 'name', SortOrder('name', Direction.ASC));
      final params = link.toQueryParameters();
      expect(params['sortProperty'], equals('name'));
      expect(params['sortOrder'], equals('ASC'));
    });

    test('toQueryParameters with DESC sort order', () {
      final link = PageLink(
        20,
        2,
        null,
        SortOrder('createdTime', Direction.DESC),
      );
      final params = link.toQueryParameters();
      expect(params['sortProperty'], equals('createdTime'));
      expect(params['sortOrder'], equals('DESC'));
    });

    test('nextPageLink increments page number', () {
      final link = PageLink(10, 0);
      final next = link.nextPageLink();
      expect(next.page, equals(1));
      expect(next.pageSize, equals(10));
    });
  });

  group('TimePageLink', () {
    test('toQueryParameters includes startTime and endTime', () {
      final link = TimePageLink(10, 0, null, null, 1000, 2000);
      final params = link.toQueryParameters();
      expect(params['startTime'], equals(1000));
      expect(params['endTime'], equals(2000));
      expect(params['pageSize'], equals(10));
      expect(params['page'], equals(0));
    });

    test('toQueryParameters omits null startTime/endTime', () {
      final link = TimePageLink(10);
      final params = link.toQueryParameters();
      expect(params.containsKey('startTime'), isFalse);
      expect(params.containsKey('endTime'), isFalse);
    });

    test('extends PageLink correctly', () {
      expect(TimePageLink(5), isA<PageLink>());
    });

    test('nextPageLink returns TimePageLink with preserved times', () {
      final link = TimePageLink(10, 0, null, null, 1000, 2000);
      final next = link.nextPageLink();
      expect(next, isA<TimePageLink>());
      expect(next.page, equals(1));
      expect((next).startTime, equals(1000));
      expect(next.endTime, equals(2000));
    });
  });

  group('SortOrder', () {
    test('Direction.ASC toShortString returns ASC', () {
      expect(Direction.ASC.toShortString(), equals('ASC'));
    });

    test('Direction.DESC toShortString returns DESC', () {
      expect(Direction.DESC.toShortString(), equals('DESC'));
    });

    test('sortOrderFromString parses plain string as ASC', () {
      final order = sortOrderFromString('createdTime');
      expect(order.property, equals('createdTime'));
      expect(order.direction, equals(Direction.ASC));
    });

    test('sortOrderFromString parses + prefix as ASC', () {
      final order = sortOrderFromString('+name');
      expect(order.property, equals('name'));
      expect(order.direction, equals(Direction.ASC));
    });

    test('sortOrderFromString parses - prefix as DESC', () {
      final order = sortOrderFromString('-name');
      expect(order.property, equals('name'));
      expect(order.direction, equals(Direction.DESC));
    });
  });

  group('EntityId', () {
    test('fromTypeAndUuid creates DeviceId for DEVICE', () {
      final id = EntityId.fromTypeAndUuid(EntityType.DEVICE, 'abc-123');
      expect(id, isA<DeviceId>());
      expect(id.entityType, equals(EntityType.DEVICE));
      expect(id.id, equals('abc-123'));
    });

    test('fromTypeAndUuid creates AssetId for ASSET', () {
      final id = EntityId.fromTypeAndUuid(EntityType.ASSET, 'asset-uuid');
      expect(id, isA<AssetId>());
      expect(id.entityType, equals(EntityType.ASSET));
    });

    test('fromTypeAndUuid creates UserId for USER', () {
      final id = EntityId.fromTypeAndUuid(EntityType.USER, 'user-uuid');
      expect(id, isA<UserId>());
    });

    test('fromTypeAndUuid creates TenantId for TENANT', () {
      final id = EntityId.fromTypeAndUuid(EntityType.TENANT, 'tenant-uuid');
      expect(id, isA<TenantId>());
    });

    test('fromTypeAndUuid creates CustomerId for CUSTOMER', () {
      final id = EntityId.fromTypeAndUuid(EntityType.CUSTOMER, 'customer-uuid');
      expect(id, isA<CustomerId>());
    });

    test('fromTypeAndUuid creates AlarmId for ALARM', () {
      final id = EntityId.fromTypeAndUuid(EntityType.ALARM, 'alarm-uuid');
      expect(id, isA<AlarmId>());
    });

    test('fromTypeAndUuid creates DashboardId for DASHBOARD', () {
      final id = EntityId.fromTypeAndUuid(EntityType.DASHBOARD, 'dash-uuid');
      expect(id, isA<DashboardId>());
    });

    test('toJson includes entityType and id', () {
      final id = EntityId.fromTypeAndUuid(EntityType.DEVICE, 'dev-uuid');
      final json = id.toJson();
      expect(json['id'], equals('dev-uuid'));
      expect(json['entityType'], equals('DEVICE'));
    });

    test('fromJson deserializes entityType and id', () {
      final json = {'entityType': 'DEVICE', 'id': 'dev-uuid'};
      final id = EntityId.fromJson(json);
      expect(id, isA<DeviceId>());
      expect(id.id, equals('dev-uuid'));
    });

    test('fromJson throws FormatException when entityType or id missing', () {
      expect(
        () => EntityId.fromJson({'entityType': 'DEVICE'}),
        throwsFormatException,
      );
    });
  });

  group('entityTypeFromString', () {
    test('DEVICE round-trips', () {
      expect(entityTypeFromString('DEVICE'), equals(EntityType.DEVICE));
    });

    test('TENANT round-trips', () {
      expect(entityTypeFromString('TENANT'), equals(EntityType.TENANT));
    });

    test('case insensitive matching', () {
      expect(entityTypeFromString('device'), equals(EntityType.DEVICE));
    });

    test('toShortString returns enum name', () {
      expect(EntityType.DEVICE.toShortString(), equals('DEVICE'));
      expect(EntityType.RULE_CHAIN.toShortString(), equals('RULE_CHAIN'));
    });
  });
}
