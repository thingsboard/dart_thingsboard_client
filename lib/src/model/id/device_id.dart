import '../entity_type_models.dart';
import 'entity_id.dart';

class DeviceId extends EntityId {
  DeviceId(String id) : super(EntityType.DEVICE, id);

  @override
  factory DeviceId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as DeviceId;
  }

  @override
  String toString() {
    return 'DeviceId {id: $id}';
  }
}
