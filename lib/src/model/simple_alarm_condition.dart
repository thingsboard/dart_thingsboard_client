// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_condition.dart';
import 'package:thingsboard_client/src/model/alarm_condition_expression.dart';
import 'package:thingsboard_client/src/model/alarm_condition_value_alarm_schedule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_alarm_condition.g.dart';

/// SimpleAlarmCondition
///
/// Properties:
/// * [expression] 
/// * [schedule] 
/// * [type] 
@BuiltValue()
abstract class SimpleAlarmCondition implements AlarmCondition, Built<SimpleAlarmCondition, SimpleAlarmConditionBuilder> {
  SimpleAlarmCondition._();

  factory SimpleAlarmCondition([void updates(SimpleAlarmConditionBuilder b)]) = _$SimpleAlarmCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SimpleAlarmConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SimpleAlarmCondition> get serializer => _$SimpleAlarmConditionSerializer();
}

class _$SimpleAlarmConditionSerializer implements PrimitiveSerializer<SimpleAlarmCondition> {
  @override
  final Iterable<Type> types = const [SimpleAlarmCondition, _$SimpleAlarmCondition];

  @override
  final String wireName = r'SimpleAlarmCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SimpleAlarmCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schedule != null) {
      yield r'schedule';
      yield serializers.serialize(
        object.schedule,
        specifiedType: const FullType(AlarmConditionValueAlarmSchedule),
      );
    }
    yield r'expression';
    yield serializers.serialize(
      object.expression,
      specifiedType: const FullType(AlarmConditionExpression),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SimpleAlarmCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SimpleAlarmConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AlarmConditionValueAlarmSchedule),
          ) as AlarmConditionValueAlarmSchedule?;
          if (valueDes == null) continue;
          result.schedule.replace(valueDes);
          break;
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlarmConditionExpression),
          ) as AlarmConditionExpression;
          result.expression = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SimpleAlarmCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleAlarmConditionBuilder();
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


