// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../../id/entity_id.dart';
import 'entity_filter_type.dart';
import 'entity_search_query_filter.dart';

class AssetSearchQueryFilter extends EntitySearchQueryFilter {
  List<String> assetTypes;

  AssetSearchQueryFilter({
    required this.assetTypes,
    required EntityId rootEntity,
    String? relationType,
    EntitySearchDirection direction = EntitySearchDirection.FROM,
    int maxLevel = 1,
    bool fetchLastLevelOnly = false,
    bool rootStateEntity = false,
    EntityId? defaultStateEntity,
  }) : super(
          rootStateEntity: rootStateEntity,
          defaultStateEntity: defaultStateEntity,
          rootEntity: rootEntity,
          relationType: relationType,
          direction: direction,
          maxLevel: maxLevel,
          fetchLastLevelOnly: fetchLastLevelOnly,
        );

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
