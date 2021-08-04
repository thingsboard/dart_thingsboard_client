import 'dart:io';

abstract class ThingsBoardErrorCode {
  static const int general = 2;
  static const int authentication = 10;
  static const int jwtTokenExpired = 11;
  static const int tenantTrialExpired = 12;
  static const int credentialsExpired = 15;
  static const int permissionDenied = 20;
  static const int invalidArguments = 30;
  static const int badRequestParams = 31;
  static const int itemNotFound = 32;
  static const int tooManyRequests = 33;
  static const int tooManyUpdates = 34;
}

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

class ThingsboardError implements Exception {
  bool? refreshTokenPending;
  String? message;
  int? errorCode;
  int? status;
  dynamic error;

  ThingsboardError(
      {this.message,
      this.errorCode,
      this.status,
      this.refreshTokenPending,
      this.error});

  ThingsboardError.fromJson(Map<String, dynamic> json)
      : message = json['message'],
        errorCode = json['errorCode'],
        status = json['status'];

  StackTrace? _stackTrace;

  set stackTrace(StackTrace? stack) => _stackTrace = stack;

  StackTrace? getStackTrace() => _stackTrace;

  @override
  String toString() {
    var msg =
        'ThingsboardError: message: [$message], errorCode: $errorCode, status: $status';
    if (_stackTrace != null) {
      msg += '\n$_stackTrace';
    }
    return msg;
  }
}
