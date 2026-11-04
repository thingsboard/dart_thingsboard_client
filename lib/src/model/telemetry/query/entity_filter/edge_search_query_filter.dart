// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_filter_type.dart';
import 'entity_search_query_filter.dart';

class EdgeSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> edgeTypes;

  EdgeSearchQueryFilter({
    required this.edgeTypes,
    required super.rootEntity,
    super.relationType,
    super.direction,
    super.maxLevel,
    super.fetchLastLevelOnly,
    super.rootStateEntity,
    super.defaultStateEntity,
  });

  @override
  EntityFilterType getType() {
    return EntityFilterType.EDGE_SEARCH_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['edgeTypes'] = edgeTypes;
    return json;
  }

  @override
  String toString() {
    return 'EdgeSearchQueryFilter{${entitySearchQueryFilterString('edgeTypes: $edgeTypes')}}';
  }
}
