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
import 'package:thingsboard_client/src/thingsboard_client.dart';
import 'package:thingsboard_client/src/model/login_request.dart';
import 'package:thingsboard_client/src/http/http_utils.dart';
import 'package:thingsboard_client/src/interceptor/http_interceptor.dart';
import 'package:thingsboard_client/src/error/thingsboard_error.dart';

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

String createExpiredJwt({String scope = 'TENANT_ADMIN'}) {
  final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
  final payload = base64Url.encode(
    utf8.encode(
      jsonEncode({
        'sub': 'user-id',
        'scopes': [scope],
        'exp': DateTime.now().millisecondsSinceEpoch ~/ 1000 - 3600,
        'iss': 'test',
        'iat': DateTime.now().millisecondsSinceEpoch ~/ 1000 - 7200,
        'firstName': 'Test',
        'lastName': 'User',
        'enabled': true,
        'isPublic': false,
        'tenantId': 'tenant-id',
      }),
    ),
  );
  return '$header.$payload.fake-signature';
}

class MockHttpClientAdapter implements HttpClientAdapter {
  final Map<String, List<ResponseBody Function(RequestOptions)>> _handlers = {};
  final List<String> requestedPaths = [];
  final List<Map<String, dynamic>> requestedHeaders = [];

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
    requestedHeaders.add(Map<String, dynamic>.from(options.headers));
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
  late MockHttpClientAdapter mockAdapter;
  late ThingsboardClient client;

  setUp(() {
    mockAdapter = MockHttpClientAdapter();
  });

  Future<void> loginClient({String? jwtToken, String? refreshToken}) async {
    jwtToken ??= createTestJwt();
    refreshToken ??= createTestJwt(scope: 'REFRESH_TOKEN');
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
    mockAdapter.requestedPaths.clear();
    mockAdapter.requestedHeaders.clear();
  }

