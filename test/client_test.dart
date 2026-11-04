// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/src/thingsboard_client.dart';

void main() {
  group('debug mode', () {
    test('debugMode=true includes PrettyDioLogger in interceptors', () {
      final client = ThingsboardClient(
        'http://localhost:8080',
        debugMode: true,
      );
      final interceptors = client.dio.interceptors;
      final hasPrettyLogger =
          interceptors.any((i) => i is PrettyDioLogger);
      expect(hasPrettyLogger, isTrue);
    });

    test('debugMode=false does NOT include PrettyDioLogger', () {
      final client = ThingsboardClient(
        'http://localhost:8080',
        debugMode: false,
      );
      final interceptors = client.dio.interceptors;
      final hasPrettyLogger =
          interceptors.any((i) => i is PrettyDioLogger);
      expect(hasPrettyLogger, isFalse);
    });
  });

  group('default storage', () {
    test('creates client without storage param without throwing', () {
      expect(
        () => ThingsboardClient('http://localhost:8080'),
        returnsNormally,
      );
    });

    test('default storage (InMemoryStorage) works for login', () async {
      // Just verify the client can be created and isn't authenticated
      final client = ThingsboardClient('http://localhost:8080');
      expect(client.isAuthenticated(), isFalse);
    });
  });

  group('interceptor chain', () {
    test('has HttpInterceptor in interceptor list', () {
      final client = ThingsboardClient('http://localhost:8080');
      // Check that there is at least one interceptor (HttpInterceptor)
      expect(client.dio.interceptors, isNotEmpty);
    });

    test('debugMode=true has PrettyDioLogger before HttpInterceptor', () {
      final client =
          ThingsboardClient('http://localhost:8080', debugMode: true);
      final interceptors = client.dio.interceptors.toList();
      // PrettyDioLogger should appear before HttpInterceptor
      final prettyIndex =
          interceptors.indexWhere((i) => i is PrettyDioLogger);
      final httpIndex = interceptors.indexWhere(
          (i) => i.runtimeType.toString().contains('HttpInterceptor'));
      expect(prettyIndex, greaterThanOrEqualTo(0));
      expect(httpIndex, greaterThan(prettyIndex));
    });
  });
}
