// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_condition_value_string.dart';
import 'package:thingsboard_client/src/model/alarm_rule_key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/alarm_rule_string_operation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_rule_string_filter_predicate.g.dart';

/// AlarmRuleStringFilterPredicate
///
/// Properties:
/// * [type]
/// * [operation]
/// * [value]
/// * [ignoreCase]
@BuiltValue()
abstract class AlarmRuleStringFilterPredicate
    implements
        AlarmRuleKeyFilterPredicate,
        Built<
          AlarmRuleStringFilterPredicate,
          AlarmRuleStringFilterPredicateBuilder
        > {
  @BuiltValueField(wireName: r'ignoreCase')
  bool? get ignoreCase;

  @BuiltValueField(wireName: r'operation')
  AlarmRuleStringOperation get operation;
  // enum operationEnum {  EQUAL,  NOT_EQUAL,  STARTS_WITH,  ENDS_WITH,  CONTAINS,  NOT_CONTAINS,  IN,  NOT_IN,  };

  @BuiltValueField(wireName: r'value')
  AlarmConditionValueString get value;

  AlarmRuleStringFilterPredicate._();

  factory AlarmRuleStringFilterPredicate([
    void updates(AlarmRuleStringFilterPredicateBuilder b),
  ]) = _$AlarmRuleStringFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmRuleStringFilterPredicateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmRuleStringFilterPredicate> get serializer =>
      _$AlarmRuleStringFilterPredicateSerializer();
}

class _$AlarmRuleStringFilterPredicateSerializer
    implements PrimitiveSerializer<AlarmRuleStringFilterPredicate> {
  @override
  final Iterable<Type> types = const [
    AlarmRuleStringFilterPredicate,
    _$AlarmRuleStringFilterPredicate,
  ];

  @override
  final String wireName = r'AlarmRuleStringFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmRuleStringFilterPredicate object, {
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
      specifiedType: const FullType(AlarmRuleStringOperation),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(AlarmConditionValueString),
    );
    if (object.ignoreCase != null) {
      yield r'ignoreCase';
      yield serializers.serialize(
        object.ignoreCase,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleStringFilterPredicate object, {
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
    required AlarmRuleStringFilterPredicateBuilder result,
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
                    specifiedType: const FullType(AlarmRuleStringOperation),
                  )
                  as AlarmRuleStringOperation;
          result.operation = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AlarmConditionValueString),
                  )
                  as AlarmConditionValueString;
          result.value.replace(valueDes);
          break;
        case r'ignoreCase':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.ignoreCase = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmRuleStringFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmRuleStringFilterPredicateBuilder();
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
