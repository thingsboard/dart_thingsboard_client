export '_thingsboard_error_handler.dart'
    if (dart.library.io) '_thingsboard_error_handler_io.dart'
    if (dart.library.html) '_thingsboard_error_handler_html.dart';

enum ThingsBoardErrorCode {
  general(2),
  authentication(10),
  jwtTokenExpired(11),
  tenantTrialExpired(12),
  credentialsExpired(15),
  permissionDenied(20),
  invalidArguments(30),
  badRequestParams(31),
  itemNotFound(32),
  tooManyRequests(33),
  tooManyUpdates(34),
  versionConflict(35),
  subscriptionViolation(35),
  passwordViolation(45),
  database(46);

  const ThingsBoardErrorCode(this.value);
  final int value;
  static ThingsBoardErrorCode fromInt(int value) => ThingsBoardErrorCode.values.firstWhere((e) => e.value == value, orElse: () => ThingsBoardErrorCode.general,);
}

class ThingsboardError implements Exception {
  bool? refreshTokenPending;
  String? message;
  ThingsBoardErrorCode? errorCode;
  int? status;
  dynamic error;

  ThingsboardError(
      {this.message,
      this.errorCode,
      this.status,
      this.refreshTokenPending,
      this.error});

  ThingsboardError.fromJson(Map<String, dynamic> json)
      : message = ThingsboardError.parseMessage(json),
        status = json['status'],
        errorCode = ThingsBoardErrorCode.fromInt(json['errorCode']);

  static String parseMessage(Map<String, dynamic> json) {
    String? message = json['message'];
    if (message == null) {
      if (json['error'] != null) {
        if (json['path'] != null) {
          message = "Path '" + json['path'] + "': " + json["error"];
        } else {
          message = json['error'];
        }
      } else {
        message = "Unknown error";
      }
    }
    return message!;
  }

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
