// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:thingsboard_client/src/model/alarm_action.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/clear_rule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_notification_rule_trigger_config.g.dart';

/// AlarmNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType]
/// * [alarmTypes]
/// * [alarmSeverities]
/// * [notifyOn]
/// * [clearRule]
@BuiltValue()
abstract class AlarmNotificationRuleTriggerConfig
    implements
        NotificationRuleTriggerConfig,
        Built<
          AlarmNotificationRuleTriggerConfig,
          AlarmNotificationRuleTriggerConfigBuilder
        > {
  @BuiltValueField(wireName: r'notifyOn')
  BuiltSet<AlarmAction> get notifyOn;

  @BuiltValueField(wireName: r'alarmSeverities')
  BuiltSet<AlarmSeverity>? get alarmSeverities;

  @BuiltValueField(wireName: r'clearRule')
  ClearRule? get clearRule;

  @BuiltValueField(wireName: r'alarmTypes')
  BuiltSet<String>? get alarmTypes;

  AlarmNotificationRuleTriggerConfig._();

  factory AlarmNotificationRuleTriggerConfig([
    void updates(AlarmNotificationRuleTriggerConfigBuilder b),
  ]) = _$AlarmNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmNotificationRuleTriggerConfigBuilder b) =>
      b..triggerType = NotificationRuleTriggerType.ALARM;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmNotificationRuleTriggerConfig> get serializer =>
      _$AlarmNotificationRuleTriggerConfigSerializer();
}

class _$AlarmNotificationRuleTriggerConfigSerializer
    implements PrimitiveSerializer<AlarmNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [
    AlarmNotificationRuleTriggerConfig,
    _$AlarmNotificationRuleTriggerConfig,
  ];

  @override
  final String wireName = r'AlarmNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alarmTypes != null) {
      yield r'alarmTypes';
      yield serializers.serialize(
        object.alarmTypes,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    yield r'notifyOn';
    yield serializers.serialize(
      object.notifyOn,
      specifiedType: const FullType(BuiltSet, [FullType(AlarmAction)]),
    );
    if (object.alarmSeverities != null) {
      yield r'alarmSeverities';
      yield serializers.serialize(
        object.alarmSeverities,
        specifiedType: const FullType(BuiltSet, [FullType(AlarmSeverity)]),
      );
    }
    if (object.clearRule != null) {
      yield r'clearRule';
      yield serializers.serialize(
        object.clearRule,
        specifiedType: const FullType(ClearRule),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alarmTypes':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.alarmTypes.replace(valueDes);
          break;
        case r'triggerType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationRuleTriggerType),
                  )
                  as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        case r'notifyOn':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltSet, [
                      FullType(AlarmAction),
                    ]),
                  )
                  as BuiltSet<AlarmAction>;
          result.notifyOn.replace(valueDes);
          break;
        case r'alarmSeverities':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(AlarmSeverity),
                    ]),
                  )
                  as BuiltSet<AlarmSeverity>?;
          if (valueDes == null) continue;
          result.alarmSeverities.replace(valueDes);
          break;
        case r'clearRule':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ClearRule),
                  )
                  as ClearRule?;
          if (valueDes == null) continue;
          result.clearRule.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmNotificationRuleTriggerConfigBuilder();
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