  group('auth header', () {
    setUp(() {
      client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
    });

    test('adds X-Authorization: Bearer <token> to /api/ requests', () async {
      final jwtToken = createTestJwt();
      await loginClient(jwtToken: jwtToken);

      mockAdapter.onRoute('/api/devices', (req) {
        return ResponseBody.fromString(
          '[]',
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      await client.get('/api/devices');

      expect(mockAdapter.requestedHeaders, isNotEmpty);
      final headers = mockAdapter.requestedHeaders.last;
      expect(headers['X-Authorization'], equals('Bearer $jwtToken'));
    });

    test('does NOT add auth header for non-/api/ paths', () async {
      await loginClient();

      mockAdapter.onRoute('/health', (req) {
        return ResponseBody.fromString('ok', 200);
      });

      await client.get('/health');

      final headers = mockAdapter.requestedHeaders.last;
      expect(headers['X-Authorization'], isNull);
    });
  });

  group('no auth on login path', () {
    setUp(() {
      client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
    });

    test('does NOT inject auth header for /api/auth/login', () async {
      String? capturedAuthHeader;
      mockAdapter.onRoute('/api/auth/login', (req) {
        capturedAuthHeader = req.headers['X-Authorization'];
        return ResponseBody.fromString(
          jsonEncode({
            'token': createTestJwt(),
            'refreshToken': createTestJwt(scope: 'REFRESH_TOKEN'),
          }),
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

      expect(capturedAuthHeader, isNull);
    });

    test('does NOT inject auth header for /api/noauth/ paths', () async {
      await loginClient();
      mockAdapter.onRoute('/api/noauth/resetPasswordByEmail', (req) {
        return ResponseBody.fromString('', 200);
      });

      await client.post(
        '/api/noauth/resetPasswordByEmail',
        data: jsonEncode({'email': 'test@test.com'}),
      );

      expect(mockAdapter.requestedPaths, ['/api/noauth/resetPasswordByEmail']);
      expect(mockAdapter.requestedHeaders.single['X-Authorization'], isNull);
    });
  });

  group('jwt expired retry', () {
    setUp(() {
      client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
    });

    test(
      '401 with jwtTokenExpired triggers refresh then retries original request',
      () async {
        await loginClient();

        final newJwt = createTestJwt(sub: 'user-refreshed');
        final newRefresh = createTestJwt(
          scope: 'REFRESH_TOKEN',
          sub: 'refreshed',
        );
        var devicesCallCount = 0;

        mockAdapter.onRoute('/api/auth/token', (req) {
          return ResponseBody.fromString(
            jsonEncode({'token': newJwt, 'refreshToken': newRefresh}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        mockAdapter.onRoute('/api/devices', (req) {
          devicesCallCount++;
          return ResponseBody.fromString(
            jsonEncode({
              'errorCode': 11,
              'message': 'JWT expired',
              'status': 401,
            }),
            401,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });
        mockAdapter.onRoute('/api/devices', (req) {
          devicesCallCount++;
          return ResponseBody.fromString(
            '[]',
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        final response = await client.get(
          '/api/devices',
          options: defaultHttpOptions(resendRequest: true),
        );

        expect(response.statusCode, equals(200));
        expect(devicesCallCount, equals(2));
        expect(client.getJwtToken(), equals(newJwt));
      },
    );
  });

  group('429 retry', () {
    setUp(() {
      client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
    });

    test('429 retries request after delay when resendRequest=true', () async {
      await loginClient();
      var callCount = 0;

      mockAdapter.onRoute('/api/devices', (req) {
        callCount++;
        return ResponseBody.fromString('', 429);
      });
      mockAdapter.onRoute('/api/devices', (req) {
        callCount++;
        return ResponseBody.fromString(
          '[]',
          200,
          headers: {
            'content-type': ['application/json'],
          },
        );
      });

      final response = await client.get(
        '/api/devices',
        options: defaultHttpOptions(resendRequest: true),
      );

      expect(response.statusCode, equals(200));
      expect(callCount, equals(2));
    }, timeout: Timeout(Duration(seconds: 10)));
  });

  group('ignoreLoading', () {
    test(
      'request with ignoreLoading=true does NOT fire load callbacks',
      () async {
        var loadStartCount = 0;
        var loadFinishCount = 0;

        client = ThingsboardClient('http://localhost:8080');
        setMockAdapter(client, mockAdapter);

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

        final callbackClient = ThingsboardClient(
          'http://localhost:8080',
          onLoadStarted: () => loadStartCount++,
          onLoadFinished: () => loadFinishCount++,
        );
        setMockAdapter(callbackClient, mockAdapter);
        await callbackClient.setUserFromJwtToken(jwtToken, refreshToken, false);

        mockAdapter.onRoute('/api/devices', (req) {
          return ResponseBody.fromString(
            '[]',
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        await callbackClient.get(
          '/api/devices',
          options: defaultHttpOptions(ignoreLoading: true),
        );
        await Future.delayed(Duration(milliseconds: 50));

        expect(loadStartCount, equals(0));
        expect(loadFinishCount, equals(0));
      },
    );
  });

  group('internal Dio', () {
    setUp(() {
      client = ThingsboardClient('http://localhost:8080');
      setMockAdapter(client, mockAdapter);
    });

    test(
      'refresh token call goes through internal Dio (no auth header loop)',
      () async {
        await loginClient();
        final internalAdapter = MockHttpClientAdapter();
        client.dio.interceptors
                .whereType<HttpInterceptor>()
                .single
                .internalDio
                .httpClientAdapter =
            internalAdapter;

        final newJwt = createTestJwt(sub: 'refreshed');
        final newRefresh = createTestJwt(scope: 'REFRESH_TOKEN');

        internalAdapter.onRoute('/api/auth/token', (req) {
          return ResponseBody.fromString(
            jsonEncode({'token': newJwt, 'refreshToken': newRefresh}),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
        });

        mockAdapter.onRoute('/api/devices', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'errorCode': 11,
              'message': 'JWT expired',
              'status': 401,
            }),
            401,
            headers: {
              'content-type': ['application/json'],
            },
          );
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

        await client.get('/api/devices');

        expect(internalAdapter.requestedPaths, ['/api/auth/token']);
        expect(mockAdapter.requestedPaths, isNot(contains('/api/auth/token')));
      },
    );
  });

  group('timeouts', () {
    test('client Dio has a connect timeout that the refresh Dio mirrors', () {
      client = ThingsboardClient('http://localhost:8080');
      final interceptor = client.dio.interceptors
          .whereType<HttpInterceptor>()
          .single;

      expect(client.dio.options.connectTimeout, equals(Duration(seconds: 20)));
      expect(
        interceptor.internalDio.options.connectTimeout,
        equals(client.dio.options.connectTimeout),
      );
    });
  });

  group('refresh failure on retry', () {
    final expiredJwt = createExpiredJwt();
    final refresh = createTestJwt(scope: 'REFRESH_TOKEN');
    var errorCount = 0;
    var loadStartCount = 0;
    var loadFinishCount = 0;

    setUp(() async {
      errorCount = 0;
      loadStartCount = 0;
      loadFinishCount = 0;
      client = ThingsboardClient(
        'http://localhost:8080',
        onError: (_) => errorCount++,
        onLoadStarted: () => loadStartCount++,
        onLoadFinished: () => loadFinishCount++,
      );
      setMockAdapter(client, mockAdapter);
      await client.setUserFromJwtToken(expiredJwt, refresh, false);
    });

    test(
      'connection error keeps the session and reports the failure once',
      () async {
        mockAdapter.onRoute(
          '/api/auth/token',
          (req) => throw SocketException('offline'),
        );

        await expectLater(
          client.get('/api/devices'),
          throwsA(isA<ThingsboardError>()),
        );
        await Future.delayed(Duration(milliseconds: 50));

        expect(client.isAuthenticated(), isTrue);
        expect(client.getRefreshToken(), equals(refresh));
        expect(errorCount, equals(1));
        expect(mockAdapter.requestedPaths, equals(['/api/auth/token']));
        // The load counter stays balanced even though the refresh failed: the
        // original request's load-start is matched by the _finishLoading in
        // _refreshTokenAndRetry's catch, so a failed refresh never leaks a
        // stuck spinner.
        expect(loadStartCount, equals(1));
        expect(loadFinishCount, equals(1));
      },
    );

    test('HTTP 401 clears the session', () async {
      mockAdapter.onRoute('/api/auth/token', (req) {
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
      });

      await expectLater(
        client.get('/api/devices'),
        throwsA(isA<ThingsboardError>()),
      );

      expect(client.isAuthenticated(), isFalse);
      expect(client.getJwtToken(), isNull);
      expect(client.getRefreshToken(), isNull);
    });

    test('ignoreErrors suppresses onError for a failed refresh', () async {
      mockAdapter.onRoute(
        '/api/auth/token',
        (req) => throw SocketException('offline'),
      );

      await expectLater(
        client.get(
          '/api/devices',
          options: defaultHttpOptions(ignoreErrors: true),
        ),
        throwsA(isA<ThingsboardError>()),
      );
      await Future.delayed(Duration(milliseconds: 50));

      expect(errorCount, equals(0));
    });
  });

  group('load callbacks with token refresh', () {
    test(
      'refresh through the client Dio leaves the load counter balanced',
      () async {
        var loadStartCount = 0;
        var loadFinishCount = 0;
        client = ThingsboardClient(
          'http://localhost:8080',
          onLoadStarted: () => loadStartCount++,
          onLoadFinished: () => loadFinishCount++,
        );
        setMockAdapter(client, mockAdapter);
        await client.setUserFromJwtToken(
          createExpiredJwt(),
          createTestJwt(scope: 'REFRESH_TOKEN'),
          false,
        );
        mockAdapter.onRoute('/api/auth/token', (req) {
          return ResponseBody.fromString(
            jsonEncode({
              'token': createTestJwt(),
              'refreshToken': createTestJwt(scope: 'REFRESH_TOKEN'),
            }),
            200,
            headers: {
              'content-type': ['application/json'],
            },
          );
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

        await client.refreshJwtToken(notify: false);
        await Future.delayed(Duration(milliseconds: 50));

        expect(loadStartCount, equals(0));
        expect(loadFinishCount, equals(0));

        await client.get('/api/devices');
        await Future.delayed(Duration(milliseconds: 50));

        expect(loadStartCount, equals(1));
        expect(loadFinishCount, equals(1));
      },
    );
  });
}
