// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_schedule.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_condition_value_alarm_schedule.g.dart';

/// AlarmConditionValueAlarmSchedule
///
/// Properties:
/// * [staticValue] 
/// * [dynamicValueArgument] 
@BuiltValue()
abstract class AlarmConditionValueAlarmSchedule implements Built<AlarmConditionValueAlarmSchedule, AlarmConditionValueAlarmScheduleBuilder> {
  @BuiltValueField(wireName: r'staticValue')
  AlarmSchedule? get staticValue;

  @BuiltValueField(wireName: r'dynamicValueArgument')
  String? get dynamicValueArgument;

  AlarmConditionValueAlarmSchedule._();

  factory AlarmConditionValueAlarmSchedule([void updates(AlarmConditionValueAlarmScheduleBuilder b)]) = _$AlarmConditionValueAlarmSchedule;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmConditionValueAlarmScheduleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmConditionValueAlarmSchedule> get serializer => _$AlarmConditionValueAlarmScheduleSerializer();
}

class _$AlarmConditionValueAlarmScheduleSerializer implements PrimitiveSerializer<AlarmConditionValueAlarmSchedule> {
  @override
  final Iterable<Type> types = const [AlarmConditionValueAlarmSchedule, _$AlarmConditionValueAlarmSchedule];

  @override
  final String wireName = r'AlarmConditionValueAlarmSchedule';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmConditionValueAlarmSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.staticValue != null) {
      yield r'staticValue';
      yield serializers.serialize(
        object.staticValue,
        specifiedType: const FullType(AlarmSchedule),
      );
    }
    if (object.dynamicValueArgument != null) {
      yield r'dynamicValueArgument';
      yield serializers.serialize(
        object.dynamicValueArgument,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmConditionValueAlarmSchedule object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmConditionValueAlarmScheduleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'staticValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AlarmSchedule),
          ) as AlarmSchedule?;
          if (valueDes == null) continue;
          result.staticValue = valueDes;
          break;
        case r'dynamicValueArgument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.dynamicValueArgument = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmConditionValueAlarmSchedule deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmConditionValueAlarmScheduleBuilder();
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


