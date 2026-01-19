import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter.dart';
import 'package:thingsboard_client/src/model/query/entity_filter/entity_filter_type.dart';

class AssetTypeFilter extends EntityFilter {
  @Deprecated(
      "will be replaces by [assetTypes]. This value will be appended to [assetTypes] array")
  String? assetType;
  String? assetNameFilter;
  List<String> assetTypes;
  AssetTypeFilter(
      {this.assetType, required this.assetTypes, this.assetNameFilter}) {
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
    return 'AssetTypeFilter{assetType: $assetType, assetTypes:$assetTypes, assetNameFilter: $assetNameFilter}';
  }
}
