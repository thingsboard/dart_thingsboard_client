// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The authority of a user is the generated [Authority] (the Authority schema of
// the spec), the same type the REST models use, so a value from the facade
// (AuthUser.authority, LoginResponse.scope) and one from the REST API compare
// equal. This library adds string conversion on top of it.
import 'authority.dart';

export 'authority.dart' show Authority;

/// The [Authority] named [value] (case-insensitive), or `null` if there is no
/// such authority.
Authority? authorityFromString(String value) {
  final name = value.toUpperCase();
  for (final authority in Authority.values) {
    if (authority != Authority.unknownDefaultOpenApi &&
        authority.name.toUpperCase() == name) {
      return authority;
    }
  }
  return null;
}

extension AuthorityToString on Authority {
  String toShortString() => name;
}
