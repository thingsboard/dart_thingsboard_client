// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_filter_type.dart';
import 'entity_search_query_filter.dart';

class EntityViewSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> entityViewTypes;

  EntityViewSearchQueryFilter({
    required this.entityViewTypes,
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
    return EntityFilterType.ENTITY_VIEW_SEARCH_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['entityViewTypes'] = entityViewTypes;
    return json;
  }

  @override
  String toString() {
    return 'EntityViewSearchQueryFilter{${entitySearchQueryFilterString('entityViewTypes: $entityViewTypes')}}';
  }
}
