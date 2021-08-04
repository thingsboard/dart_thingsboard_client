import '../entity_type_models.dart';
import 'entity_id.dart';

class UserId extends EntityId {
  UserId(String id) : super(EntityType.USER, id);

  @override
  factory UserId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as UserId;
  }

  @override
  String toString() {
    return 'UserId {id: $id}';
  }
}
