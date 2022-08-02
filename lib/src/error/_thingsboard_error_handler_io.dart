import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

import 'thingsboard_error.dart';

int httpStatusToThingsboardErrorCode(int status) {
  switch (status) {
    case HttpStatus.unauthorized:
      return ThingsBoardErrorCode.authentication;
    case HttpStatus.forbidden:
      return ThingsBoardErrorCode.permissionDenied;
    case HttpStatus.badRequest:
      return ThingsBoardErrorCode.badRequestParams;
    case HttpStatus.notFound:
      return ThingsBoardErrorCode.itemNotFound;
    case HttpStatus.tooManyRequests:
      return ThingsBoardErrorCode.tooManyRequests;
    case HttpStatus.internalServerError:
      return ThingsBoardErrorCode.general;
    default:
      return ThingsBoardErrorCode.general;
  }
}

ThingsboardError toThingsboardError(error, [StackTrace? stackTrace]) {
  ThingsboardError? tbError;
  if (error is DioError) {
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
    } else if (error.error != null) {
      if (error.error is ThingsboardError) {
        tbError = error.error;
      } else if (error.error is SocketException) {
        tbError = ThingsboardError(
            error: error,
            message: 'Unable to connect',
            errorCode: ThingsBoardErrorCode.general);
      } else {
        tbError = ThingsboardError(
            error: error,
            message: error.error.toString(),
            errorCode: ThingsBoardErrorCode.general);
      }
    }
    if (tbError == null &&
        error.response != null &&
        error.response!.statusCode != null) {
      var httpStatus = error.response!.statusCode!;
      var message = (httpStatus.toString() +
          ': ' +
          (error.response!.statusMessage != null
              ? error.response!.statusMessage!
              : 'Unknown'));
      tbError = ThingsboardError(
          error: error,
          message: message,
          errorCode: httpStatusToThingsboardErrorCode(httpStatus),
          status: httpStatus);
    }
  } else if (error is ThingsboardError) {
    tbError = error;
  }
  tbError ??= ThingsboardError(
      error: error,
      message: error.toString(),
      errorCode: ThingsBoardErrorCode.general);

  StackTrace? errorStackTrace;
  if (tbError.error is Error) {
    errorStackTrace = tbError.error.stackTrace;
  }

  tbError.stackTrace = stackTrace ??
      tbError.getStackTrace() ??
      errorStackTrace ??
      StackTrace.current;

  return tbError;
}
