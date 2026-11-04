// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:jwt_decoder/jwt_decoder.dart';

import 'authority_enum.dart';

class AuthUser {
  late String sub;
  late List<String> scopes;
  late String? userId;
  late String? firstName;
  late String? lastName;
  late bool? enabled;
  late String tenantId;
  late String? customerId;
  late bool? isPublic;

  /// The authority of the user, or `null` for an anonymous user (a token
  /// without scopes) or an authority the client does not know.
  late Authority? authority;
  late Map<String, dynamic> additionalData;

  AuthUser.fromJson(Map<String, dynamic> json) {
    var claims = Map.of(json);
    sub = claims.remove('sub') ?? '';
    scopes = (claims.remove('scopes') as List<dynamic>).cast<String>();
    userId = claims.remove('userId');
    firstName = claims.remove('firstName');
    lastName = claims.remove('lastName');
    enabled = claims.remove('enabled');
    tenantId = claims.remove('tenantId') ?? '';
    customerId = claims.remove('customerId');
    isPublic = claims.remove('isPublic');
    authority = scopes.isNotEmpty ? authorityFromString(scopes[0]) : null;
    additionalData = Map<String, dynamic>.from(claims);
  }

  factory AuthUser.fromToken(String jwtToken) {
    final claims = JwtDecoder.decode(jwtToken);
    return AuthUser.fromJson(claims);
  }

  bool isSystemAdmin() => authority == Authority.SYS_ADMIN;
  bool isTenantAdmin() => authority == Authority.TENANT_ADMIN;
  bool isCustomerUser() => authority == Authority.CUSTOMER_USER;
  bool isPreVerificationToken() =>
      authority == Authority.PRE_VERIFICATION_TOKEN;
  bool isMfaConfigurationToken() =>
      authority == Authority.MFA_CONFIGURATION_TOKEN;

  @override
  String toString() {
    return 'AuthUser{sub: $sub, scopes: $scopes, userId: $userId, firstName: $firstName, '
        'lastName: $lastName, enabled: $enabled, tenantId: $tenantId, customerId: $customerId, '
        'isPublic: $isPublic, authority: ${authority?.toShortString()}}';
  }
}

bool isJwtTokenValid(String? token) {
  if (token == null) return false;
  try {
    return !JwtDecoder.isExpired(token);
  } catch (e) {
    return false;
  }
}
