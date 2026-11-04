// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_search_status.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_comment_notification_rule_trigger_config.g.dart';

/// AlarmCommentNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType] 
/// * [alarmTypes] 
/// * [alarmSeverities] 
/// * [alarmStatuses] 
/// * [onlyUserComments] 
/// * [notifyOnCommentUpdate] 
@BuiltValue()
abstract class AlarmCommentNotificationRuleTriggerConfig implements NotificationRuleTriggerConfig, Built<AlarmCommentNotificationRuleTriggerConfig, AlarmCommentNotificationRuleTriggerConfigBuilder> {
  @BuiltValueField(wireName: r'notifyOnCommentUpdate')
  bool? get notifyOnCommentUpdate;

  @BuiltValueField(wireName: r'alarmSeverities')
  BuiltSet<AlarmSeverity>? get alarmSeverities;

  @BuiltValueField(wireName: r'onlyUserComments')
  bool? get onlyUserComments;

  @BuiltValueField(wireName: r'alarmTypes')
  BuiltSet<String>? get alarmTypes;

  @BuiltValueField(wireName: r'alarmStatuses')
  BuiltSet<AlarmSearchStatus>? get alarmStatuses;

  AlarmCommentNotificationRuleTriggerConfig._();

  factory AlarmCommentNotificationRuleTriggerConfig([void updates(AlarmCommentNotificationRuleTriggerConfigBuilder b)]) = _$AlarmCommentNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmCommentNotificationRuleTriggerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmCommentNotificationRuleTriggerConfig> get serializer => _$AlarmCommentNotificationRuleTriggerConfigSerializer();
}

class _$AlarmCommentNotificationRuleTriggerConfigSerializer implements PrimitiveSerializer<AlarmCommentNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [AlarmCommentNotificationRuleTriggerConfig, _$AlarmCommentNotificationRuleTriggerConfig];

  @override
  final String wireName = r'AlarmCommentNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmCommentNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.onlyUserComments != null) {
      yield r'onlyUserComments';
      yield serializers.serialize(
        object.onlyUserComments,
        specifiedType: const FullType(bool),
      );
    }
    if (object.notifyOnCommentUpdate != null) {
      yield r'notifyOnCommentUpdate';
      yield serializers.serialize(
        object.notifyOnCommentUpdate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.alarmTypes != null) {
      yield r'alarmTypes';
      yield serializers.serialize(
        object.alarmTypes,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    if (object.alarmStatuses != null) {
      yield r'alarmStatuses';
      yield serializers.serialize(
        object.alarmStatuses,
        specifiedType: const FullType(BuiltSet, [FullType(AlarmSearchStatus)]),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    if (object.alarmSeverities != null) {
      yield r'alarmSeverities';
      yield serializers.serialize(
        object.alarmSeverities,
        specifiedType: const FullType(BuiltSet, [FullType(AlarmSeverity)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmCommentNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmCommentNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'onlyUserComments':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.onlyUserComments = valueDes;
          break;
        case r'notifyOnCommentUpdate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.notifyOnCommentUpdate = valueDes;
          break;
        case r'alarmTypes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.alarmTypes.replace(valueDes);
          break;
        case r'alarmStatuses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(AlarmSearchStatus)]),
          ) as BuiltSet<AlarmSearchStatus>?;
          if (valueDes == null) continue;
          result.alarmStatuses.replace(valueDes);
          break;
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        case r'alarmSeverities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(AlarmSeverity)]),
          ) as BuiltSet<AlarmSeverity>?;
          if (valueDes == null) continue;
          result.alarmSeverities.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmCommentNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmCommentNotificationRuleTriggerConfigBuilder();
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


