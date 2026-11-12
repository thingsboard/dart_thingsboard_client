// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/src/interceptor/http_interceptor.dart';
import 'package:thingsboard_client/src/thingsboard_client.dart';

void main() {
  group('debug mode', () {
    test('debugMode=false does NOT include PrettyDioLogger', () {
      final client = ThingsboardClient(
        'http://localhost:8080',
        debugMode: false,
      );
      final interceptors = client.dio.interceptors;
      final hasPrettyLogger = interceptors.any((i) => i is PrettyDioLogger);
      expect(hasPrettyLogger, isFalse);
    });
  });

  group('interceptor chain', () {
    test('has HttpInterceptor in interceptor list', () {
      final client = ThingsboardClient('http://localhost:8080');
      expect(
        client.dio.interceptors.whereType<HttpInterceptor>(),
        hasLength(1),
      );
    });

    test('debugMode=true has PrettyDioLogger before HttpInterceptor', () {
      final client = ThingsboardClient(
        'http://localhost:8080',
        debugMode: true,
      );
      final interceptors = client.dio.interceptors.toList();
      final prettyIndex = interceptors.indexWhere((i) => i is PrettyDioLogger);
      final httpIndex = interceptors.indexWhere((i) => i is HttpInterceptor);
      expect(prettyIndex, greaterThanOrEqualTo(0));
      expect(httpIndex, greaterThan(prettyIndex));
    });
  });
}
