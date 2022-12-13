import '../entity_type_models.dart';
import 'entity_id.dart';

class AssetProfileId extends EntityId {
  AssetProfileId(String id) : super(EntityType.ASSET_PROFILE, id);

  @override
  factory AssetProfileId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as AssetProfileId;
  }

  @override
  String toString() {
    return 'AssetProfileId {id: $id}';
  }
}
