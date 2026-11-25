// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';

import 'package:dio/dio.dart';

import 'thingsboard_error.dart';

ThingsBoardErrorCode httpStatusToThingsboardErrorCode(int status) {
  return switch (status) {
    401 => ThingsBoardErrorCode.authentication,
    403 => ThingsBoardErrorCode.permissionDenied,
    400 => ThingsBoardErrorCode.badRequestParams,
    404 => ThingsBoardErrorCode.itemNotFound,
    429 => ThingsBoardErrorCode.tooManyRequests,
    500 => ThingsBoardErrorCode.general,
    int() => ThingsBoardErrorCode.general,
  };
}

/// Shared body of the platform `toThingsboardError`s; [isSocketException] is
/// the only part that differs (the web has no `SocketException`).
ThingsboardError convertToThingsboardError(
  Object error,
  StackTrace? stackTrace, {
  required bool Function(Object? error) isSocketException,
}) {
  ThingsboardError? tbError;
  if (error is DioException) {
    if (error.response != null && error.response!.data != null) {
      var data = error.response!.data;
      if (data is ThingsboardError) {
        tbError = data;
      } else if (data is Map<String, dynamic>) {
        tbError = ThingsboardError.fromJson(data);
      } else if (data is String) {
        try {
          tbError = ThingsboardError.fromJson(jsonDecode(data));
        } catch (_) {}
      }
    } else if (_isConnectionFailure(error)) {
      tbError = ThingsboardError(
        error: error,
        message: 'Unable to connect',
        errorCode: ThingsBoardErrorCode.general,
      );
    } else if (error.error != null) {
      if (error.error is ThingsboardError) {
        tbError = error.error as ThingsboardError;
      } else if (isSocketException(error.error)) {
        tbError = ThingsboardError(
          error: error,
          message: 'Unable to connect',
          errorCode: ThingsBoardErrorCode.general,
        );
      } else {
        tbError = ThingsboardError(
          error: error,
          message: error.error.toString(),
          errorCode: ThingsBoardErrorCode.general,
        );
      }
    }
    if (tbError == null &&
        error.response != null &&
        error.response!.statusCode != null) {
      var httpStatus = error.response!.statusCode!;
      var message =
          '$httpStatus: ${error.response!.statusMessage ?? 'Unknown'}';
      tbError = ThingsboardError(
        error: error,
        message: message,
        errorCode: httpStatusToThingsboardErrorCode(httpStatus),
        status: httpStatus,
      );
    }
  } else if (error is ThingsboardError) {
    tbError = error;
  }
  if (tbError != null && tbError.errorCode == null && tbError.status != null) {
    tbError.errorCode = httpStatusToThingsboardErrorCode(tbError.status!);
  }
  tbError ??= ThingsboardError(
    error: error,
    message: error.toString(),
    errorCode: ThingsBoardErrorCode.general,
  );

  StackTrace? errorStackTrace;
  if (tbError.error is Error) {
    errorStackTrace = tbError.error.stackTrace;
  }

  tbError.stackTrace =
      stackTrace ??
      tbError.getStackTrace() ??
      errorStackTrace ??
      StackTrace.current;

  return tbError;
}

// A connect timeout carries no inner error (dio raises it via Future.timeout),
// so it is only recognisable by its type.
bool _isConnectionFailure(DioException error) =>
    error.type == DioExceptionType.connectionTimeout ||
    error.type == DioExceptionType.connectionError;
