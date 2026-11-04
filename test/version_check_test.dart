// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/src/thingsboard_client.dart';
import 'package:thingsboard_client/src/interceptor/http_interceptor.dart';
import 'package:thingsboard_client/src/model/version_models.dart';
import 'package:thingsboard_client/src/error/thingsboard_error.dart';

// Helper: create a test JWT token
String createTestJwt({
  String sub = 'user-id',
  String scope = 'TENANT_ADMIN',
  int expInSeconds = 3600,
  String tenantId = 'tenant-id',
}) {
  final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
  final payload = base64Url.encode(
    utf8.encode(
      jsonEncode({
        'sub': sub,
        'scopes': [scope],
        'exp': DateTime.now().millisecondsSinceEpoch ~/ 1000 + expInSeconds,
        'iss': 'test',
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        'firstName': 'Test',
        'lastName': 'User',
        'enabled': true,
        'isPublic': false,
        'tenantId': tenantId,
      }),
    ),
  );
  return '$header.$payload.fake-signature';
}

class MockHttpClientAdapter implements HttpClientAdapter {
  final Map<String, List<ResponseBody Function(RequestOptions)>> _handlers = {};
  final List<String> requestedPaths = [];

  void onRoute(String path, ResponseBody Function(RequestOptions) handler) {
    _handlers.putIfAbsent(path, () => []).add(handler);
  }

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requestedPaths.add(options.path);
    final handlers = _handlers[options.path];
    if (handlers != null && handlers.isNotEmpty) {
      final handler = handlers.length > 1 ? handlers.removeAt(0) : handlers[0];
      return handler(options);
    }
    return ResponseBody.fromString(
      '{"message":"Not found"}',
      404,
      headers: {
        'content-type': ['application/json'],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

// Set both main and internal Dio adapters to the mock adapter
void setMockAdapter(ThingsboardClient client, MockHttpClientAdapter adapter) {
  client.dio.httpClientAdapter = adapter;
  for (final interceptor in client.dio.interceptors) {
    if (interceptor is HttpInterceptor) {
      interceptor.internalDio.httpClientAdapter = adapter;
      break;
    }
  }
}

void main() {
  group('parseVersion', () {
    test('parses a normal version string "4.4.0"', () {
      expect(parseVersion('4.4.0'), equals([4, 4, 0]));
    });

    test('parses snapshot version "4.4.0-SNAPSHOT" leniently', () {
      // "0-SNAPSHOT" cannot be parsed as int, so int.tryParse returns null => 0
      expect(parseVersion('4.4.0-SNAPSHOT'), equals([4, 4, 0]));
    });

    test('returns [0, 0, 0] for invalid version string', () {
      expect(parseVersion('invalid'), equals([0, 0, 0]));
    });
  });

  group('isVersionSufficient', () {
    test('returns true for equal versions', () {
      expect(isVersionSufficient('4.4.0', '4.4.0'), isTrue);
    });

    test('returns true when actual is newer', () {
      expect(isVersionSufficient('4.5.0', '4.4.0'), isTrue);
    });

    test('returns false when actual is older', () {
      expect(isVersionSufficient('3.5.0', '4.4.0'), isFalse);
    });
  });

  group('tbMinServerVersion', () {
    test('tbMinServerVersion equals "4.4.0"', () {
      expect(tbMinServerVersion, equals('4.4.0'));
    });
  });

  group('init version check', () {
    late MockHttpClientAdapter mockAdapter;

    setUp(() {
      mockAdapter = MockHttpClientAdapter();
    });

    /// Helper: create a client, seed it with a valid JWT via setUserFromJwtToken,
    /// then return the client and the adapter so the caller can add more mocks.
    Future<ThingsboardClient> makeAuthenticatedClient({
      String scope = 'TENANT_ADMIN',
    }) async {
      final client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
      final jwt = createTestJwt(scope: scope);
      final refresh = createTestJwt(scope: 'REFRESH_TOKEN');
      // This stores tokens in InMemoryStorage
      await client.setUserFromJwtToken(jwt, refresh, false);
      return client;
    }

    test(
      'init() throws ThingsboardError when server version is below minimum',
      () async {
        final client = await makeAuthenticatedClient();

        mockAdapter.onRoute('/api/admin/updates', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'currentVersion': '3.5.0',
              'updateAvailable': true,
              'latestVersion': '4.4.0',
            }),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await expectLater(client.init(), throwsA(isA<ThingsboardError>()));
      },
    );

    test(
      'init() completes normally when server version meets minimum',
      () async {
        final client = await makeAuthenticatedClient();

        mockAdapter.onRoute('/api/admin/updates', (req) {
          return ResponseBody.fromString(
            jsonEncode({'currentVersion': '4.4.0', 'updateAvailable': false}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await expectLater(client.init(), completes);
      },
    );

    test(
      'init() completes normally when /api/admin/updates returns 403 (non-admin)',
      () async {
        final client = await makeAuthenticatedClient(scope: 'TENANT_ADMIN');

        mockAdapter.onRoute('/api/admin/updates', (req) {
          return ResponseBody.fromString(
            jsonEncode({'status': 403, 'message': 'Forbidden'}),
            403,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await expectLater(client.init(), completes);
      },
    );

    test(
      'init() completes normally when /api/admin/updates returns 401 (unauthenticated)',
      () async {
        final client = await makeAuthenticatedClient();

        mockAdapter.onRoute('/api/admin/updates', (req) {
          return ResponseBody.fromString(
            jsonEncode({'status': 401, 'message': 'Unauthorized'}),
            401,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await expectLater(client.init(), completes);
      },
    );

    test(
      'init() completes normally when /api/admin/updates returns a network error',
      () async {
        final client = await makeAuthenticatedClient();

        // Return a 500 to simulate server error — should be silently ignored
        mockAdapter.onRoute('/api/admin/updates', (req) {
          return ResponseBody.fromString(
            jsonEncode({'status': 500, 'message': 'Internal Server Error'}),
            500,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await expectLater(client.init(), completes);
      },
    );

    test('init() does not report an unreachable server to onError', () async {
      final reportedErrors = <ThingsboardError>[];
      final client = ThingsboardClient(
        'http://localhost:8080',
        onError: reportedErrors.add,
      );
      setMockAdapter(client, mockAdapter);
      await client.setUserFromJwtToken(
        createTestJwt(),
        createTestJwt(scope: 'REFRESH_TOKEN'),
        false,
      );

      mockAdapter.onRoute('/api/admin/updates', (req) {
        throw DioException.connectionTimeout(
          timeout: const Duration(seconds: 20),
          requestOptions: req,
        );
      });

      await expectLater(client.init(), completes);
      // onError is dispatched on a later event-loop turn.
      await Future<void>.delayed(Duration.zero);
      expect(mockAdapter.requestedPaths, contains('/api/admin/updates'));
      expect(reportedErrors, isEmpty);
    });
  });
}
