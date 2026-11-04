// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_filter_type.dart';

abstract class EntityFilter {
  EntityFilterType getType();

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = getType().toShortString();
    return json;
  }
}
