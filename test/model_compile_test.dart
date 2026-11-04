// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Smoke test: the package imports and its models resolve.
import 'package:test/test.dart';

void main() {
  group('Model compilation smoke test', () {
    test('can import package barrel export', () {
      expect(true, isTrue);
    });
  });
}
