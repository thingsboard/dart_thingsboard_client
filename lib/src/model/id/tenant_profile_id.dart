import '../entity_type_models.dart';
import 'entity_id.dart';

class TenantProfileId extends EntityId {
  TenantProfileId(String id) : super(EntityType.TENANT_PROFILE, id);

  @override
  factory TenantProfileId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as TenantProfileId;
  }

  @override
  String toString() {
    return 'TenantProfileId {id: $id}';
  }
}
