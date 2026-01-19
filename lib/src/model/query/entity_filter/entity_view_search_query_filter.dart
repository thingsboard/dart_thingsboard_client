import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_search_query_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

import 'package:thingsboard_client/thingsboard_client.dart';

class EntityViewSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> entityViewTypes;

  EntityViewSearchQueryFilter(
      {required this.entityViewTypes,
      required EntityId rootEntity,
      String? relationType,
      EntitySearchDirection direction = EntitySearchDirection.FROM,
      int maxLevel = 1,
      bool fetchLastLevelOnly = false,
      bool rootStateEntity = false,
      EntityId? defaultStateEntity,
      })
      : super(
        rootStateEntity: rootStateEntity,
        defaultStateEntity: defaultStateEntity,
            rootEntity: rootEntity,
            relationType: relationType,
            direction: direction,
            maxLevel: maxLevel,
            fetchLastLevelOnly: fetchLastLevelOnly);

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
