// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

enum Direction { ASC, DESC }

extension DirectionToString on Direction {
  String toShortString() {
    return toString().split('.').last;
  }
}

class SortOrder {
  String property;
  Direction direction;
  SortOrder(this.property, this.direction);
}

SortOrder sortOrderFromString(String strSortOrder) {
  String property;
  var direction = Direction.ASC;
  if (strSortOrder.startsWith('-')) {
    direction = Direction.DESC;
    property = strSortOrder.substring(1);
  } else {
    if (strSortOrder.startsWith('+')) {
      property = strSortOrder.substring(1);
    } else {
      property = strSortOrder;
    }
  }
  return SortOrder(property, direction);
}
