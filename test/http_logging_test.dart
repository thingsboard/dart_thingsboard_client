// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:thingsboard_client/src/model/login_request.dart';
import 'package:thingsboard_client/src/thingsboard_client.dart';
import 'package:thingsboard_client/src/thingsboard_client_base.dart';

import 'auth_test.dart' show MockHttpClientAdapter, createTestJwt;

ResponseBody _json(Object body, [int status = 200]) => ResponseBody.fromString(
  jsonEncode(body),
  status,
  headers: {
    'content-type': ['application/json'],
  },
);

/// The start of every JWT: the base64 of `{"`.
const _jwtStart = 'eyJ';

Future<String> _capturePrints(Future<void> Function() body) async {
  final lines = <String>[];
  await runZoned(
    body,
    zoneSpecification: ZoneSpecification(
      print: (_, _, _, line) => lines.add(line),
    ),
  );
  return lines.join('\n');
}

void main() {
  final jwt = createTestJwt();
  final refreshToken = createTestJwt(scope: 'REFRESH_TOKEN');
  late MockHttpClientAdapter adapter;
  late ThingsboardClient client;

  setUp(() {
    adapter = MockHttpClientAdapter();
    client = ThingsboardClient('http://localhost:8080', debugMode: true);
    client.dio.httpClientAdapter = adapter;
  });

  test('debug logging masks the password and the tokens of a login', () async {
    adapter.onRoute(
      '/api/auth/login',
      (_) => _json({'token': jwt, 'refreshToken': refreshToken}),
    );

    final log = await _capturePrints(
      () => client.login(
        LoginRequest(
          (b) => b
            ..username = 'user@test.com'
            ..password = 'pass-1234',
        ),
      ),
    );

    expect(log, contains('/api/auth/login'));
    expect(log, contains('user@test.com'));
    expect(log, isNot(contains('pass-1234')));
    expect(log, isNot(contains(_jwtStart)));
  });

  test('debug logging masks the passwords of a password change', () async {
    await client.setUserFromJwtToken(jwt, refreshToken, false);
    adapter.onRoute(
      '/api/auth/changePassword',
      (_) => _json({'token': jwt, 'refreshToken': refreshToken}),
    );

    final log = await _capturePrints(
      () => client.changePassword('old-pass-1234', 'new-pass-5678'),
    );

    expect(log, contains('/api/auth/changePassword'));
    expect(log, isNot(contains('old-pass-1234')));
    expect(log, isNot(contains('new-pass-5678')));
  });

  test('debug logging masks the authorization header value', () async {
    await client.setUserFromJwtToken(jwt, refreshToken, false);
    adapter.onRoute('/api/tenant/info', (_) => _json({'name': 'tenant'}));

    final log = await _capturePrints(
      () => client.dio.get(
        '/api/tenant/info',
        options: Options(headers: {'X-Authorization': 'Bearer $jwt'}),
      ),
    );

    expect(log, contains('Bearer ***'));
    expect(log, isNot(contains(_jwtStart)));
  });

  group('QR login logging', () {
    setUp(() {
      ThingsboardClientBase.qrLoginAdapterFactoryForTesting = () => adapter;
    });

    tearDown(() {
      ThingsboardClientBase.qrLoginAdapterFactoryForTesting = null;
    });

    test('masks the secret and the tokens', () async {
      adapter.onRoute(
        '/api/noauth/qr/qr-secret-1234',
        (_) => _json({'token': jwt, 'refreshToken': refreshToken}),
      );

      final log = await _capturePrints(
        () => client.getLoginDataBySecretKey(
          host: 'https://qr.example.com',
          key: 'qr-secret-1234',
          logging: true,
        ),
      );

      expect(log, contains('/api/noauth/qr/***'));
      expect(log, isNot(contains('qr-secret-1234')));
      expect(log, isNot(contains(_jwtStart)));
    });

    test('masks the secret of a failed request', () async {
      adapter.onRoute(
        '/api/noauth/qr/qr-secret-1234',
        (_) => _json({'status': 400, 'message': 'Invalid secret'}, 400),
      );

      final log = await _capturePrints(
        () => expectLater(
          client.getLoginDataBySecretKey(
            host: 'https://qr.example.com',
            key: 'qr-secret-1234',
            logging: true,
          ),
          throwsA(anything),
        ),
      );

      expect(log, contains('Invalid secret'));
      expect(log, isNot(contains('qr-secret-1234')));
    });
  });
}
