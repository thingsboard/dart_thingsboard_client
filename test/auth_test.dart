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
import 'package:thingsboard_client/src/model/login_request.dart';
import 'package:thingsboard_client/src/model/login_response.dart';
import 'package:thingsboard_client/src/model/authority_enum.dart';
import 'package:thingsboard_client/src/model/two_fa_provider_type.dart';
import 'package:thingsboard_client/src/error/thingsboard_error.dart';
import 'package:thingsboard_client/src/http/http_utils.dart';
import 'package:thingsboard_client/src/interceptor/http_interceptor.dart';
import 'package:thingsboard_client/src/storage/in_memory_storage.dart';

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
        Object? sent;
        mockAdapter.onRoute('/api/auth/login', (req) {
          sent = req.data is String ? jsonDecode(req.data) : req.data;
          return ResponseBody.fromString(
            jsonEncode({'token': jwtToken, 'refreshToken': refreshToken}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        final response = await client.login(
          LoginRequest(
            (b) => b
              ..username = 'user@test.com'
              ..password = 'pass',
          ),
        );

        expect(sent, equals({'username': 'user@test.com', 'password': 'pass'}));
        expect(response.token, equals(jwtToken));
        expect(client.getJwtToken(), equals(jwtToken));
        expect(client.isAuthenticated(), isTrue);
        expect(client.getAuthUser(), isNotNull);
        expect(client.getAuthUser()!.authority, equals(Authority.TENANT_ADMIN));
      },
    );

    test('login stores tokens in storage', () async {
      final storage = InMemoryStorage();
      client = ThingsboardClient('http://localhost:8080', storage: storage);
      client.dio.httpClientAdapter = mockAdapter;
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
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass',
        ),
      );

      expect(await storage.getItem('jwt_token'), equals(jwtToken));
      expect(await storage.getItem('refresh_token'), equals(refreshToken));
    });
  });

  group('MFA', () {
    Future<LoginResponse> loginWith(
      Map<String, dynamic> body, {
      void Function()? onMfaAuth,
      void Function()? onMfaForce,
    }) async {
      client = ThingsboardClient(
        'http://localhost:8080',
        onMfaAuth: onMfaAuth,
        onMfaForce: onMfaForce,
      );
      client.dio.httpClientAdapter = mockAdapter;
      mockAdapter.onRoute('/api/auth/login', (req) {
        return ResponseBody.fromString(
          jsonEncode(body),
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });
      return client.login(
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass',
        ),
      );
    }

    test(
      'an MFA login response without refreshToken decodes and triggers onMfaAuth',
      () async {
        var called = false;
        final token = createTestJwt(scope: 'PRE_VERIFICATION_TOKEN');
        final response = await loginWith({
          'token': token,
          'scope': 'PRE_VERIFICATION_TOKEN',
        }, onMfaAuth: () => called = true);
        await Future<void>.delayed(Duration.zero);
        expect(response.token, token);
        expect(response.refreshToken, isNull);
        expect(response.scope, Authority.PRE_VERIFICATION_TOKEN);
        expect(called, isTrue);
      },
    );

    test('MFA_CONFIGURATION_TOKEN scope triggers onMfaForce', () async {
      var forced = false;
      var authed = false;
      final response = await loginWith(
        {
          'token': createTestJwt(scope: 'MFA_CONFIGURATION_TOKEN'),
          'scope': 'MFA_CONFIGURATION_TOKEN',
        },
        onMfaForce: () => forced = true,
        onMfaAuth: () => authed = true,
      );
      await Future<void>.delayed(Duration.zero);
      expect(response.scope, Authority.MFA_CONFIGURATION_TOKEN);
      expect(forced, isTrue);
      expect(authed, isFalse);
    });

    test(
      'an unknown scope decodes to unknownDefaultOpenApi and does not trigger MFA callbacks',
      () async {
        var called = false;
        final response = await loginWith(
          {
            'token': createTestJwt(),
            'refreshToken': createTestJwt(scope: 'REFRESH_TOKEN'),
            'scope': 'SOMETHING_NEW',
          },
          onMfaAuth: () => called = true,
          onMfaForce: () => called = true,
        );
        await Future<void>.delayed(Duration.zero);
        expect(response.scope, Authority.unknownDefaultOpenApi);
        expect(called, isFalse);
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
          LoginRequest(
            (b) => b
              ..username = 'user@test.com'
              ..password = 'pass',
          ),
        );

        Object? sent;
        mockAdapter.onRoute('/api/auth/token', (req) {
          sent = req.data is String ? jsonDecode(req.data) : req.data;
          return ResponseBody.fromString(
            jsonEncode({'token': newJwt, 'refreshToken': newRefresh}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await client.refreshJwtToken(notify: false);

        expect(sent, equals({'refreshToken': initialRefresh}));
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
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass',
        ),
      );

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

      await Future.wait([
        client.refreshJwtToken(notify: false),
        client.refreshJwtToken(notify: false),
      ]);

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
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass',
        ),
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
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass',
        ),
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
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass',
        ),
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
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass',
        ),
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
      var errorCount = 0;
      client = makeClient(onError: (_) => errorCount++);

      await expectLater(client.init(), throwsA(isA<ThingsboardError>()));
      await Future.delayed(Duration(milliseconds: 50));

      expect(
        errorCount,
        0,
        reason: 'init() reports to its caller, not onError',
      );
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
        expect(await storage.containsKey('jwt_token'), isFalse);
        expect(await storage.containsKey('refresh_token'), isFalse);
        expect(mockAdapter.requestedPaths, isNot(contains('/api/auth/token')));
      },
    );
  });

  group('session-aware auth methods', () {
    final oldJwt = createTestJwt(sub: 'old');
    final oldRefresh = createTestJwt(sub: 'old', scope: 'REFRESH_TOKEN');
    final newJwt = createTestJwt(sub: 'new');
    final newRefresh = createTestJwt(sub: 'new', scope: 'REFRESH_TOKEN');

    ResponseBody jwtPairResponse(RequestOptions req) => ResponseBody.fromString(
      jsonEncode({'token': newJwt, 'refreshToken': newRefresh}),
      200,
      headers: {
        'content-type': ['application/json'],
      },
    );

    ResponseBody badRequest(RequestOptions req) => ResponseBody.fromString(
      jsonEncode({'status': 400, 'errorCode': 31, 'message': 'Invalid'}),
      400,
      headers: {
        'content-type': ['application/json'],
      },
    );

    late int userLoadedCount;
    late int mfaCount;
    late InMemoryStorage storage;

    setUp(() {
      userLoadedCount = 0;
      mfaCount = 0;
      storage = InMemoryStorage();
      client = ThingsboardClient(
        'http://localhost:8080',
        storage: storage,
        onUserLoaded: () => userLoadedCount++,
        onMfaAuth: () => mfaCount++,
        onMfaForce: () => mfaCount++,
      );
      setMockAdapter(client, mockAdapter);
    });

    group('changePassword', () {
      test(
        'posts both passwords and stores the new tokens without notifying',
        () async {
          await client.setUserFromJwtToken(oldJwt, oldRefresh, false);
          RequestOptions? request;
          mockAdapter.onRoute('/api/auth/changePassword', (req) {
            request = req;
            return jwtPairResponse(req);
          });

          await client.changePassword('old-pass', 'new-pass');
          await Future<void>.delayed(Duration.zero);

          expect(request!.method, 'POST');
          final body = request!.data is String
              ? jsonDecode(request!.data)
              : request!.data;
          expect(body, {
            'currentPassword': 'old-pass',
            'newPassword': 'new-pass',
          });
          expect(request!.headers['X-Authorization'], 'Bearer $oldJwt');
          expect(client.isAuthenticated(), isTrue);
          expect(client.getJwtToken(), newJwt);
          expect(client.getRefreshToken(), newRefresh);
          expect(client.getAuthUser()!.sub, 'new');
          expect(await storage.getItem('jwt_token'), newJwt);
          expect(userLoadedCount, 0);
        },
      );

      test(
        'throws ThingsboardError and keeps the session on failure',
        () async {
          await client.setUserFromJwtToken(oldJwt, oldRefresh, false);
          mockAdapter.onRoute('/api/auth/changePassword', badRequest);

          await expectLater(
            client.changePassword('old-pass', 'weak'),
            throwsA(
              isA<ThingsboardError>().having(
                (e) => e.errorCode,
                'errorCode',
                ThingsBoardErrorCode.badRequestParams,
              ),
            ),
          );

          expect(client.getJwtToken(), oldJwt);
          expect(client.getRefreshToken(), oldRefresh);
        },
      );

      test('passes the requestConfig to the interceptor', () async {
        await client.setUserFromJwtToken(oldJwt, oldRefresh, false);
        RequestOptions? request;
        mockAdapter.onRoute('/api/auth/changePassword', (req) {
          request = req;
          return jwtPairResponse(req);
        });

        await client.changePassword(
          'old-pass',
          'new-pass',
          requestConfig: RequestConfig(ignoreErrors: true),
        );

        expect(request!.extra['ignoreErrors'], isTrue);
      });
    });

    group('checkTwoFaVerificationCode', () {
      final preVerificationJwt = createTestJwt(
        sub: 'old',
        scope: 'PRE_VERIFICATION_TOKEN',
      );

      test(
        'posts the code as query parameters, stores the tokens and notifies',
        () async {
          await client.setUserFromJwtToken(preVerificationJwt, null, false);
          RequestOptions? request;
          mockAdapter.onRoute('/api/auth/2fa/verification/check', (req) {
            request = req;
            return jwtPairResponse(req);
          });

          final response = await client.checkTwoFaVerificationCode(
            TwoFaProviderType.TOTP,
            '123456',
          );
          await Future<void>.delayed(Duration.zero);

          expect(request!.method, 'POST');
          expect(request!.queryParameters, {
            'providerType': 'TOTP',
            'verificationCode': '123456',
          });
          expect(
            request!.headers['X-Authorization'],
            'Bearer $preVerificationJwt',
          );
          expect(response, isA<LoginResponse>());
          expect(response.token, newJwt);
          expect(response.refreshToken, newRefresh);
          expect(client.isAuthenticated(), isTrue);
          expect(client.isPreVerificationToken(), isFalse);
          expect(client.getJwtToken(), newJwt);
          expect(client.getRefreshToken(), newRefresh);
          expect(client.getAuthUser()!.sub, 'new');
          expect(userLoadedCount, 1);
          expect(mfaCount, 0);
        },
      );

      test(
        'throws ThingsboardError and keeps the session on failure',
        () async {
          await client.setUserFromJwtToken(preVerificationJwt, null, false);
          mockAdapter.onRoute('/api/auth/2fa/verification/check', badRequest);

          await expectLater(
            client.checkTwoFaVerificationCode(TwoFaProviderType.EMAIL, '000'),
            throwsA(isA<ThingsboardError>()),
          );

          expect(client.getJwtToken(), preVerificationJwt);
          expect(client.isPreVerificationToken(), isTrue);
        },
      );

      test('passes the requestConfig to the interceptor', () async {
        await client.setUserFromJwtToken(preVerificationJwt, null, false);
        RequestOptions? request;
        mockAdapter.onRoute('/api/auth/2fa/verification/check', (req) {
          request = req;
          return jwtPairResponse(req);
        });

        await client.checkTwoFaVerificationCode(
          TwoFaProviderType.TOTP,
          '123456',
          requestConfig: RequestConfig(ignoreErrors: true, ignoreLoading: true),
        );

        expect(request!.extra['ignoreErrors'], isTrue);
        expect(request!.extra['ignoreLoading'], isTrue);
      });
    });

    group('getLoginDataBySecretKey', () {
      setUp(() {
        ThingsboardClientBase.qrLoginAdapterFactoryForTesting = () =>
            mockAdapter;
      });

      tearDown(() {
        ThingsboardClientBase.qrLoginAdapterFactoryForTesting = null;
      });

      test('sets connect and receive timeouts', () async {
        RequestOptions? request;
        mockAdapter.onRoute('/api/noauth/qr/secret-key', (req) {
          request = req;
          return jwtPairResponse(req);
        });

        await client.getLoginDataBySecretKey(
          host: 'https://qr.example.com',
          key: 'secret-key',
        );

        expect(request!.connectTimeout, const Duration(seconds: 20));
        expect(request!.receiveTimeout, const Duration(seconds: 20));
      });

      test('does not use the HTTP adapter of the client', () async {
        final clientAdapter = MockHttpClientAdapter();
        setMockAdapter(client, clientAdapter);
        mockAdapter.onRoute('/api/noauth/qr/secret-key', jwtPairResponse);

        await client.getLoginDataBySecretKey(
          host: 'https://qr.example.com',
          key: 'secret-key',
        );

        expect(clientAdapter.requestedPaths, isEmpty);
        expect(mockAdapter.requestedPaths, ['/api/noauth/qr/secret-key']);
      });

      test(
        'gets the tokens from the given host without the client session',
        () async {
          await client.setUserFromJwtToken(oldJwt, oldRefresh, false);
          RequestOptions? request;
          mockAdapter.onRoute('/api/noauth/qr/secret-key', (req) {
            request = req;
            return jwtPairResponse(req);
          });

          final response = await client.getLoginDataBySecretKey(
            host: 'https://qr.example.com:9090',
            key: 'secret-key',
          );

          expect(request!.method, 'GET');
          expect(
            request!.uri.toString(),
            'https://qr.example.com:9090/api/noauth/qr/secret-key',
          );
          expect(request!.headers.containsKey('X-Authorization'), isFalse);
          expect(response.token, newJwt);
          expect(response.refreshToken, newRefresh);
          // The caller decides whether to use the tokens.
          expect(client.getJwtToken(), oldJwt);
          expect(client.getRefreshToken(), oldRefresh);
          expect(userLoadedCount, 0);
        },
      );

      test('throws ThingsboardError for an unknown key', () async {
        mockAdapter.onRoute('/api/noauth/qr/expired', badRequest);

        await expectLater(
          client.getLoginDataBySecretKey(
            host: 'http://localhost:8080',
            key: 'expired',
          ),
          throwsA(
            isA<ThingsboardError>().having((e) => e.status, 'status', 400),
          ),
        );
      });
    });
  });
}
