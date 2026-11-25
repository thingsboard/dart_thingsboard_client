// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_condition_value_boolean.dart';
import 'package:thingsboard_client/src/model/alarm_rule_key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/alarm_rule_boolean_operation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_rule_boolean_filter_predicate.g.dart';

/// AlarmRuleBooleanFilterPredicate
///
/// Properties:
/// * [type]
/// * [operation]
/// * [value]
@BuiltValue()
abstract class AlarmRuleBooleanFilterPredicate
    implements
        AlarmRuleKeyFilterPredicate,
        Built<
          AlarmRuleBooleanFilterPredicate,
          AlarmRuleBooleanFilterPredicateBuilder
        > {
  @BuiltValueField(wireName: r'operation')
  AlarmRuleBooleanOperation get operation;
  // enum operationEnum {  EQUAL,  NOT_EQUAL,  };

  @BuiltValueField(wireName: r'value')
  AlarmConditionValueBoolean get value;

  AlarmRuleBooleanFilterPredicate._();

  factory AlarmRuleBooleanFilterPredicate([
    void updates(AlarmRuleBooleanFilterPredicateBuilder b),
  ]) = _$AlarmRuleBooleanFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmRuleBooleanFilterPredicateBuilder b) =>
      b..type = r'BOOLEAN';

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmRuleBooleanFilterPredicate> get serializer =>
      _$AlarmRuleBooleanFilterPredicateSerializer();
}

class _$AlarmRuleBooleanFilterPredicateSerializer
    implements PrimitiveSerializer<AlarmRuleBooleanFilterPredicate> {
  @override
  final Iterable<Type> types = const [
    AlarmRuleBooleanFilterPredicate,
    _$AlarmRuleBooleanFilterPredicate,
  ];

  @override
  final String wireName = r'AlarmRuleBooleanFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmRuleBooleanFilterPredicate object, {
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
      specifiedType: const FullType(AlarmRuleBooleanOperation),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AlarmConditionValueBoolean),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleBooleanFilterPredicate object, {
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
    required AlarmRuleBooleanFilterPredicateBuilder result,
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
        case r'operation':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlarmRuleBooleanOperation),
                  )
                  as AlarmRuleBooleanOperation;
          result.operation = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlarmConditionValueBoolean),
                  )
                  as AlarmConditionValueBoolean;
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
  AlarmRuleBooleanFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmRuleBooleanFilterPredicateBuilder();
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
