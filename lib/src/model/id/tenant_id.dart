import '../entity_type_models.dart';
import 'entity_id.dart';

class TenantId extends EntityId {
  TenantId(String id) : super(EntityType.TENANT, id);

  @override
  factory TenantId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as TenantId;
  }

  @override
  String toString() {
    return 'TenantId {id: $id}';
  }
}
