import '../entity_type_models.dart';
import 'entity_id.dart';

class AssetId extends EntityId {
  AssetId(String id) : super(EntityType.ASSET, id);

  @override
  factory AssetId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as AssetId;
  }

  @override
  String toString() {
    return 'AssetId {id: $id}';
  }
}
