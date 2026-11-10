// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:test/test.dart';
import 'package:thingsboard_client/src/storage/_local_file_storage_io.dart';
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
      final result = await storage.getItem(
        'nonexistent',
        defaultValue: 'default',
      );
      expect(result, equals('default'));
    });

    test('deleteItem removes key', () async {
      await storage.setItem('key1', 'value1');
      await storage.deleteItem('key1');
      final result = await storage.getItem('key1');
      expect(result, isNull);
    });

    test('deleteItem on non-existent key does nothing', () async {
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

    test('multiple keys are independent', () async {
      await storage.setItem('a', 'alpha');
      await storage.setItem('b', 'beta');
      expect(await storage.getItem('a'), equals('alpha'));
      expect(await storage.getItem('b'), equals('beta'));
    });
  });

  group('LocalFileStorage', () {
    late Directory dir;

    setUp(() {
      dir = Directory.systemTemp.createTempSync('tb_storage_test');
    });

    tearDown(() {
      dir.deleteSync(recursive: true);
    });

    test('getItem returns defaultValue for a missing key', () async {
      final storage = LocalFileStorage('s.json', dir.path);
      expect(await storage.getItem('missing', defaultValue: 'D'), 'D');
      expect(await storage.getItem('missing'), isNull);
      await storage.setItem('k', 'v');
      expect(await storage.getItem('k', defaultValue: 'D'), 'v');
    });

    test(
      'containsKey is true for a key persisted by a previous instance',
      () async {
        final first = LocalFileStorage('s.json', dir.path);
        await first.setItem('k', 'v');

        final second = LocalFileStorage('s.json', dir.path);
        expect(await second.containsKey('k'), isTrue);
        expect(await second.containsKey('other'), isFalse);
        expect(await second.getItem('k'), 'v');
      },
    );

    test('deleteItem removes a key', () async {
      final storage = LocalFileStorage('s.json', dir.path);
      await storage.setItem('k', 'v');
      await storage.deleteItem('k');
      expect(await storage.containsKey('k'), isFalse);
    });
  });
}
