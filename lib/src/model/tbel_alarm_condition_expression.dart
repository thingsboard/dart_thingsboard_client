// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_condition_expression.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tbel_alarm_condition_expression.g.dart';

/// TbelAlarmConditionExpression
///
/// Properties:
/// * [type]
/// * [expression]
@BuiltValue()
abstract class TbelAlarmConditionExpression
    implements
        AlarmConditionExpression,
        Built<
          TbelAlarmConditionExpression,
          TbelAlarmConditionExpressionBuilder
        > {
  @BuiltValueField(wireName: r'expression')
  String get expression;

  TbelAlarmConditionExpression._();

  factory TbelAlarmConditionExpression([
    void updates(TbelAlarmConditionExpressionBuilder b),
  ]) = _$TbelAlarmConditionExpression;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbelAlarmConditionExpressionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbelAlarmConditionExpression> get serializer =>
      _$TbelAlarmConditionExpressionSerializer();
}

class _$TbelAlarmConditionExpressionSerializer
    implements PrimitiveSerializer<TbelAlarmConditionExpression> {
  @override
  final Iterable<Type> types = const [
    TbelAlarmConditionExpression,
    _$TbelAlarmConditionExpression,
  ];

  @override
  final String wireName = r'TbelAlarmConditionExpression';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbelAlarmConditionExpression object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'expression';
    yield serializers.serialize(
      object.expression,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TbelAlarmConditionExpression object, {
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
    required TbelAlarmConditionExpressionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'expression':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.expression = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbelAlarmConditionExpression deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbelAlarmConditionExpressionBuilder();
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
