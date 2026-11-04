// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/src/thingsboard_client_base.dart';
import 'package:thingsboard_client/src/thingsboard_client.dart';
import 'package:thingsboard_client/src/model/login_models.dart';
import 'package:thingsboard_client/src/model/authority_enum.dart';
import 'package:thingsboard_client/src/error/thingsboard_error.dart';
import 'package:thingsboard_client/src/interceptor/http_interceptor.dart';
import 'package:thingsboard_client/src/storage/in_memory_storage.dart';

// Helper: create a test JWT token with given claims
String createTestJwt({
  String sub = 'user-id',
  String scope = 'TENANT_ADMIN',
  int expInSeconds = 3600,
  String tenantId = 'tenant-id',
  String? customerId,
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
        'customerId': ?customerId,
      }),
    ),
  );
  return '$header.$payload.fake-signature';
}

// A mock HTTP adapter that handles specific paths
class MockHttpClientAdapter implements HttpClientAdapter {
  final Map<String, List<FutureOr<ResponseBody> Function(RequestOptions)>>
  _handlers = {};
  final List<String> requestedPaths = [];

  void onRoute(
    String path,
    FutureOr<ResponseBody> Function(RequestOptions) handler,
  ) {
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
      return await handler(options);
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

ResponseBody rejectedRefreshTokenResponse(RequestOptions req) {
  return ResponseBody.fromString(
    jsonEncode({
      'status': 401,
      'errorCode': 11,
      'message': 'Token has expired',
    }),
    401,
    headers: {
      'content-type': ['application/json'],
    },
  );
}

void main() {
  late MockHttpClientAdapter mockAdapter;
  late ThingsboardClient client;

  setUp(() {
    mockAdapter = MockHttpClientAdapter();
    client = ThingsboardClient('http://localhost:8080');
    client.dio.httpClientAdapter = mockAdapter;
  });

  group('login', () {
    test(
      'login sends POST /api/auth/login with correct body and stores JWT',
      () async {
        final jwtToken = createTestJwt();
        final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');
        mockAdapter.onRoute('/api/auth/login', (req) {
          // Verify request body contains username and password
          final body = req.data is String ? jsonDecode(req.data) : req.data;
          expect(body['username'], equals('user@test.com'));
          expect(body['password'], equals('pass'));
          return ResponseBody.fromString(
            jsonEncode({'token': jwtToken, 'refreshToken': refreshToken}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        final response = await client.login(
          LoginRequest(userName: 'user@test.com', password: 'pass'),
        );

        expect(response.token, equals(jwtToken));
        expect(client.getJwtToken(), equals(jwtToken));
        expect(client.isAuthenticated(), isTrue);
        expect(client.getAuthUser(), isNotNull);
        expect(client.getAuthUser()!.authority, equals(Authority.TENANT_ADMIN));
      },
    );

    test('login stores tokens in storage', () async {
      final jwtToken = createTestJwt();
      final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');
      mockAdapter.onRoute('/api/auth/login', (req) {
        return ResponseBody.fromString(
          jsonEncode({'token': jwtToken, 'refreshToken': refreshToken}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      await client.login(
        LoginRequest(userName: 'user@test.com', password: 'pass'),
      );

      expect(client.getJwtToken(), equals(jwtToken));
      expect(client.getRefreshToken(), equals(refreshToken));
    });
  });

  group('MFA', () {
    test(
      'login with PRE_VERIFICATION_TOKEN triggers onMfaAuth callback',
      () async {
        final mfaCompleter = Completer<void>();
        var mfaAuthCalled = false;

        final mfaToken = createTestJwt(scope: 'PRE_VERIFICATION_TOKEN');
        final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');

        client = ThingsboardClient(
          'http://localhost:8080',
          onMfaAuth: () {
            mfaAuthCalled = true;
            mfaCompleter.complete();
          },
        );
        client.dio.httpClientAdapter = mockAdapter;

        mockAdapter.onRoute('/api/auth/login', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'token': mfaToken,
              'refreshToken': refreshToken,
              'scope': 'PRE_VERIFICATION_TOKEN',
            }),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await client.login(
          LoginRequest(userName: 'user@test.com', password: 'pass'),
        );
        await mfaCompleter.future.timeout(Duration(seconds: 2));

        expect(mfaAuthCalled, isTrue);
      },
    );

    test(
      'login with MFA_CONFIGURATION_TOKEN triggers onMfaForce callback',
      () async {
        final mfaCompleter = Completer<void>();
        var mfaForceCalled = false;

        final mfaToken = createTestJwt(scope: 'MFA_CONFIGURATION_TOKEN');
        final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');

        client = ThingsboardClient(
          'http://localhost:8080',
          onMfaForce: () {
            mfaForceCalled = true;
            mfaCompleter.complete();
          },
        );
        client.dio.httpClientAdapter = mockAdapter;

        mockAdapter.onRoute('/api/auth/login', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'token': mfaToken,
              'refreshToken': refreshToken,
              'scope': 'MFA_CONFIGURATION_TOKEN',
            }),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await client.login(
          LoginRequest(userName: 'user@test.com', password: 'pass'),
        );
        await mfaCompleter.future.timeout(Duration(seconds: 2));

        expect(mfaForceCalled, isTrue);
      },
    );
  });

  group('refresh', () {
    test(
      'refreshJwtToken issues POST /api/auth/token with refresh token',
      () async {
        final initialJwt = createTestJwt();
        final initialRefresh = createTestJwt(scope: 'REFRESH_TOKEN');
        final newJwt = createTestJwt(sub: 'user-id-refreshed');
        final newRefresh = createTestJwt(
          scope: 'REFRESH_TOKEN',
          sub: 'refreshed',
        );

        // First login
        mockAdapter.onRoute('/api/auth/login', (req) {
          return ResponseBody.fromString(
            jsonEncode({'token': initialJwt, 'refreshToken': initialRefresh}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });
        await client.login(
          LoginRequest(userName: 'user@test.com', password: 'pass'),
        );

        mockAdapter.onRoute('/api/auth/token', (req) {
          final body = req.data is String ? jsonDecode(req.data) : req.data;
          expect(body['refreshToken'], equals(initialRefresh));
          return ResponseBody.fromString(
            jsonEncode({'token': newJwt, 'refreshToken': newRefresh}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await client.refreshJwtToken(notify: false);

        expect(client.getJwtToken(), equals(newJwt));
      },
    );
  });

  group('concurrent refresh', () {
    test('concurrent refreshJwtToken calls issue only one HTTP call', () async {
      final initialJwt = createTestJwt();
      final initialRefresh = createTestJwt(scope: 'REFRESH_TOKEN');
      var refreshCallCount = 0;
      final newJwt = createTestJwt(sub: 'user-id-refreshed');
      final newRefresh = createTestJwt(
        scope: 'REFRESH_TOKEN',
        sub: 'refreshed',
      );

      // First login
      mockAdapter.onRoute('/api/auth/login', (req) {
        return ResponseBody.fromString(
          jsonEncode({'token': initialJwt, 'refreshToken': initialRefresh}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });
      await client.login(
        LoginRequest(userName: 'user@test.com', password: 'pass'),
      );

      // Slow refresh handler to allow concurrency
      mockAdapter.onRoute('/api/auth/token', (req) async {
        refreshCallCount++;
        await Future.delayed(Duration(milliseconds: 50));
        return ResponseBody.fromString(
          jsonEncode({'token': newJwt, 'refreshToken': newRefresh}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      // Fire two concurrent refreshes
      await Future.wait([
        client.refreshJwtToken(notify: false),
        client.refreshJwtToken(notify: false),
      ]);

      // Only one HTTP call should have been made
      expect(refreshCallCount, equals(1));
      expect(client.getJwtToken(), equals(newJwt));
    });
  });

  group('logout', () {
    test('logout sends POST /api/auth/logout and clears tokens', () async {
      final jwtToken = createTestJwt();
      final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');

      mockAdapter.onRoute('/api/auth/login', (req) {
        return ResponseBody.fromString(
          jsonEncode({'token': jwtToken, 'refreshToken': refreshToken}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });
      mockAdapter.onRoute('/api/auth/logout', (req) {
        return ResponseBody.fromString('', 200);
      });

      await client.login(
        LoginRequest(userName: 'user@test.com', password: 'pass'),
      );
      expect(client.isAuthenticated(), isTrue);

      await client.logout();

      expect(client.getJwtToken(), isNull);
      expect(client.getRefreshToken(), isNull);
      expect(client.isAuthenticated(), isFalse);
      expect(client.getAuthUser(), isNull);

      expect(mockAdapter.requestedPaths, contains('/api/auth/logout'));
    });

    test('logout clears tokens even if HTTP call fails', () async {
      final jwtToken = createTestJwt();
      final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');

      mockAdapter.onRoute('/api/auth/login', (req) {
        return ResponseBody.fromString(
          jsonEncode({'token': jwtToken, 'refreshToken': refreshToken}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });
      // Logout returns 500 — tokens should still be cleared
      mockAdapter.onRoute('/api/auth/logout', (req) {
        return ResponseBody.fromString(
          '{"message":"error"}',
          500,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      await client.login(
        LoginRequest(userName: 'user@test.com', password: 'pass'),
      );
      await client.logout();

      expect(client.isAuthenticated(), isFalse);
      expect(client.getJwtToken(), isNull);
    });
  });

  group('callbacks', () {
    test('onUserLoaded fires after successful login', () async {
      final loadedCompleter = Completer<void>();
      var userLoadedCalled = false;

      final jwtToken = createTestJwt();
      final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');

      client = ThingsboardClient(
        'http://localhost:8080',
        onUserLoaded: () {
          userLoadedCalled = true;
          if (!loadedCompleter.isCompleted) loadedCompleter.complete();
        },
      );
      client.dio.httpClientAdapter = mockAdapter;

      mockAdapter.onRoute('/api/auth/login', (req) {
        return ResponseBody.fromString(
          jsonEncode({'token': jwtToken, 'refreshToken': refreshToken}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      await client.login(
        LoginRequest(userName: 'user@test.com', password: 'pass'),
      );
      await loadedCompleter.future.timeout(Duration(seconds: 2));

      expect(userLoadedCalled, isTrue);
    });

    test('onError fires on HTTP error', () async {
      final errorCompleter = Completer<void>();
      var errorFired = false;

      client = ThingsboardClient(
        'http://localhost:8080',
        onError: (err) {
          errorFired = true;
          if (!errorCompleter.isCompleted) errorCompleter.complete();
        },
      );
      client.dio.httpClientAdapter = mockAdapter;

      // No handler for /api/devices — returns 404
      // Need JWT first so the interceptor proceeds
      final jwtToken = createTestJwt();
      final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');
      mockAdapter.onRoute('/api/auth/login', (req) {
        return ResponseBody.fromString(
          jsonEncode({'token': jwtToken, 'refreshToken': refreshToken}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });
      await client.login(
        LoginRequest(userName: 'user@test.com', password: 'pass'),
      );

      try {
        await client.get('/api/devices');
      } catch (_) {}
      await errorCompleter.future.timeout(Duration(seconds: 2));

      expect(errorFired, isTrue);
    });
  });

  group('API key', () {
    test('client with apiKey has isApiKeyAuth() == true', () {
      final apiKeyClient = ThingsboardClient(
        'http://localhost:8080',
        apiKey: 'my-api-key',
      );
      expect(apiKeyClient.isApiKeyAuth(), isTrue);
      expect(apiKeyClient.getJwtToken(), isNull);
    });

    test('client without apiKey has isApiKeyAuth() == false', () {
      expect(client.isApiKeyAuth(), isFalse);
    });
  });

  group('refresh failure', () {
    final jwt = createTestJwt();
    final refresh = createTestJwt(scope: 'REFRESH_TOKEN');

    setUp(() async {
      setMockAdapter(client, mockAdapter);
      await client.setUserFromJwtToken(jwt, refresh, false);
    });

    Future<void> expectRefreshFails() =>
        expectLater(client.refreshJwtToken(notify: false), throwsA(anything));

    void expectSessionKept() {
      expect(client.getJwtToken(), equals(jwt));
      expect(client.getRefreshToken(), equals(refresh));
      expect(client.isAuthenticated(), isTrue);
    }

    test('HTTP 401 clears the session', () async {
      mockAdapter.onRoute('/api/auth/token', rejectedRefreshTokenResponse);

      await expectRefreshFails();

      expect(client.getJwtToken(), isNull);
      expect(client.getRefreshToken(), isNull);
      expect(client.isAuthenticated(), isFalse);
    });

    test('connection error keeps the session', () async {
      mockAdapter.onRoute(
        '/api/auth/token',
        (req) => throw SocketException('offline'),
      );

      await expectRefreshFails();

      expectSessionKept();
    });

    test('timeout keeps the session', () async {
      mockAdapter.onRoute(
        '/api/auth/token',
        (req) => throw DioException.receiveTimeout(
          timeout: Duration(seconds: 15),
          requestOptions: req,
        ),
      );

      await expectRefreshFails();

      expectSessionKept();
    });

    test('HTTP 5xx keeps the session', () async {
      mockAdapter.onRoute(
        '/api/auth/token',
        (req) => ResponseBody.fromString('<html>Bad Gateway</html>', 502),
      );

      await expectRefreshFails();

      expectSessionKept();
    });

    test('HTTP 403 keeps the session', () async {
      mockAdapter.onRoute('/api/auth/token', (req) {
        return ResponseBody.fromString(
          jsonEncode({'status': 403, 'errorCode': 20, 'message': 'Forbidden'}),
          403,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      await expectRefreshFails();

      expectSessionKept();
    });

    test('a failed refresh is not reported through onError', () async {
      var errorCount = 0;
      client = ThingsboardClient(
        'http://localhost:8080',
        onError: (_) => errorCount++,
      );
      setMockAdapter(client, mockAdapter);
      await client.setUserFromJwtToken(jwt, refresh, false);
      mockAdapter.onRoute(
        '/api/auth/token',
        (req) => ResponseBody.fromString('', 502),
      );

      await expectRefreshFails();
      await Future.delayed(Duration(milliseconds: 50));

      expect(errorCount, equals(0));
    });

    test('the refresh request carries send and receive timeouts', () async {
      RequestOptions? refreshRequest;
      mockAdapter.onRoute('/api/auth/token', (req) {
        refreshRequest = req;
        return ResponseBody.fromString(
          jsonEncode({'token': createTestJwt(), 'refreshToken': refresh}),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      await client.refreshJwtToken(notify: false);

      expect(refreshRequest!.sendTimeout, equals(Duration(seconds: 15)));
      expect(refreshRequest!.receiveTimeout, equals(Duration(seconds: 15)));
    });
  });

  group('init', () {
    late InMemoryStorage storage;
    final expiredJwt = createTestJwt(expInSeconds: -3600);
    final refresh = createTestJwt(scope: 'REFRESH_TOKEN');

    setUp(() async {
      storage = InMemoryStorage();
      await storage.setItem('jwt_token', expiredJwt);
      await storage.setItem('refresh_token', refresh);
    });

    ThingsboardClient makeClient({
      UserLoadedCallback? onUserLoaded,
      ErrorCallback? onError,
    }) {
      final c = ThingsboardClient(
        'http://localhost:8080',
        storage: storage,
        onUserLoaded: onUserLoaded,
        onError: onError,
      );
      setMockAdapter(c, mockAdapter);
      return c;
    }

    ResponseBody refreshedTokens(String jwt) => ResponseBody.fromString(
      jsonEncode({'token': jwt, 'refreshToken': refresh}),
      200,
      headers: {
        'content-type': ['application/json'],
      },
    );

    test('refreshes an expired access token from storage', () async {
      final newJwt = createTestJwt(sub: 'refreshed');
      mockAdapter.onRoute('/api/auth/token', (req) => refreshedTokens(newJwt));
      client = makeClient();

      await client.init();

      expect(client.getJwtToken(), equals(newJwt));
      expect(await storage.getItem('jwt_token'), equals(newJwt));
    });

    test(
      'offline cold start keeps the stored session and restores the user',
      () async {
        var userLoaded = false;
        var errorCount = 0;
        mockAdapter.onRoute(
          '/api/auth/token',
          (req) => throw SocketException('offline'),
        );
        client = makeClient(
          onUserLoaded: () => userLoaded = true,
          onError: (_) => errorCount++,
        );

        await client.init();
        await Future.delayed(Duration(milliseconds: 50));

        expect(client.isAuthenticated(), isTrue);
        expect(client.isJwtTokenValid(), isFalse);
        expect(client.getRefreshToken(), equals(refresh));
        expect(await storage.getItem('jwt_token'), equals(expiredJwt));
        expect(await storage.getItem('refresh_token'), equals(refresh));
        expect(userLoaded, isTrue);
        expect(
          errorCount,
          equals(0),
          reason: 'A recovered cold start is not an error to report',
        );
        expect(
          mockAdapter.requestedPaths,
          equals(['/api/auth/token']),
          reason: 'No version check against a server known to be unreachable',
        );
      },
    );

    test('a session restored offline refreshes on the next request', () async {
      var online = false;
      final newJwt = createTestJwt(sub: 'refreshed');
      mockAdapter.onRoute('/api/auth/token', (req) {
        if (!online) throw SocketException('offline');
        return refreshedTokens(newJwt);
      });
      mockAdapter.onRoute('/api/devices', (req) {
        return ResponseBody.fromString(
          '[]',
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });
      client = makeClient();
      await client.init();

      online = true;
      final response = await client.get('/api/devices');

      expect(response.statusCode, equals(200));
      expect(client.getJwtToken(), equals(newJwt));
      expect(client.isJwtTokenValid(), isTrue);
    });

    test('rejected refresh token clears the session and throws', () async {
      mockAdapter.onRoute('/api/auth/token', rejectedRefreshTokenResponse);
      client = makeClient();

      await expectLater(client.init(), throwsA(isA<ThingsboardError>()));

      expect(client.isAuthenticated(), isFalse);
      expect(client.getRefreshToken(), isNull);
      expect(await storage.containsKey('refresh_token'), isFalse);
      // The 401 on the refresh call itself must not trigger another refresh.
      expect(
        mockAdapter.requestedPaths.where((p) => p == '/api/auth/token'),
        hasLength(1),
      );
    }, timeout: Timeout(Duration(seconds: 5)));

    test(
      'expired refresh token clears the session without calling the server',
      () async {
        await storage.setItem(
          'refresh_token',
          createTestJwt(scope: 'REFRESH_TOKEN', expInSeconds: -60),
        );
        client = makeClient();

        await client.init();

        expect(client.isAuthenticated(), isFalse);
        expect(mockAdapter.requestedPaths, isNot(contains('/api/auth/token')));
      },
    );
  });
}
