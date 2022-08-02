import 'authority_enum.dart';

class LoginRequest {
  String username;
  String password;

  LoginRequest(this.username, this.password);

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

class LoginResponse {
  final String token;
  String? refreshToken;
  Authority? scope;

  LoginResponse(this.token, this.refreshToken);

  LoginResponse.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        refreshToken = json['refreshToken'],
        scope =
            json['scope'] != null ? authorityFromString(json['scope']) : null;
}

class RefreshTokenRequest {
  final String refreshToken;

  RefreshTokenRequest(this.refreshToken);

  Map<String, dynamic> toJson() {
    return {'refreshToken': refreshToken};
  }
}
