// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_key_type.dart';

class EntityKey {
  EntityKeyType type;
  String key;

  EntityKey({required this.type, required this.key});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['type'] = type.toShortString();
    json['key'] = key;
    return json;
  }

  @override
  String toString() {
    return 'EntityKey{type: $type, key: $key}';
  }
}
