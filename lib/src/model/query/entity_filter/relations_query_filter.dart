import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

import 'package:thingsboard_client/src/model/relation_models.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

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
