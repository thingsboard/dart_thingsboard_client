// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

enum Authority {
  SYS_ADMIN,
  TENANT_ADMIN,
  CUSTOMER_USER,
  REFRESH_TOKEN,
  ANONYMOUS,
  PRE_VERIFICATION_TOKEN,
  MFA_CONFIGURATION_TOKEN
}

Authority authorityFromString(String value) {
  return Authority.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension AuthorityToString on Authority {
  String toShortString() {
    return toString().split('.').last;
  }
}
