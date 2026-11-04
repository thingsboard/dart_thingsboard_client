// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_condition_expression.dart';
import 'package:thingsboard_client/src/model/duration_alarm_condition.dart';
import 'package:thingsboard_client/src/model/alarm_condition_value_alarm_schedule.dart';
import 'package:thingsboard_client/src/model/repeating_alarm_condition.dart';
import 'package:thingsboard_client/src/model/simple_alarm_condition.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_condition.g.dart';

/// AlarmCondition
///
/// Properties:
/// * [expression] 
/// * [schedule] 
/// * [type] 
@BuiltValue(instantiable: false)
abstract class AlarmCondition  {
  @BuiltValueField(wireName: r'expression')
  AlarmConditionExpression get expression;

  @BuiltValueField(wireName: r'schedule')
  AlarmConditionValueAlarmSchedule? get schedule;

  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DURATION': DurationAlarmCondition,
    r'REPEATING': RepeatingAlarmCondition,
    r'SIMPLE': SimpleAlarmCondition,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmCondition> get serializer => _$AlarmConditionSerializer();
}

extension AlarmConditionDiscriminatorExt on AlarmCondition {
    String? get discriminatorValue {
        if (this is DurationAlarmCondition) {
            return r'DURATION';
        }
        if (this is RepeatingAlarmCondition) {
            return r'REPEATING';
        }
        if (this is SimpleAlarmCondition) {
            return r'SIMPLE';
        }
        return null;
    }
}
extension AlarmConditionBuilderDiscriminatorExt on AlarmConditionBuilder {
    String? get discriminatorValue {
        if (this is DurationAlarmConditionBuilder) {
            return r'DURATION';
        }
        if (this is RepeatingAlarmConditionBuilder) {
            return r'REPEATING';
        }
        if (this is SimpleAlarmConditionBuilder) {
            return r'SIMPLE';
        }
        return null;
    }
}

class _$AlarmConditionSerializer implements PrimitiveSerializer<AlarmCondition> {
  @override
  final Iterable<Type> types = const [AlarmCondition];

  @override
  final String wireName = r'AlarmCondition';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'expression';
    yield serializers.serialize(
      object.expression,
      specifiedType: const FullType(AlarmConditionExpression),
    );
    if (object.schedule != null) {
      yield r'schedule';
      yield serializers.serialize(
        object.schedule,
        specifiedType: const FullType(AlarmConditionValueAlarmSchedule),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is DurationAlarmCondition) {
      return serializers.serialize(object, specifiedType: FullType(DurationAlarmCondition))!;
    }
    if (object is RepeatingAlarmCondition) {
      return serializers.serialize(object, specifiedType: FullType(RepeatingAlarmCondition))!;
    }
    if (object is SimpleAlarmCondition) {
      return serializers.serialize(object, specifiedType: FullType(SimpleAlarmCondition))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AlarmCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AlarmCondition.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'DURATION':
        return serializers.deserialize(serialized, specifiedType: FullType(DurationAlarmCondition)) as DurationAlarmCondition;
      case r'REPEATING':
        return serializers.deserialize(serialized, specifiedType: FullType(RepeatingAlarmCondition)) as RepeatingAlarmCondition;
      case r'SIMPLE':
        return serializers.deserialize(serialized, specifiedType: FullType(SimpleAlarmCondition)) as SimpleAlarmCondition;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AlarmCondition)) as $AlarmCondition;
    }
  }
}


/// a concrete implementation of [AlarmCondition], since [AlarmCondition] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AlarmCondition implements AlarmCondition, Built<$AlarmCondition, $AlarmConditionBuilder> {
  $AlarmCondition._();

  factory $AlarmCondition([void Function($AlarmConditionBuilder)? updates]) = _$$AlarmCondition;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AlarmConditionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AlarmCondition> get serializer => _$$AlarmConditionSerializer();
}

class _$$AlarmConditionSerializer implements PrimitiveSerializer<$AlarmCondition> {
  @override
  final Iterable<Type> types = const [$AlarmCondition, _$$AlarmCondition];

  @override
  final String wireName = r'$AlarmCondition';

  @override
  Object serialize(
    Serializers serializers,
    $AlarmCondition object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AlarmCondition))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmConditionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlarmConditionExpression),
          ) as AlarmConditionExpression;
          result.expression = valueDes;
          break;
        case r'schedule':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AlarmConditionValueAlarmSchedule),
          ) as AlarmConditionValueAlarmSchedule?;
          if (valueDes == null) continue;
          result.schedule.replace(valueDes);
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
  $AlarmCondition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AlarmConditionBuilder();
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

