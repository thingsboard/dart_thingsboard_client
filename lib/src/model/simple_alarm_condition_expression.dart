// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_condition_expression.dart';
import 'package:thingsboard_client/src/model/alarm_rule_complex_operation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_condition_filter.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_alarm_condition_expression.g.dart';

/// SimpleAlarmConditionExpression
///
/// Properties:
/// * [type] 
/// * [filters] 
/// * [operation] 
@BuiltValue()
abstract class SimpleAlarmConditionExpression implements AlarmConditionExpression, Built<SimpleAlarmConditionExpression, SimpleAlarmConditionExpressionBuilder> {
  @BuiltValueField(wireName: r'filters')
  BuiltList<AlarmConditionFilter> get filters;

  @BuiltValueField(wireName: r'operation')
  AlarmRuleComplexOperation? get operation;
  // enum operationEnum {  AND,  OR,  };

  SimpleAlarmConditionExpression._();

  factory SimpleAlarmConditionExpression([void updates(SimpleAlarmConditionExpressionBuilder b)]) = _$SimpleAlarmConditionExpression;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SimpleAlarmConditionExpressionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SimpleAlarmConditionExpression> get serializer => _$SimpleAlarmConditionExpressionSerializer();
}

class _$SimpleAlarmConditionExpressionSerializer implements PrimitiveSerializer<SimpleAlarmConditionExpression> {
  @override
  final Iterable<Type> types = const [SimpleAlarmConditionExpression, _$SimpleAlarmConditionExpression];

  @override
  final String wireName = r'SimpleAlarmConditionExpression';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SimpleAlarmConditionExpression object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.operation != null) {
      yield r'operation';
      yield serializers.serialize(
        object.operation,
        specifiedType: const FullType(AlarmRuleComplexOperation),
      );
    }
    yield r'filters';
    yield serializers.serialize(
      object.filters,
      specifiedType: const FullType(BuiltList, [FullType(AlarmConditionFilter)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SimpleAlarmConditionExpression object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SimpleAlarmConditionExpressionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'operation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AlarmRuleComplexOperation),
          ) as AlarmRuleComplexOperation?;
          if (valueDes == null) continue;
          result.operation = valueDes;
          break;
        case r'filters':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AlarmConditionFilter)]),
          ) as BuiltList<AlarmConditionFilter>;
          result.filters.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SimpleAlarmConditionExpression deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SimpleAlarmConditionExpressionBuilder();
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


