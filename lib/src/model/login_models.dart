// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'authority_enum.dart';

class LoginRequest {
  final String userName;
  final String password;

  LoginRequest({required this.userName, required this.password});

  Map<String, dynamic> toJson() {
    return {'username': userName, 'password': password};
  }
}

class LoginResponse {
  final String token;
  final String? refreshToken;
  final Authority? scope;

  LoginResponse({required this.token, this.refreshToken, this.scope});

  LoginResponse.fromJson(Map<String, dynamic> json)
    : token = json['token'],
      refreshToken = json['refreshToken'],
      scope = json['scope'] != null ? authorityFromString(json['scope']) : null;
}

class RefreshTokenRequest {
  final String refreshToken;

  RefreshTokenRequest(this.refreshToken);

  Map<String, dynamic> toJson() {
    return {'refreshToken': refreshToken};
  }
}
