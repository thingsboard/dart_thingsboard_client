// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:thingsboard_client/src/interceptor/http_interceptor.dart';
import 'package:thingsboard_client/src/thingsboard_client.dart';

String createTestJwt({
  String sub = 'user-id',
  String scope = 'TENANT_ADMIN',
  int expInSeconds = 3600,
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
        'tenantId': 'tenant-id',
      }),
    ),
  );
  return '$header.$payload.fake-signature';
}

String createExpiredJwt() {
  final header = base64Url.encode(utf8.encode('{"alg":"HS256","typ":"JWT"}'));
  final payload = base64Url.encode(
    utf8.encode(
      jsonEncode({
        'sub': 'user-id',
        'scopes': ['TENANT_ADMIN'],
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
  final Map<String, List<FutureOr<ResponseBody> Function(RequestOptions)>>
  _handlers = {};
  final List<String> requestedPaths = [];
  final List<Map<String, dynamic>> requestedHeaders = [];

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
    requestedHeaders.add(Map<String, dynamic>.from(options.headers));
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
