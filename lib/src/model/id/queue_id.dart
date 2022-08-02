import '../entity_type_models.dart';
import 'entity_id.dart';

class QueueId extends EntityId {
  QueueId(String id) : super(EntityType.QUEUE, id);

  @override
  factory QueueId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as QueueId;
  }

  @override
  String toString() {
    return 'QueueId {id: $id}';
  }
}
