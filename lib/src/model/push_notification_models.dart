import 'package:thingsboard_client/thingsboard_client.dart';

enum PushNotificationType {
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
  RATE_LIMITS,
  INTEGRATION_LIFECYCLE_EVENT,
  EDGE_CONNECTION,
  EDGE_COMMUNICATION_FAILURE,
  EXCEEDED_RATE_LIMITS
}

PushNotificationType notificationTypeFromString(String value) {
  return PushNotificationType.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension NotificationTypeToString on PushNotificationType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum PushNotificationStatus { SENT, READ }

PushNotificationStatus notificationStatusFromString(String value) {
  return PushNotificationStatus.values.firstWhere(
      (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase());
}

extension NotificationStatusToString on PushNotificationStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}

class PushNotification extends BaseData<NotificationId> {
  final NotificationRequestId requestId;
  final UserId recipientId;
  final String subject;
  final String text;
  final PushNotificationType type;
  final PushNotificationStatus status;
  final PushNotificationInfo? info;
  Map<String, dynamic>? additionalConfig;

  PushNotification(this.requestId, this.recipientId, this.subject, this.text,
      this.type, this.status, this.info);

  PushNotification.fromJson(Map<String, dynamic> json)
      : requestId = NotificationRequestId.fromJson(json['requestId']),
        recipientId = UserId.fromJson(json['recipientId']),
        subject = json['subject'],
        text = json['text'],
        type = notificationTypeFromString(json['type']),
        status = notificationStatusFromString(json['status']),
        info = json['info'] != null
            ? PushNotificationInfo.fromJson(json['info'])
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

class PushNotificationInfo {
  final String? description;
  final String? type;
  final AlarmSeverity? alarmSeverity;
  final AlarmStatus? alarmStatus;
  final String? alarmId;
  final String? alarmType;
  final EntityId? stateEntityId;
  final bool? acknowledged;
  final bool? cleared;

  PushNotificationInfo.fromJson(Map<String, dynamic> json)
      : description = json['description'],
        type = json['type'],
        alarmSeverity = json['alarmSeverity'] != null
            ? alarmSeverityFromString(json['alarmSeverity'])
            : null,
        alarmStatus = json['alarmStatus'] != null
            ? alarmStatusFromString(json['alarmStatus'])
            : null,
        alarmId = json['alarmId'],
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

class PushNotificationQuery {
  PushNotificationQuery(
    this.pageLink, {
    this.unreadOnly = false,
    this.deliveryMethod = 'MOBILE_APP',
  });

  final TimePageLink pageLink;
  bool unreadOnly;
  final String deliveryMethod;

  Map<String, dynamic> toQueryParameters() {
    final queryParameters = pageLink.toQueryParameters();
    queryParameters['unreadOnly'] = unreadOnly;
    queryParameters['deliveryMethod'] = deliveryMethod;

    return queryParameters;
  }
}
