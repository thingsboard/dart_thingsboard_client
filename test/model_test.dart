// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:test/test.dart';
import 'package:thingsboard_client/src/model/direction.dart';
import 'package:thingsboard_client/src/model/page/page_data.dart';
import 'package:thingsboard_client/src/model/page/page_link.dart';
import 'package:thingsboard_client/src/model/page/sort_order.dart';

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
}
