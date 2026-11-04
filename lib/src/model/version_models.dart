// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// Minimum ThingsBoard server version this client is compatible with.
/// Matches the package version (ThingsBoard server release target).
const String tbMinServerVersion = '4.4.0';

/// Parses a version string like '4.4.0' into [major, minor, patch].
/// Returns [0, 0, 0] on parse failure (lenient - server may return
/// snapshot/RC version strings like '4.4.0-SNAPSHOT').
List<int> parseVersion(String v) {
  try {
    final parts = v.split('.').map((s) => int.tryParse(s) ?? 0).toList();
    while (parts.length < 3) {
      parts.add(0);
    }
    return parts.sublist(0, 3);
  } catch (_) {
    return [0, 0, 0];
  }
}

/// Returns true if [actual] meets or exceeds [minimum] (semantic version comparison).
bool isVersionSufficient(String actual, String minimum) {
  final a = parseVersion(actual);
  final m = parseVersion(minimum);
  for (int i = 0; i < 3; i++) {
    if (a[i] > m[i]) return true;
    if (a[i] < m[i]) return false;
  }
  return true; // equal
}
