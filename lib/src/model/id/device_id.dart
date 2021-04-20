import '../entity_type_models.dart';
import 'entity_id.dart';

class DeviceId implements EntityId {

  @override
  EntityType? entityType = EntityType.DEVICE;

  @override
  String? id;

  DeviceId(this.id);

  @override
  String toString() {
    return 'DeviceId{id: $id}';
  }
}
