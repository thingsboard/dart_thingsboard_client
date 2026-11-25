// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const _mask = '***';

const _authHeaders = {'authorization', 'x-authorization'};

final _qrSecretPath = RegExp(r'(/api/noauth/qr/)[^/?#]+');

final _authScheme = RegExp(r'^(\S+\s+)\S');

/// A [PrettyDioLogger] that logs requests and responses with credentials
/// masked: the `Authorization` and `X-Authorization` header values, the secret
/// of the QR login path, and the values of query parameters and JSON body
/// fields named `*password`, `*token`, `*secret` or `credentialsValue`. Only
/// the logged copy is masked; the request and response are passed on as is.
class RedactingDioLogger extends PrettyDioLogger {
  RedactingDioLogger()
    : super(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      );

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // The shared extra map keeps the start time that super stores in it.
    super.onRequest(
      _redactOptions(options, extra: options.extra),
      RequestInterceptorHandler(),
    );
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(_redactResponse(response), ResponseInterceptorHandler());
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final response = err.response;
    super.onError(
      err.copyWith(
        requestOptions: _redactOptions(err.requestOptions),
        response: response == null ? null : _redactResponse(response),
      ),
      _DiscardingErrorHandler(),
    );
    handler.next(err);
  }
}

/// Ignores the error passed on by super, which would otherwise be unhandled.
class _DiscardingErrorHandler extends ErrorInterceptorHandler {
  _DiscardingErrorHandler() {
    future.ignore();
  }
}

RequestOptions _redactOptions(
  RequestOptions options, {
  Map<String, dynamic>? extra,
}) => options.copyWith(
  path: options.path.replaceAllMapped(_qrSecretPath, (m) => '${m[1]}$_mask'),
  queryParameters: _redactMap(options.queryParameters),
  headers: {
    for (final MapEntry(:key, :value) in options.headers.entries)
      key: _authHeaders.contains(key.toLowerCase())
          ? _redactAuthHeader(value)
          : value,
  },
  data: _redactData(options.data),
  extra: extra,
);

Response _redactResponse(Response response) => Response(
  data: _redactData(response.data),
  requestOptions: _redactOptions(response.requestOptions),
  statusCode: response.statusCode,
  statusMessage: response.statusMessage,
  headers: response.headers,
  extra: response.extra,
);

/// Keeps the scheme of the header value: `Bearer ***`.
String _redactAuthHeader(Object? value) {
  final scheme = value is String
      ? _authScheme.firstMatch(value)?.group(1)
      : null;
  return '${scheme ?? ''}$_mask';
}

bool _isSecretKey(Object? key) {
  if (key is! String) return false;
  final k = key.toLowerCase();
  return k.endsWith('password') ||
      k.endsWith('token') ||
      k.endsWith('secret') ||
      k == 'credentialsvalue';
}

Object? _redactData(Object? data) {
  if (data is String) {
    final Object? json;
    try {
      json = jsonDecode(data);
    } on FormatException {
      return data;
    }
    return json is Map || json is List ? jsonEncode(_redactData(json)) : data;
  }
  if (data is Map) return _redactMap(data);
  if (data is List) return data.map(_redactData).toList();
  return data;
}

Map<K, dynamic> _redactMap<K>(Map<K, dynamic> map) => {
  for (final MapEntry(:key, :value) in map.entries)
    key: _isSecretKey(key) ? _mask : _redactData(value),
};
