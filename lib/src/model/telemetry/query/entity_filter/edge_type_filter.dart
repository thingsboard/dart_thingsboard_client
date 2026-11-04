// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_filter.dart';
import 'entity_filter_type.dart';

class EdgeTypeFilter extends EntityFilter {
  @Deprecated(
    "will be replaced by [edgeTypes]. This value will be appended to [edgeTypes] array",
  )
  String? edgeType;
  String? edgeNameFilter;
  List<String> edgeTypes;

  EdgeTypeFilter({
    this.edgeType,
    this.edgeNameFilter,
    required this.edgeTypes,
  }) {
    if (edgeType != null) {
      edgeTypes.add(edgeType!);
    }
  }

  @override
  EntityFilterType getType() {
    return EntityFilterType.EDGE_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['edgeTypes'] = edgeTypes;
    if (edgeNameFilter != null) {
      json['edgeNameFilter'] = edgeNameFilter;
    }
    return json;
  }

  @override
  String toString() {
    return 'EdgeTypeFilter{edgeType: $edgeType, edgeNameFilter: $edgeNameFilter}';
  }
}
