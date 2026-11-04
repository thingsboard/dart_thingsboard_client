// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_condition.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_rule.g.dart';

/// AlarmRule
///
/// Properties:
/// * [condition] 
/// * [alarmDetails] 
/// * [dashboardId] 
@BuiltValue()
abstract class AlarmRule implements Built<AlarmRule, AlarmRuleBuilder> {
  @BuiltValueField(wireName: r'condition')
  AlarmCondition get condition;

  @BuiltValueField(wireName: r'alarmDetails')
  String? get alarmDetails;

  @BuiltValueField(wireName: r'dashboardId')
  DashboardId? get dashboardId;

  AlarmRule._();

  factory AlarmRule([void updates(AlarmRuleBuilder b)]) = _$AlarmRule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmRuleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmRule> get serializer => _$AlarmRuleSerializer();
}

class _$AlarmRuleSerializer implements PrimitiveSerializer<AlarmRule> {
  @override
  final Iterable<Type> types = const [AlarmRule, _$AlarmRule];

  @override
  final String wireName = r'AlarmRule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmRule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'condition';
    yield serializers.serialize(
      object.condition,
      specifiedType: const FullType(AlarmCondition),
    );
    if (object.alarmDetails != null) {
      yield r'alarmDetails';
      yield serializers.serialize(
        object.alarmDetails,
        specifiedType: const FullType(String),
      );
    }
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmRule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmRuleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'condition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlarmCondition),
          ) as AlarmCondition;
          result.condition = valueDes;
          break;
        case r'alarmDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.alarmDetails = valueDes;
          break;
        case r'dashboardId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DashboardId),
          ) as DashboardId?;
          if (valueDes == null) continue;
          result.dashboardId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmRule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmRuleBuilder();
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


