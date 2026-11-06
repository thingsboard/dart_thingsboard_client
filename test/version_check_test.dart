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
import 'package:thingsboard_client/src/storage/in_memory_storage.dart';

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

  group('server version check', () {
    late MockHttpClientAdapter mockAdapter;

    setUp(() {
      mockAdapter = MockHttpClientAdapter();
    });

    /// Creates a client seeded with a valid JWT; add more mocks on [mockAdapter].
    Future<ThingsboardClient> makeAuthenticatedClient({
      String scope = 'TENANT_ADMIN',
    }) async {
      final client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
      final jwt = createTestJwt(scope: scope);
      final refresh = createTestJwt(scope: 'REFRESH_TOKEN');
      await client.setUserFromJwtToken(jwt, refresh, false);
      return client;
    }

    test(
      'init() throws UnsupportedServerVersionError when the server is older',
      () async {
        final client = await makeAuthenticatedClient();

        mockAdapter.onRoute('/api/system/info', (req) {
          return ResponseBody.fromString(
            jsonEncode({'version': '3.5.0', 'type': 'CE'}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await expectLater(
          client.init(),
          throwsA(
            isA<UnsupportedServerVersionError>()
                .having((e) => e.serverVersion, 'serverVersion', '3.5.0')
                .having((e) => e.minVersion, 'minVersion', tbMinServerVersion),
          ),
        );
      },
    );

    test(
      'init() completes normally when server version meets minimum',
      () async {
        final client = await makeAuthenticatedClient();

        mockAdapter.onRoute('/api/system/info', (req) {
          return ResponseBody.fromString(
            jsonEncode({'version': '4.4.1-SNAPSHOT', 'type': 'PE'}),
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
      'init() completes normally when /api/system/info returns 403 ',
      () async {
        final client = await makeAuthenticatedClient(scope: 'TENANT_ADMIN');

        mockAdapter.onRoute('/api/system/info', (req) {
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
      'init() completes normally when /api/system/info returns 401 (unauthenticated)',
      () async {
        final client = await makeAuthenticatedClient();

        mockAdapter.onRoute('/api/system/info', (req) {
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
      'init() completes normally when /api/system/info returns a network error',
      () async {
        final client = await makeAuthenticatedClient();

        mockAdapter.onRoute('/api/system/info', (req) {
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

      mockAdapter.onRoute('/api/system/info', (req) {
        throw DioException.connectionTimeout(
          timeout: const Duration(seconds: 20),
          requestOptions: req,
        );
      });

      await expectLater(client.init(), completes);
      // onError is dispatched on a later event-loop turn.
      await Future<void>.delayed(Duration.zero);
      expect(mockAdapter.requestedPaths, contains('/api/system/info'));
      expect(reportedErrors, isEmpty);
    });

    ResponseBody systemInfo(String version) => ResponseBody.fromString(
      jsonEncode({'version': version, 'type': 'PE'}),
      200,
      headers: {
        'content-type': ['application/json'],
      },
    );

    for (final scope in ['TENANT_ADMIN', 'CUSTOMER_USER', 'SYS_ADMIN']) {
      test('a $scope session on an older server is not loaded', () async {
        var userLoaded = 0;
        final storage = InMemoryStorage();
        final client = ThingsboardClient(
          'http://localhost:8080',
          storage: storage,
          onUserLoaded: () => userLoaded++,
        );
        setMockAdapter(client, mockAdapter);
        mockAdapter.onRoute('/api/system/info', (_) => systemInfo('4.3.0'));

        await expectLater(
          client.setUserFromJwtToken(
            createTestJwt(scope: scope),
            createTestJwt(scope: 'REFRESH_TOKEN'),
            true,
          ),
          throwsA(isA<UnsupportedServerVersionError>()),
        );
        await Future<void>.delayed(Duration.zero);
        expect(userLoaded, 0);
        expect(client.isAuthenticated(), isFalse);
        expect(client.getJwtToken(), isNull);
        expect(await storage.containsKey('jwt_token'), isFalse);
        expect(await storage.containsKey('refresh_token'), isFalse);
      });
    }

    test('init() clears a stored session on an older server', () async {
      final storage = InMemoryStorage();
      await storage.setItem('jwt_token', createTestJwt());
      await storage.setItem(
        'refresh_token',
        createTestJwt(scope: 'REFRESH_TOKEN'),
      );
      final client = ThingsboardClient(
        'http://localhost:8080',
        storage: storage,
      );
      setMockAdapter(client, mockAdapter);
      mockAdapter.onRoute('/api/system/info', (_) => systemInfo('4.2.2.8'));

      await expectLater(
        client.init(),
        throwsA(isA<UnsupportedServerVersionError>()),
      );
      expect(client.isAuthenticated(), isFalse);
      expect(await storage.containsKey('jwt_token'), isFalse);
      expect(await storage.containsKey('refresh_token'), isFalse);
    });

    test(
      'init() refreshing an expired session clears it on an older server',
      () async {
        final storage = InMemoryStorage();
        await storage.setItem('jwt_token', createTestJwt(expInSeconds: -60));
        await storage.setItem(
          'refresh_token',
          createTestJwt(scope: 'REFRESH_TOKEN'),
        );
        final client = ThingsboardClient(
          'http://localhost:8080',
          storage: storage,
        );
        setMockAdapter(client, mockAdapter);
        mockAdapter.onRoute(
          '/api/auth/token',
          (_) => ResponseBody.fromString(
            jsonEncode({
              'token': createTestJwt(),
              'refreshToken': createTestJwt(scope: 'REFRESH_TOKEN'),
            }),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          ),
        );
        mockAdapter.onRoute('/api/system/info', (_) => systemInfo('4.3.0'));

        await expectLater(
          client.init(),
          throwsA(isA<UnsupportedServerVersionError>()),
        );
        expect(client.isAuthenticated(), isFalse);
        expect(await storage.containsKey('jwt_token'), isFalse);
        expect(
          mockAdapter.requestedPaths.where((p) => p == '/api/system/info'),
          hasLength(1),
        );
      },
    );

    test('an unknown server version is accepted', () async {
      final client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
      mockAdapter.onRoute('/api/system/info', (_) => systemInfo('unknown'));

      await client.setUserFromJwtToken(
        createTestJwt(),
        createTestJwt(scope: 'REFRESH_TOKEN'),
        true,
      );

      expect(mockAdapter.requestedPaths, ['/api/system/info']);
    });

    test('a pre-verification session is not checked', () async {
      final client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
      mockAdapter.onRoute('/api/system/info', (_) => systemInfo('4.3.0'));

      await client.setUserFromJwtToken(
        createTestJwt(scope: 'PRE_VERIFICATION_TOKEN'),
        null,
        true,
      );

      expect(mockAdapter.requestedPaths, isEmpty);
    });
  });
}
