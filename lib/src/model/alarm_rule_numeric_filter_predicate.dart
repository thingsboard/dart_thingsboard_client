// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_rule_key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/alarm_rule_numeric_operation.dart';
import 'package:thingsboard_client/src/model/alarm_condition_value_double.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_rule_numeric_filter_predicate.g.dart';

/// AlarmRuleNumericFilterPredicate
///
/// Properties:
/// * [type] 
/// * [operation] 
/// * [value] 
@BuiltValue()
abstract class AlarmRuleNumericFilterPredicate implements AlarmRuleKeyFilterPredicate, Built<AlarmRuleNumericFilterPredicate, AlarmRuleNumericFilterPredicateBuilder> {
  @BuiltValueField(wireName: r'operation')
  AlarmRuleNumericOperation get operation;
  // enum operationEnum {  EQUAL,  NOT_EQUAL,  GREATER,  LESS,  GREATER_OR_EQUAL,  LESS_OR_EQUAL,  };

  @BuiltValueField(wireName: r'value')
  AlarmConditionValueDouble get value;

  AlarmRuleNumericFilterPredicate._();

  factory AlarmRuleNumericFilterPredicate([void updates(AlarmRuleNumericFilterPredicateBuilder b)]) = _$AlarmRuleNumericFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmRuleNumericFilterPredicateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmRuleNumericFilterPredicate> get serializer => _$AlarmRuleNumericFilterPredicateSerializer();
}

class _$AlarmRuleNumericFilterPredicateSerializer implements PrimitiveSerializer<AlarmRuleNumericFilterPredicate> {
  @override
  final Iterable<Type> types = const [AlarmRuleNumericFilterPredicate, _$AlarmRuleNumericFilterPredicate];

  @override
  final String wireName = r'AlarmRuleNumericFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmRuleNumericFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'operation';
    yield serializers.serialize(
      object.operation,
      specifiedType: const FullType(AlarmRuleNumericOperation),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AlarmConditionValueDouble),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleNumericFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmRuleNumericFilterPredicateBuilder result,
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
            specifiedType: const FullType(AlarmRuleNumericOperation),
          ) as AlarmRuleNumericOperation;
          result.operation = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlarmConditionValueDouble),
          ) as AlarmConditionValueDouble;
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
  AlarmRuleNumericFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmRuleNumericFilterPredicateBuilder();
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


