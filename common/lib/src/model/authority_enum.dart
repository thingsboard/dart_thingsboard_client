// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// String conversion for the generated [Authority], the type shared with the REST
// models.
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
