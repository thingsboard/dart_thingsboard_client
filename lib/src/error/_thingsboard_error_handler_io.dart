import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

import 'thingsboard_error.dart';

ThingsBoardErrorCode httpStatusToThingsboardErrorCode(int status) {
 return  switch (status) {
    HttpStatus.unauthorized => ThingsBoardErrorCode.authentication,
    HttpStatus.forbidden => ThingsBoardErrorCode.permissionDenied,
    HttpStatus.badRequest => ThingsBoardErrorCode.badRequestParams,
    HttpStatus.notFound => ThingsBoardErrorCode.itemNotFound,
    HttpStatus.tooManyRequests => ThingsBoardErrorCode.tooManyRequests,
    HttpStatus.internalServerError => ThingsBoardErrorCode.general,
    int() => ThingsBoardErrorCode.general,
  };
}

ThingsboardError toThingsboardError(error, [StackTrace? stackTrace]) {
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
    } else if (error.error != null) {
      if (error.error is ThingsboardError) {
        tbError = error.error as ThingsboardError;
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
  if (tbError != null && tbError.errorCode == null && tbError.status != null) {
    tbError.errorCode = httpStatusToThingsboardErrorCode(tbError.status!);
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
