// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:test/test.dart';
import 'package:thingsboard_client/src/storage/in_memory_storage.dart';

void main() {
  group('InMemoryStorage', () {
    late InMemoryStorage storage;

    setUp(() {
      storage = InMemoryStorage();
    });

    test('setItem then getItem returns same string value', () async {
      await storage.setItem('key1', 'value1');
      final result = await storage.getItem('key1');
      expect(result, equals('value1'));
    });

    test('setItem then getItem returns same int value', () async {
      await storage.setItem('count', 42);
      final result = await storage.getItem('count');
      expect(result, equals(42));
    });

    test('setItem overwrites existing value', () async {
      await storage.setItem('key1', 'first');
      await storage.setItem('key1', 'second');
      final result = await storage.getItem('key1');
      expect(result, equals('second'));
    });

    test('getItem returns null for missing key', () async {
      final result = await storage.getItem('nonexistent');
      expect(result, isNull);
    });

    test('getItem returns defaultValue for missing key', () async {
      final result = await storage.getItem('nonexistent', defaultValue: 'default');
      expect(result, equals('default'));
    });

    test('deleteItem removes key', () async {
      await storage.setItem('key1', 'value1');
      await storage.deleteItem('key1');
      final result = await storage.getItem('key1');
      expect(result, isNull);
    });

    test('deleteItem on non-existent key does nothing', () async {
      // Should not throw
      await storage.deleteItem('nonexistent');
      expect(await storage.containsKey('nonexistent'), isFalse);
    });

    test('containsKey returns true for existing key', () async {
      await storage.setItem('key1', 'value1');
      expect(await storage.containsKey('key1'), isTrue);
    });

    test('containsKey returns false for missing key', () async {
      expect(await storage.containsKey('absent'), isFalse);
    });

    test('containsKey returns false after deleteItem', () async {
      await storage.setItem('key1', 'value1');
      await storage.deleteItem('key1');
      expect(await storage.containsKey('key1'), isFalse);
    });

    test('stores and retrieves Map value', () async {
      final map = {'name': 'Alice', 'age': 30};
      await storage.setItem('user', map);
      final result = await storage.getItem('user');
      expect(result, equals(map));
    });

    test('multiple keys are independent', () async {
      await storage.setItem('a', 'alpha');
      await storage.setItem('b', 'beta');
      expect(await storage.getItem('a'), equals('alpha'));
      expect(await storage.getItem('b'), equals('beta'));
    });
  });
}
