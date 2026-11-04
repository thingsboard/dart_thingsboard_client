// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_id.dart';
import 'entity_filter.dart';
import 'entity_filter_type.dart';

class ApiUsageStateFilter extends EntityFilter {
  CustomerId? customerId;

  ApiUsageStateFilter({this.customerId});

  @override
  EntityFilterType getType() {
    return EntityFilterType.API_USAGE_STATE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (customerId != null) {
      json['customerId'] = customerId!.toJson();
    }
    return json;
  }

  @override
  String toString() {
    return 'ApiUsageStateFilter{customerId: $customerId}';
  }
}
