// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_filter.dart';
import 'entity_filter_type.dart';

class EntityViewTypeFilter extends EntityFilter {
  @Deprecated(
      "will be replaced by [entityViewTypes]. This value will be appended to [entityViewTypes] array")
  String? entityViewType;
  List<String> entityViewTypes;
  String? entityViewNameFilter;

  EntityViewTypeFilter({
    this.entityViewType,
    this.entityViewNameFilter,
    required this.entityViewTypes,
  }) {
    if (entityViewType != null) {
      entityViewTypes.add(entityViewType!);
    }
  }

  @override
  EntityFilterType getType() {
    return EntityFilterType.ENTITY_VIEW_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityViewTypes'] = entityViewTypes;
    if (entityViewNameFilter != null) {
      json['entityViewNameFilter'] = entityViewNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'EntityViewTypeFilter{entityViewType: $entityViewType, entityViewNameFilter: $entityViewNameFilter}';
  }
}
