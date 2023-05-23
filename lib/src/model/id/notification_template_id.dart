import '../entity_type_models.dart';
import 'entity_id.dart';

class NotificationTemplateId extends EntityId {
  NotificationTemplateId(String id) : super(EntityType.NOTIFICATION_TEMPLATE, id);

  @override
  factory NotificationTemplateId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as NotificationTemplateId;
  }

  @override
  String toString() {
    return 'NotificationTemplateId {id: $id}';
  }
}
