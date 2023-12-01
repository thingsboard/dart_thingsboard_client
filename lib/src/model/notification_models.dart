import 'dart:async';

import 'alarm_models.dart';
import 'base_data.dart';
import 'id/entity_id.dart';
import 'id/notification_id.dart';
import 'id/notification_request_id.dart';
import 'id/user_id.dart';
import 'telemetry_models.dart';

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

class UnreadCountSubCmd extends WebsocketCmd {
  UnreadCountSubCmd({int? cmdId}) : super(cmdId: cmdId);
}

class UnreadSubCmd extends WebsocketCmd {
  final int limit;

  UnreadSubCmd({int? cmdId, required this.limit}) : super(cmdId: cmdId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['limit'] = limit;
    return json;
  }
}

class UnsubscribeCmd extends WebsocketCmd {
  UnsubscribeCmd({int? cmdId}) : super(cmdId: cmdId);
}

class MarkAsReadCmd extends WebsocketCmd {
  final List<String> notifications;

  MarkAsReadCmd({int? cmdId, required this.notifications})
      : super(cmdId: cmdId);

  @override
  Map<String, dynamic> toJson() {
    var json = super.toJson();
    json['notifications'] = notifications;
    return json;
  }
}

class MarkAllAsReadCmd extends WebsocketCmd {
  MarkAllAsReadCmd({int? cmdId}) : super(cmdId: cmdId);
}

class NotificationCountUpdate extends CmdUpdate {
  final int totalUnreadCount;

  NotificationCountUpdate.fromJson(Map<String, dynamic> json)
      : totalUnreadCount = json['totalUnreadCount'],
        super.fromJson(json);

  @override
  String toString() {
    return 'NotificationCountUpdate{totalUnreadCount: $totalUnreadCount}';
  }
}

class NotificationsUpdate extends NotificationCountUpdate {
  final Notification? update;
  final List<Notification>? notifications;

  NotificationsUpdate.fromJson(Map<String, dynamic> json)
      : update = json['update'] != null
            ? Notification.fromJson(json['update'])
            : null,
        notifications = json['notifications'] != null
            ? (json['notifications'] as List<dynamic>)
                .map((e) => Notification.fromJson(e))
                .toList()
            : null,
        super.fromJson(json);

  @override
  String toString() {
    return 'NotificationsUpdate{totalUnreadCount: $totalUnreadCount, update: $update, '
        'notifications: $notifications}';
  }
}

class NotificationPluginCmdWrapper {
  UnreadCountSubCmd? unreadCountSubCmd;
  UnreadSubCmd? unreadSubCmd;
  UnsubscribeCmd? unsubCmd;
  MarkAsReadCmd? markAsReadCmd;
  MarkAllAsReadCmd? markAllAsReadCmd;

  NotificationPluginCmdWrapper();

  bool hasCommands() =>
      unreadCountSubCmd != null ||
      unreadSubCmd != null ||
      unsubCmd != null ||
      markAsReadCmd != null ||
      markAllAsReadCmd != null;

  void clear() {
    unreadCountSubCmd = null;
    unreadSubCmd = null;
    unsubCmd = null;
    markAsReadCmd = null;
    markAllAsReadCmd = null;
  }

  NotificationPluginCmdWrapper preparePublishCommands() {
    var preparedWrapper = NotificationPluginCmdWrapper();
    preparedWrapper.unreadCountSubCmd = unreadCountSubCmd;
    preparedWrapper.unreadSubCmd = unreadSubCmd;
    preparedWrapper.unsubCmd = unsubCmd;
    preparedWrapper.markAsReadCmd = markAsReadCmd;
    preparedWrapper.markAllAsReadCmd = markAllAsReadCmd;
    this.clear();
    return preparedWrapper;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    if (unreadCountSubCmd != null) {
      data['unreadCountSubCmd'] = unreadCountSubCmd!.toJson();
    }
    if (unreadSubCmd != null) {
      data['unreadSubCmd'] = unreadSubCmd!.toJson();
    }
    if (unsubCmd != null) {
      data['unsubCmd'] = unsubCmd!.toJson();
    }
    if (markAsReadCmd != null) {
      data['markAsReadCmd'] = markAsReadCmd!.toJson();
    }
    if (markAllAsReadCmd != null) {
      data['markAllAsReadCmd'] = markAllAsReadCmd!.toJson();
    }
    return data;
  }
}

