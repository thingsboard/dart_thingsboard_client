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
  final String refreshToken;

  LoginResponse(this.token, this.refreshToken);

  LoginResponse.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        refreshToken = json['refreshToken'];
}

class RefreshTokenRequest {
  final String refreshToken;

  RefreshTokenRequest(this.refreshToken);

  Map<String, dynamic> toJson() {
    return {'refreshToken': refreshToken};
  }
}
