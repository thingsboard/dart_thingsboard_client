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
import 'package:thingsboard_client/src/model/time_unit.dart';
import 'package:thingsboard_client/src/model/alarm_condition_value_alarm_schedule.dart';
import 'package:thingsboard_client/src/model/alarm_condition_value_long.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'duration_alarm_condition.g.dart';

/// DurationAlarmCondition
///
/// Properties:
/// * [expression] 
/// * [schedule] 
/// * [type] 
/// * [unit] 
/// * [value] 
@BuiltValue()
abstract class DurationAlarmCondition implements AlarmCondition, Built<DurationAlarmCondition, DurationAlarmConditionBuilder> {
  @BuiltValueField(wireName: r'unit')
  TimeUnit get unit;
  // enum unitEnum {  NANOSECONDS,  MICROSECONDS,  MILLISECONDS,  SECONDS,  MINUTES,  HOURS,  DAYS,  };

  @BuiltValueField(wireName: r'value')
  AlarmConditionValueLong get value;

  DurationAlarmCondition._();

  factory DurationAlarmCondition([void updates(DurationAlarmConditionBuilder b)]) = _$DurationAlarmCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DurationAlarmConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DurationAlarmCondition> get serializer => _$DurationAlarmConditionSerializer();
}

class _$DurationAlarmConditionSerializer implements PrimitiveSerializer<DurationAlarmCondition> {
  @override
  final Iterable<Type> types = const [DurationAlarmCondition, _$DurationAlarmCondition];

  @override
  final String wireName = r'DurationAlarmCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DurationAlarmCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.schedule != null) {
      yield r'schedule';
      yield serializers.serialize(
        object.schedule,
        specifiedType: const FullType(AlarmConditionValueAlarmSchedule),
      );
    }
    yield r'unit';
    yield serializers.serialize(
      object.unit,
      specifiedType: const FullType(TimeUnit),
    );
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
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AlarmConditionValueLong),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DurationAlarmCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DurationAlarmConditionBuilder result,
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
        case r'unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimeUnit),
          ) as TimeUnit;
          result.unit = valueDes;
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
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlarmConditionValueLong),
          ) as AlarmConditionValueLong;
          result.value.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DurationAlarmCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DurationAlarmConditionBuilder();
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


