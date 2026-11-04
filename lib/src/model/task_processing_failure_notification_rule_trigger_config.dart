// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_processing_failure_notification_rule_trigger_config.g.dart';

/// TaskProcessingFailureNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType] 
@BuiltValue()
abstract class TaskProcessingFailureNotificationRuleTriggerConfig implements NotificationRuleTriggerConfig, Built<TaskProcessingFailureNotificationRuleTriggerConfig, TaskProcessingFailureNotificationRuleTriggerConfigBuilder> {
  TaskProcessingFailureNotificationRuleTriggerConfig._();

  factory TaskProcessingFailureNotificationRuleTriggerConfig([void updates(TaskProcessingFailureNotificationRuleTriggerConfigBuilder b)]) = _$TaskProcessingFailureNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskProcessingFailureNotificationRuleTriggerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskProcessingFailureNotificationRuleTriggerConfig> get serializer => _$TaskProcessingFailureNotificationRuleTriggerConfigSerializer();
}

class _$TaskProcessingFailureNotificationRuleTriggerConfigSerializer implements PrimitiveSerializer<TaskProcessingFailureNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [TaskProcessingFailureNotificationRuleTriggerConfig, _$TaskProcessingFailureNotificationRuleTriggerConfig];

  @override
  final String wireName = r'TaskProcessingFailureNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskProcessingFailureNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskProcessingFailureNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskProcessingFailureNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskProcessingFailureNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskProcessingFailureNotificationRuleTriggerConfigBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


