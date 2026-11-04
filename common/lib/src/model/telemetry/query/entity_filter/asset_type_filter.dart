// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'entity_filter.dart';
import 'entity_filter_type.dart';

class AssetTypeFilter extends EntityFilter {
  @Deprecated(
    "will be replaced by [assetTypes]. This value will be appended to [assetTypes] array",
  )
  String? assetType;
  String? assetNameFilter;
  List<String> assetTypes;

  AssetTypeFilter({
    this.assetType,
    required this.assetTypes,
    this.assetNameFilter,
  }) {
    if (assetType != null) {
      assetTypes.add(assetType!);
    }
  }

  @override
  EntityFilterType getType() {
    return EntityFilterType.ASSET_TYPE;
  }

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    if (assetNameFilter != null) {
      json['assetNameFilter'] = assetNameFilter;
    }
    json['assetTypes'] = assetTypes;
    return json;
  }

  @override
  String toString() {
    return 'AssetTypeFilter{assetType: $assetType, assetTypes: $assetTypes, assetNameFilter: $assetNameFilter}';
  }
}
