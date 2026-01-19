import 'entity_id.dart';
import '../entity_type_models.dart';

class MobileAppBundleId extends EntityId {
  MobileAppBundleId(String id) : super(EntityType.MOBILE_APP_BUNDLE, id);

  @override
  factory MobileAppBundleId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as MobileAppBundleId;
  }

  @override
  String toString() {
    return 'MobileAppBundleId {id: $id}';
  }
}
