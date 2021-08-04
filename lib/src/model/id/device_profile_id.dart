import '../entity_type_models.dart';
import 'entity_id.dart';

class DeviceProfileId extends EntityId {
  DeviceProfileId(String id) : super(EntityType.DEVICE_PROFILE, id);

  @override
  factory DeviceProfileId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as DeviceProfileId;
  }

  @override
  String toString() {
    return 'DeviceProfileId {id: $id}';
  }
}
