import 'package:thingsboard_client/src/model/id/entity_id.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_search_query_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

import 'package:thingsboard_client/thingsboard_client.dart';

class AssetSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> assetTypes;

  AssetSearchQueryFilter(
      {required this.assetTypes,
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
    return EntityFilterType.ASSET_SEARCH_QUERY;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['assetTypes'] = assetTypes;
    return json;
  }

  @override
  String toString() {
    return 'AssetSearchQueryFilter{${entitySearchQueryFilterString('assetTypes: $assetTypes')}}';
  }
}
