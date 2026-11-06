// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class KeyInterceptConfig {
  final String? key;
  final String header;
  final String prefix;
  static const String _jwtScheme = 'Bearer ';
  static const _authHeaderName = 'X-Authorization';
  static const String _apiKeyScheme = 'ApiKey ';
  KeyInterceptConfig({
    required this.header,
    required this.prefix,
    required this.key,
  });
  factory KeyInterceptConfig.jwt(String? jwtToken) {
    return KeyInterceptConfig(
      header: _authHeaderName,
      prefix: _jwtScheme,
      key: jwtToken,
    );
  }
  factory KeyInterceptConfig.apiKey(String? apiKey) {
    return KeyInterceptConfig(
      header: _authHeaderName,
      prefix: _apiKeyScheme,
      key: apiKey,
    );
  }
}
