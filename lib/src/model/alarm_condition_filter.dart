// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_rule_complex_operation.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/alarm_rule_key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/entity_key_value_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_condition_filter.g.dart';

/// AlarmConditionFilter
///
/// Properties:
/// * [argument] 
/// * [valueType] 
/// * [operation] 
/// * [predicates] 
@BuiltValue()
abstract class AlarmConditionFilter implements Built<AlarmConditionFilter, AlarmConditionFilterBuilder> {
  @BuiltValueField(wireName: r'argument')
  String get argument;

  @BuiltValueField(wireName: r'valueType')
  EntityKeyValueType get valueType;
  // enum valueTypeEnum {  STRING,  NUMERIC,  BOOLEAN,  DATE_TIME,  };

  @BuiltValueField(wireName: r'operation')
  AlarmRuleComplexOperation? get operation;
  // enum operationEnum {  AND,  OR,  };

  @BuiltValueField(wireName: r'predicates')
  BuiltList<AlarmRuleKeyFilterPredicate> get predicates;

  AlarmConditionFilter._();

  factory AlarmConditionFilter([void updates(AlarmConditionFilterBuilder b)]) = _$AlarmConditionFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmConditionFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmConditionFilter> get serializer => _$AlarmConditionFilterSerializer();
}

class _$AlarmConditionFilterSerializer implements PrimitiveSerializer<AlarmConditionFilter> {
  @override
  final Iterable<Type> types = const [AlarmConditionFilter, _$AlarmConditionFilter];

  @override
  final String wireName = r'AlarmConditionFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmConditionFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'argument';
    yield serializers.serialize(
      object.argument,
      specifiedType: const FullType(String),
    );
    yield r'valueType';
    yield serializers.serialize(
      object.valueType,
      specifiedType: const FullType(EntityKeyValueType),
    );
    if (object.operation != null) {
      yield r'operation';
      yield serializers.serialize(
        object.operation,
        specifiedType: const FullType(AlarmRuleComplexOperation),
      );
    }
    yield r'predicates';
    yield serializers.serialize(
      object.predicates,
      specifiedType: const FullType(BuiltList, [FullType(AlarmRuleKeyFilterPredicate)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmConditionFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlarmConditionFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'argument':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.argument = valueDes;
          break;
        case r'valueType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityKeyValueType),
          ) as EntityKeyValueType;
          result.valueType = valueDes;
          break;
        case r'operation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AlarmRuleComplexOperation),
          ) as AlarmRuleComplexOperation?;
          if (valueDes == null) continue;
          result.operation = valueDes;
          break;
        case r'predicates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AlarmRuleKeyFilterPredicate)]),
          ) as BuiltList<AlarmRuleKeyFilterPredicate>;
          result.predicates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmConditionFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmConditionFilterBuilder();
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


