import '../entity_type_models.dart';
import 'entity_id.dart';

class NotificationRuleId extends EntityId {
  NotificationRuleId(String id) : super(EntityType.NOTIFICATION_RULE, id);

  @override
  factory NotificationRuleId.fromJson(Map<String, dynamic> json) {
    return EntityId.fromJson(json) as NotificationRuleId;
  }

  @override
  String toString() {
    return 'NotificationRuleId {id: $id}';
  }
}
