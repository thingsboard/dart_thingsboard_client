// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// Minimum ThingsBoard server version this client is compatible with.
const String tbMinServerVersion = '4.4.0';

/// Parses a version string like '4.4.0' into [major, minor, patch].
///
/// Lenient: a component that is not a number (the '0-SNAPSHOT' of
/// '4.4.0-SNAPSHOT') counts as 0 and missing components are 0.
List<int> parseVersion(String v) {
  final parts = v.split('.').map((s) => int.tryParse(s) ?? 0).toList();
  while (parts.length < 3) {
    parts.add(0);
  }
  return parts.sublist(0, 3);
}

/// Whether [actual] meets or exceeds [minimum].
bool isVersionSufficient(String actual, String minimum) {
  final a = parseVersion(actual);
  final m = parseVersion(minimum);
  for (int i = 0; i < 3; i++) {
    if (a[i] > m[i]) return true;
    if (a[i] < m[i]) return false;
  }
  return true;
}
