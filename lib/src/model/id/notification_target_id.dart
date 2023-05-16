import '../entity_type_models.dart';
import 'entity_id.dart';

class NotificationTargetId extends EntityId {
  NotificationTargetId(String id) : super(EntityType.NOTIFICATION_TARGET, id);

  @override
  factory NotificationTargetId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as NotificationTargetId;
  }

  @override
  String toString() {
    return 'NotificationTargetId {id: $id}';
  }
}
