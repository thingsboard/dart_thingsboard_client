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

part 'notification_rule_trigger_type.g.dart';

class NotificationRuleTriggerType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ENTITY_ACTION')
  static const NotificationRuleTriggerType ENTITY_ACTION = _$ENTITY_ACTION;
  @BuiltValueEnumConst(wireName: r'ALARM')
  static const NotificationRuleTriggerType ALARM = _$ALARM;
  @BuiltValueEnumConst(wireName: r'ALARM_COMMENT')
  static const NotificationRuleTriggerType ALARM_COMMENT = _$ALARM_COMMENT;
  @BuiltValueEnumConst(wireName: r'ALARM_ASSIGNMENT')
  static const NotificationRuleTriggerType ALARM_ASSIGNMENT =
      _$ALARM_ASSIGNMENT;
  @BuiltValueEnumConst(wireName: r'DEVICE_ACTIVITY')
  static const NotificationRuleTriggerType DEVICE_ACTIVITY = _$DEVICE_ACTIVITY;
  @BuiltValueEnumConst(wireName: r'RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT')
  static const NotificationRuleTriggerType
  RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT =
      _$RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT;
  @BuiltValueEnumConst(wireName: r'INTEGRATION_LIFECYCLE_EVENT')
  static const NotificationRuleTriggerType INTEGRATION_LIFECYCLE_EVENT =
      _$INTEGRATION_LIFECYCLE_EVENT;
  @BuiltValueEnumConst(wireName: r'EDGE_CONNECTION')
  static const NotificationRuleTriggerType EDGE_CONNECTION = _$EDGE_CONNECTION;
  @BuiltValueEnumConst(wireName: r'EDGE_COMMUNICATION_FAILURE')
  static const NotificationRuleTriggerType EDGE_COMMUNICATION_FAILURE =
      _$EDGE_COMMUNICATION_FAILURE;
  @BuiltValueEnumConst(wireName: r'NEW_PLATFORM_VERSION')
  static const NotificationRuleTriggerType NEW_PLATFORM_VERSION =
      _$NEW_PLATFORM_VERSION;
  @BuiltValueEnumConst(wireName: r'ENTITIES_LIMIT')
  static const NotificationRuleTriggerType ENTITIES_LIMIT = _$ENTITIES_LIMIT;
  @BuiltValueEnumConst(wireName: r'API_USAGE_LIMIT')
  static const NotificationRuleTriggerType API_USAGE_LIMIT = _$API_USAGE_LIMIT;
  @BuiltValueEnumConst(wireName: r'RATE_LIMITS')
  static const NotificationRuleTriggerType RATE_LIMITS = _$RATE_LIMITS;
  @BuiltValueEnumConst(wireName: r'TASK_PROCESSING_FAILURE')
  static const NotificationRuleTriggerType TASK_PROCESSING_FAILURE =
      _$TASK_PROCESSING_FAILURE;
  @BuiltValueEnumConst(wireName: r'RESOURCES_SHORTAGE')
  static const NotificationRuleTriggerType RESOURCES_SHORTAGE =
      _$RESOURCES_SHORTAGE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const NotificationRuleTriggerType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<NotificationRuleTriggerType> get serializer =>
      _$notificationRuleTriggerTypeSerializer;

  const NotificationRuleTriggerType._(String name) : super(name);

  static BuiltSet<NotificationRuleTriggerType> get values => _$values;
  static NotificationRuleTriggerType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class NotificationRuleTriggerTypeMixin = Object
    with _$NotificationRuleTriggerTypeMixin;
