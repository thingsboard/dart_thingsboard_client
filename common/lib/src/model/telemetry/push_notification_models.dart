// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// The notifications of the WebSocket API. They are handwritten on purpose: the
// spec's NotificationInfo has no subtypes, so the generated Notification drops
// the info fields the WebSocket sends (alarm severity and status, rule chain,
// ...). Switch to the generated Notification once the spec declares them.

import 'package:built_value/serializer.dart';

import '../../api_serializers.dart';
import '../alarm_severity.dart';
import '../alarm_status.dart';
import '../entity_id.dart';
import '../notification_id.dart';
import '../notification_request_id.dart';
import '../user_id.dart';

T? _id<T extends Object>(Serializer<T> serializer, Object? json) => json == null
    ? null
    : apiSerializers(registerEntityId).deserializeWith(serializer, json);

Object? _idJson<T extends Object>(Serializer<T> serializer, T? id) => id == null
    ? null
    : apiSerializers(registerEntityId).serializeWith(serializer, id);

T? _enum<T extends Object>(Serializer<T> serializer, Object? json) =>
    json == null ? null : apiSerializers().deserializeWith(serializer, json);

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
  EXCEEDED_RATE_LIMITS,
  USER_ACTIVATED,
  USER_REGISTERED,
  UNKNOWN,
}

PushNotificationType notificationTypeFromString(String value) {
  return PushNotificationType.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
    orElse: () => PushNotificationType.UNKNOWN,
  );
}

extension NotificationTypeToString on PushNotificationType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum PushNotificationStatus { SENT, READ, UNKNOWN }

PushNotificationStatus notificationStatusFromString(String value) {
  return PushNotificationStatus.values.firstWhere(
    (e) => e.toString().split('.')[1].toUpperCase() == value.toUpperCase(),
    orElse: () => PushNotificationStatus.UNKNOWN,
  );
}

extension NotificationStatusToString on PushNotificationStatus {
  String toShortString() {
    return toString().split('.').last;
  }
}

class PushNotification {
  NotificationId? id;
  int? createdTime;
  final NotificationRequestId requestId;
  final UserId recipientId;
  final String subject;
  final String text;
  final PushNotificationType type;
  final PushNotificationStatus status;
  final PushNotificationInfo? info;
  Map<String, dynamic>? additionalConfig;

  PushNotification(
    this.requestId,
    this.recipientId,
    this.subject,
    this.text,
    this.type,
    this.status,
    this.info,
  );

  PushNotification.fromJson(Map<String, dynamic> json)
    : id = _id(NotificationId.serializer, json['id']),
      createdTime = json['createdTime'],
      requestId = _id(NotificationRequestId.serializer, json['requestId'])!,
      recipientId = _id(UserId.serializer, json['recipientId'])!,
      subject = json['subject'],
      text = json['text'],
      type = notificationTypeFromString(json['type']),
      status = notificationStatusFromString(json['status']),
      info = json['info'] != null
          ? PushNotificationInfo.fromJson(json['info'])
          : null,
      additionalConfig = json['additionalConfig'];

  Map<String, dynamic> toJson() {
    var json = <String, dynamic>{};
    if (id != null) {
      json['id'] = _idJson(NotificationId.serializer, id);
    }
    if (createdTime != null) {
      json['createdTime'] = createdTime;
    }
    json['requestId'] = _idJson(NotificationRequestId.serializer, requestId);
    json['recipientId'] = _idJson(UserId.serializer, recipientId);
    json['subject'] = subject;
    json['text'] = text;
    json['type'] = type.toShortString();
    json['status'] = status.toShortString();
    if (additionalConfig != null) {
      json['additionalConfig'] = additionalConfig;
    }
    return json;
  }

  @override
  String toString() {
    return 'Notification{id: $id, createdTime: $createdTime, '
        'requestId: $requestId, recipientId: $recipientId, '
        'subject: $subject, text: $text, type: $type, status: $status, '
        'info: $info, additionalConfig: $additionalConfig}';
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
      alarmSeverity = _enum(AlarmSeverity.serializer, json['alarmSeverity']),
      alarmStatus = _enum(AlarmStatus.serializer, json['alarmStatus']),
      alarmId = json['alarmId'],
      alarmType = json['alarmType'],
      stateEntityId = _id(EntityId.serializer, json['stateEntityId']),
      acknowledged = json['acknowledged'],
      cleared = json['cleared'];

  @override
  String toString() {
    return 'NotificationInfo{description: $description, type: $type, alarmSeverity: $alarmSeverity,'
        'alarmStatus: $alarmStatus, alarmType: $alarmType, stateEntityId: $stateEntityId,'
        'acknowledged: $acknowledged, cleared: $cleared}';
  }
}
