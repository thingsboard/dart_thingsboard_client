import '../entity_type_models.dart';
import 'entity_id.dart';

class EdgeId extends EntityId {
  EdgeId(String id) : super(EntityType.EDGE, id);

  @override
  factory EdgeId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as EdgeId;
  }

  @override
  String toString() {
    return 'EdgeId {id: $id}';
  }
}
