import 'alarm_models.dart';
import 'base_data.dart';
import 'id/entity_id.dart';
import 'id/notification_id.dart';
import 'id/notification_request_id.dart';
import 'id/user_id.dart';

enum NotificationType {
  GENERAL,
  ALARM,
  DEVICE_ACTIVITY,
  ENTITY_ACTION,
  ALARM_COMMENT,
  RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,
  ALARM_ASSIGNMENT,
  NEW_PLATFORM_VERSION,
  ENTITIES_LIMIT,
  API_USAGE_LIMIT,
  RULE_NODE,
  RATE_LIMITS
}

NotificationType notificationTypeFromString(String value) {
  return NotificationType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension NotificationTypeToString on NotificationType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum NotificationStatus { SENT, READ }

NotificationStatus notificationStatusFromString(String value) {
  return NotificationStatus.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension NotificationStatusToString on NotificationStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}

class Notification extends BaseData<NotificationId> {
  final NotificationRequestId requestId;
  final UserId recipientId;
  final String subject;
  final String text;
  final NotificationType type;
  final NotificationStatus status;
  final NotificationInfo? info;
  Map<String, dynamic>? additionalConfig;

  Notification(this.requestId, this.recipientId, this.subject, this.text,
      this.type, this.status, this.info);

  Notification.fromJson(Map<String, dynamic> json)
      : requestId = NotificationRequestId.fromJson(json['requestId']),
        recipientId = UserId.fromJson(json['recipientId']),
        subject = json['subject'],
        text = json['text'],
        type = notificationTypeFromString(json['type']),
        status = notificationStatusFromString(json['status']),
        info = json['info'] != null
            ? NotificationInfo.fromJson(json['info'])
            : null,
        additionalConfig = json['additionalConfig'],
        super.fromJson(json);

  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['requestId'] = requestId.toString();
    json['recipientId'] = recipientId.toString();
    json['subject'] = subject;
    json['text'] = text;
    json['type'] = type.toString();
    json['status'] = status.toString();
    json['info'] = info?.toString();
    if (additionalConfig != null) {
      json['additionalConfig'] = additionalConfig;
    }
    return json;
  }

  @override
  String toString() {
    return 'Notification{${notificationString()}}';
  }

  String notificationString([String? toStringBody]) {
    return '${baseDataString('requestId: $recipientId, recipientId: $recipientId,'
        'subject: $subject, text: $text, type: $type, status: $status, info: $info, '
        'additionalConfig: $additionalConfig')}';
  }
}

class NotificationInfo {
  final String? description;
  final String? type;
  final AlarmSeverity? alarmSeverity;
  final AlarmStatus? alarmStatus;
  final String? alarmType;
  final EntityId? stateEntityId;
  final bool? acknowledged;
  final bool? cleared;

  NotificationInfo.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        type = json['type'],
        alarmSeverity = json['alarmSeverity'] != null
            ? alarmSeverityFromString(json['alarmSeverity'])
            : null,
        alarmStatus = json['alarmStatus'] != null
            ? alarmStatusFromString(json['alarmStatus'])
            : null,
        alarmType = json['alarmType'],
        stateEntityId = json['stateEntityId'] != null
            ? EntityId.fromJson(json['stateEntityId'])
            : null,
        acknowledged = json['acknowledged'],
        cleared = json['cleared'];

  String toString() {
    return 'NotificationInfo{description: $description, type: $type, alarmSeverity: $alarmSeverity,'
        'alarmStatus: $alarmStatus, alarmType: $alarmType, stateEntityId: $stateEntityId,'
        'acknowledged: $acknowledged, cleared: $cleared}';
  }
}
