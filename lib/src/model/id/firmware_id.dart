import '../entity_type_models.dart';
import 'entity_id.dart';

class FirmwareId extends EntityId {

  FirmwareId(String id) : super(EntityType.FIRMWARE, id);

  @override
  factory FirmwareId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as FirmwareId;
  }

  @override
  String toString() {
    return 'FirmwareId {id: $id}';
  }
}
