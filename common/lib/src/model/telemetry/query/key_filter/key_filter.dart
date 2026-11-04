// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../entity_key/entity_key.dart';
import '../entity_key/entity_key_value_type.dart';
import 'key_filter_predicate.dart';

class KeyFilter {
  EntityKey key;
  EntityKeyValueType valueType;
  KeyFilterPredicate predicate;

  KeyFilter(
      {required this.key, required this.valueType, required this.predicate});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['key'] = key.toJson();
    json['valueType'] = valueType.toShortString();
    json['predicate'] = predicate.toJson();
    return json;
  }

  @override
  String toString() {
    return 'KeyFilter{key: $key, valueType: $valueType, predicate: $predicate}';
  }
}
