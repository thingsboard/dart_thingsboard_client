// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_id.dart';
import '../../../id/entity_type_models.dart';
import 'entity_filter.dart';
import 'entity_filter_type.dart';
import 'entity_search_query_filter.dart';

class RelationEntityTypeFilter {
  String relationType;
  List<EntityType> entityTypes;

  RelationEntityTypeFilter(this.relationType, this.entityTypes);

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    json['relationType'] = relationType;
    json['entityTypes'] = entityTypes.map((e) => e.toShortString()).toList();
    return json;
  }

  @override
  String toString() {
    return 'RelationEntityTypeFilter{relationType: $relationType, entityTypes: $entityTypes}';
  }
}

class RelationsQueryFilter extends EntityFilter {
  EntityId rootEntity;
  EntitySearchDirection direction;
  List<RelationEntityTypeFilter>? filters;
  int maxLevel;
  bool fetchLastLevelOnly;
  bool isMultiRoot;
  EntityType? multiRootEntitiesType;
  Set<String>? multiRootEntityIds;
  bool negate;
  bool rootStateEntity;
  EntityId? defaultStateEntity;

  RelationsQueryFilter({
    required this.rootEntity,
    this.direction = EntitySearchDirection.FROM,
    this.filters,
    this.maxLevel = 1,
    this.fetchLastLevelOnly = false,
    this.isMultiRoot = false,
    this.multiRootEntitiesType,
    this.multiRootEntityIds,
    this.negate = false,
    this.rootStateEntity = false,
    this.defaultStateEntity,
  });

  @override
  EntityFilterType getType() {
    return EntityFilterType.RELATIONS_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['rootEntity'] = rootEntity.toJson();
    json['direction'] = direction.toShortString();
    json['maxLevel'] = maxLevel;
    json['fetchLastLevelOnly'] = fetchLastLevelOnly;
    if (filters != null) {
      json['filters'] = filters!.map((e) => e.toJson()).toList();
    }
    return json;
  }

  @override
  String toString() {
    return 'RelationsQueryFilter{rootEntity: $rootEntity, direction: $direction, filters: $filters, maxLevel: $maxLevel, fetchLastLevelOnly: $fetchLastLevelOnly}';
  }
}
