import 'entity_id.dart';
import '../entity_type_models.dart';

class DomainId extends EntityId {
  DomainId(String id) : super(EntityType.DOMAIN, id);

  @override
  factory DomainId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as DomainId;
  }

  @override
  String toString() {
    return 'DomainId {id: $id}';
  }
}
