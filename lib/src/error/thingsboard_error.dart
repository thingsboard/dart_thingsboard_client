const thingsboardErrorCodes = {
  'general': 2,
  'authentication': 10,
  'jwtTokenExpired': 11,
  'tenantTrialExpired': 12,
  'credentialsExpired': 15,
  'permissionDenied': 20,
  'invalidArguments': 30,
  'badRequestParams': 31,
  'itemNotFound': 32,
  'tooManyRequests': 33,
  'tooManyUpdates': 34
};

class ThingsboardError implements Exception {
  bool? refreshTokenPending;
  String? message;
  int? errorCode;
  int? status;

  ThingsboardError({this.message, this.errorCode, this.status, this.refreshTokenPending});

  ThingsboardError.fromJson(Map<String, dynamic> json):
        message = json['message'],
        errorCode = json['errorCode'],
        status = json['status'];

  @override
  String toString() {
    return 'ThingsboardError{refreshTokenPending: $refreshTokenPending, message: $message, errorCode: $errorCode, status: $status}';
  }
}
