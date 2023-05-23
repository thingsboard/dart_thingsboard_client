import '../entity_type_models.dart';
import 'entity_id.dart';

class NotificationId extends EntityId {
  NotificationId(String id) : super(EntityType.NOTIFICATION, id);

  @override
  factory NotificationId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as NotificationId;
  }

  @override
  String toString() {
    return 'NotificationId {id: $id}';
  }
}
