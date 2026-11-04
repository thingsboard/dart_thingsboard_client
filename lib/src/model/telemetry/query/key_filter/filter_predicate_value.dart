// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dynamic_value.dart';

class FilterPredicateValue<T> {
  T defaultValue;
  T? userValue;
  DynamicValue<T>? dynamicValue;

  FilterPredicateValue(this.defaultValue, {this.userValue, this.dynamicValue});

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['defaultValue'] = defaultValue;
    if (userValue != null) {
      json['userValue'] = userValue;
    }
    if (dynamicValue != null) {
      json['dynamicValue'] = dynamicValue!.toJson();
    }
    return json;
  }

  @override
  String toString() {
    return 'FilterPredicateValue{defaultValue: $defaultValue, userValue: $userValue, dynamicValue: $dynamicValue}';
  }
}
