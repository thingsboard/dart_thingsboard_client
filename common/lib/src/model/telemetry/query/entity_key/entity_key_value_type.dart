// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

enum EntityKeyValueType { STRING, NUMERIC, BOOLEAN, DATE_TIME }

EntityKeyValueType entityKeyValueTypeFromString(String value) {
  return EntityKeyValueType.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
  );
}

extension EntityKeyValueTypeToString on EntityKeyValueType {
  String toShortString() {
    return toString().split('.').last;
  }
}
