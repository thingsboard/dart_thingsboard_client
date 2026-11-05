// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:dio/dio.dart';

import 'thingsboard_error.dart';

/// The [ThingsboardError] behind a [DioException] thrown by a generated API
/// call.
extension ThingsboardDioException on DioException {
  /// [DioException.error] when the client's interceptor set it, otherwise this
  /// exception mapped with [toThingsboardError] (for example a deserialization
  /// failure).
  ThingsboardError get thingsboardError {
    final inner = error;
    return inner is ThingsboardError ? inner : toThingsboardError(this);
  }
}

/// Awaits [call] and returns `null` instead of throwing when the entity is not
/// found (HTTP 404, [ThingsBoardErrorCode.itemNotFound]).
///
/// Works for generated API calls, which throw [DioException], and for facade
/// calls such as `ThingsboardClient.get`, which throw [ThingsboardError]. Any
/// other error is rethrown unchanged.
///
/// ```dart
/// final device = (await nullIfNotFound(
///   () => tbClient.getDeviceControllerApi().getDeviceById(deviceId: id),
/// ))?.data;
/// ```
///
/// The 404 still reaches the client's `onError` callback, because the
/// interceptor reports it before [call] fails. To keep it from `onError`, pass
/// `extra: InterceptorConfig(ignoreErrors: true).toExtra()` to the generated
/// call.
Future<T?> nullIfNotFound<T>(Future<T> Function() call) async {
  try {
    return await call();
  } on DioException catch (e) {
    if (_isNotFound(e.thingsboardError)) {
      return null;
    }
    rethrow;
  } on ThingsboardError catch (e) {
    if (_isNotFound(e)) {
      return null;
    }
    rethrow;
  }
}

bool _isNotFound(ThingsboardError error) =>
    error.errorCode == ThingsBoardErrorCode.itemNotFound;
