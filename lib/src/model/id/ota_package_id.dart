import '../entity_type_models.dart';
import 'entity_id.dart';

class OtaPackageId extends EntityId {
  OtaPackageId(String id) : super(EntityType.OTA_PACKAGE, id);

  @override
  factory OtaPackageId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as OtaPackageId;
  }

  @override
  String toString() {
    return 'OtaPackageId {id: $id}';
  }
}
