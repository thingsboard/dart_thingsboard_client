import '../entity_type_models.dart';
import 'entity_id.dart';

class EntityViewId extends EntityId {
  EntityViewId(String id) : super(EntityType.ENTITY_VIEW, id);

  @override
  factory EntityViewId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as EntityViewId;
  }

  @override
  String toString() {
    return 'EntityViewId {id: $id}';
  }
}
