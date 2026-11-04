// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_type.g.dart';

class NotificationType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GENERAL')
  static const NotificationType GENERAL = _$GENERAL;
  @BuiltValueEnumConst(wireName: r'ALARM')
  static const NotificationType ALARM = _$ALARM;
  @BuiltValueEnumConst(wireName: r'DEVICE_ACTIVITY')
  static const NotificationType DEVICE_ACTIVITY = _$DEVICE_ACTIVITY;
  @BuiltValueEnumConst(wireName: r'ENTITY_ACTION')
  static const NotificationType ENTITY_ACTION = _$ENTITY_ACTION;
  @BuiltValueEnumConst(wireName: r'ALARM_COMMENT')
  static const NotificationType ALARM_COMMENT = _$ALARM_COMMENT;
  @BuiltValueEnumConst(wireName: r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT')
  static const NotificationType RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT =
      _$RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT;
  @BuiltValueEnumConst(wireName: r'ALARM_ASSIGNMENT')
  static const NotificationType ALARM_ASSIGNMENT = _$ALARM_ASSIGNMENT;
  @BuiltValueEnumConst(wireName: r'NEW_PLATFORM_VERSION')
  static const NotificationType NEW_PLATFORM_VERSION = _$NEW_PLATFORM_VERSION;
  @BuiltValueEnumConst(wireName: r'ENTITIES_LIMIT')
  static const NotificationType ENTITIES_LIMIT = _$ENTITIES_LIMIT;
  @BuiltValueEnumConst(wireName: r'ENTITIES_LIMIT_INCREASE_REQUEST')
  static const NotificationType ENTITIES_LIMIT_INCREASE_REQUEST =
      _$ENTITIES_LIMIT_INCREASE_REQUEST;
  @BuiltValueEnumConst(wireName: r'ADDON_ACCESS_REQUEST')
  static const NotificationType ADDON_ACCESS_REQUEST = _$ADDON_ACCESS_REQUEST;
  @BuiltValueEnumConst(wireName: r'ADDON_ACCESS_ERROR')
  static const NotificationType ADDON_ACCESS_ERROR = _$ADDON_ACCESS_ERROR;
  @BuiltValueEnumConst(wireName: r'PLAN_UPGRADE_REQUEST')
  static const NotificationType PLAN_UPGRADE_REQUEST = _$PLAN_UPGRADE_REQUEST;
  @BuiltValueEnumConst(wireName: r'API_USAGE_LIMIT')
  static const NotificationType API_USAGE_LIMIT = _$API_USAGE_LIMIT;
  @BuiltValueEnumConst(wireName: r'RULE_NODE')
  static const NotificationType RULE_NODE = _$RULE_NODE;
  @BuiltValueEnumConst(wireName: r'INTEGRATION_LIFECYCLE_EVENT')
  static const NotificationType INTEGRATION_LIFECYCLE_EVENT =
      _$INTEGRATION_LIFECYCLE_EVENT;
  @BuiltValueEnumConst(wireName: r'RATE_LIMITS')
  static const NotificationType RATE_LIMITS = _$RATE_LIMITS;
  @BuiltValueEnumConst(wireName: r'EDGE_CONNECTION')
  static const NotificationType EDGE_CONNECTION = _$EDGE_CONNECTION;
  @BuiltValueEnumConst(wireName: r'EDGE_COMMUNICATION_FAILURE')
  static const NotificationType EDGE_COMMUNICATION_FAILURE =
      _$EDGE_COMMUNICATION_FAILURE;
  @BuiltValueEnumConst(wireName: r'TASK_PROCESSING_FAILURE')
  static const NotificationType TASK_PROCESSING_FAILURE =
      _$TASK_PROCESSING_FAILURE;
  @BuiltValueEnumConst(wireName: r'RESOURCES_SHORTAGE')
  static const NotificationType RESOURCES_SHORTAGE = _$RESOURCES_SHORTAGE;
  @BuiltValueEnumConst(wireName: r'USER_ACTIVATED')
  static const NotificationType USER_ACTIVATED = _$USER_ACTIVATED;
  @BuiltValueEnumConst(wireName: r'USER_REGISTERED')
  static const NotificationType USER_REGISTERED = _$USER_REGISTERED;
  @BuiltValueEnumConst(wireName: r'REPORT_GENERATED')
  static const NotificationType REPORT_GENERATED = _$REPORT_GENERATED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NotificationType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<NotificationType> get serializer =>
      _$notificationTypeSerializer;

  const NotificationType._(String name) : super(name);

  static BuiltSet<NotificationType> get values => _$values;
  static NotificationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NotificationTypeMixin = Object with _$NotificationTypeMixin;
