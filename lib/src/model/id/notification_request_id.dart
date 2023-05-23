import '../entity_type_models.dart';
import 'entity_id.dart';

class NotificationRequestId extends EntityId {
  NotificationRequestId(String id) : super(EntityType.NOTIFICATION_REQUEST, id);

  @override
  factory NotificationRequestId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as NotificationRequestId;
  }

  @override
  String toString() {
    return 'NotificationRequestId {id: $id}';
  }
}