abstract class NotificationService {
  void subscribe(NotificationSubscriber subscriber);

  void update(NotificationSubscriber subscriber);

  void unsubscribe(NotificationSubscriber subscriber);
}

class NotificationSubscriber {
  final NotificationService _notificationService;

  final List<WebsocketCmd> _subscriptionCommands;
  final StreamController<NotificationCountUpdate>
      _notificationCountStreamController;
  final StreamController<NotificationsUpdate>
      _notificationUpdateStreamController;
  final StreamController<void> _reconnectStreamController;

  NotificationsUpdate? lastUpdatedNotification;

  NotificationSubscriber(NotificationService notificationService,
      List<WebsocketCmd> subscriptionCommands)
      : _notificationService = notificationService,
        _subscriptionCommands = subscriptionCommands,
        _notificationCountStreamController = StreamController.broadcast(),
        _notificationUpdateStreamController = StreamController.broadcast(),
        _reconnectStreamController = StreamController.broadcast();

  void subscribe() {
    _notificationService.subscribe(this);
  }

  void update() {
    _notificationService.update(this);
  }

  void unsubscribe() {
    _notificationService.unsubscribe(this);
    _close();
  }

  void _close() {
    _notificationCountStreamController.close();
    _notificationUpdateStreamController.close();
    _reconnectStreamController.close();
  }

  void onReconnected() {
    _reconnectStreamController.add(null);
  }

  List<WebsocketCmd> get subscriptionCommands => _subscriptionCommands;

  Stream<NotificationCountUpdate> get notificationCountStream =>
      _notificationCountStreamController.stream;

  Stream<NotificationsUpdate> get notificationStream =>
      _notificationUpdateStreamController.stream;

  Stream<void> get reconnectStream => _reconnectStreamController.stream;

  static NotificationSubscriber createNotificationCountSubscription(
      {required NotificationService notificationService}) {
    UnreadCountSubCmd subscriptionCommand = UnreadCountSubCmd();
    return NotificationSubscriber(notificationService, [subscriptionCommand]);
  }

  static NotificationSubscriber createNotificationsSubscription(
      {required NotificationService notificationService, int limit = 10}) {
    UnreadSubCmd subscriptionCommand = UnreadSubCmd(limit: limit);
    return NotificationSubscriber(notificationService, [subscriptionCommand]);
  }

  static NotificationSubscriber createMarkAsReadCommand(
      {required NotificationService notificationService,
      required List<String> notifications}) {
    MarkAsReadCmd subscriptionCommand =
        MarkAsReadCmd(notifications: notifications);
    return NotificationSubscriber(notificationService, [subscriptionCommand]);
  }

  static NotificationSubscriber createMarkAllAsReadCommand(
      {required NotificationService notificationService}) {
    MarkAllAsReadCmd subscriptionCommand = MarkAllAsReadCmd();
    return NotificationSubscriber(notificationService, [subscriptionCommand]);
  }

  void onCmdUpdate(CmdUpdate message) {
    if (message is NotificationsUpdate) {
      _onNotificationData(message);
    } else if (message is NotificationCountUpdate) {
      _onNotificationCount(message);
    }
  }

  void _onNotificationCount(NotificationCountUpdate message) {
    _notificationCountStreamController.add(message);
  }

  Future<void> _onNotificationData(NotificationsUpdate message) async {
    NotificationsUpdate processMessage = message;
    if (lastUpdatedNotification != null && message.update != null) {
      lastUpdatedNotification!.notifications?.insert(0, message.update!);
      var foundCmd = _subscriptionCommands
          .where((command) => command.cmdId == message.cmdId);
      if (foundCmd.isNotEmpty &&
          lastUpdatedNotification!.notifications!.length >
              (foundCmd as Iterable<UnreadSubCmd>).first.limit) {
        lastUpdatedNotification!.notifications?.removeLast();
      }
      processMessage = lastUpdatedNotification!;
    }
    _notificationUpdateStreamController.add(processMessage);
    _notificationCountStreamController.add(processMessage);
    lastUpdatedNotification = processMessage;
  }
}
