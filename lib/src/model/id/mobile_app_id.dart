import 'entity_id.dart';
import '../entity_type_models.dart';

class MobileAppId extends EntityId {
  MobileAppId(String id) : super(EntityType.MOBILE_APP, id);

  @override
  factory MobileAppId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as MobileAppId;
  }

  @override
  String toString() {
    return 'MobileAppId {id: $id}';
  }
}
