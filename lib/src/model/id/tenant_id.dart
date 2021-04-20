import '../entity_type_models.dart';
import 'entity_id.dart';

class TenantId implements EntityId {

  @override
  EntityType? entityType = EntityType.TENANT;

  @override
  String? id;

  TenantId(this.id);

  @override
  String toString() {
    return 'TenantId{id: $id}';
  }
}
