// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Verify builder factories registered for nested generic types
// Covers GEN-08 — serializers.dart patched for issue #22196
import 'package:test/test.dart';
import 'dart:io';

void main() {
  group('Serializers builder factory patch', () {
    test('serializers.dart contains addBuilderFactory entries', () {
      final content = File('lib/src/serializers.dart').readAsStringSync();
      expect(content.contains('addBuilderFactory'), isTrue,
          reason: 'serializers.dart must have nested generic builder factories');
    });

    test('serializers.dart has builder factory for TsValue', () {
      final content = File('lib/src/serializers.dart').readAsStringSync();
      expect(content.contains('TsValue'), isTrue,
          reason: 'TsValue builder factory required for EntityData.timeseries');
    });
  });
}
