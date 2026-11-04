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
import 'package:thingsboard_client/src/model/key_filter_predicate.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'complex_filter_predicate.g.dart';

/// ComplexFilterPredicate
///
/// Properties:
/// * [type]
/// * [operation]
/// * [predicates]
@BuiltValue()
abstract class ComplexFilterPredicate
    implements
        KeyFilterPredicate,
        Built<ComplexFilterPredicate, ComplexFilterPredicateBuilder> {
  @BuiltValueField(wireName: r'predicates')
  BuiltList<KeyFilterPredicate>? get predicates;

  @BuiltValueField(wireName: r'operation')
  AlarmRuleComplexOperation? get operation;
  // enum operationEnum {  AND,  OR,  };

  ComplexFilterPredicate._();

  factory ComplexFilterPredicate([
    void updates(ComplexFilterPredicateBuilder b),
  ]) = _$ComplexFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ComplexFilterPredicateBuilder b) =>
      b..type = r'COMPLEX';

  @BuiltValueSerializer(custom: true)
  static Serializer<ComplexFilterPredicate> get serializer =>
      _$ComplexFilterPredicateSerializer();
}

class _$ComplexFilterPredicateSerializer
    implements PrimitiveSerializer<ComplexFilterPredicate> {
  @override
  final Iterable<Type> types = const [
    ComplexFilterPredicate,
    _$ComplexFilterPredicate,
  ];

  @override
  final String wireName = r'ComplexFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ComplexFilterPredicate object, {
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
    if (object.predicates != null) {
      yield r'predicates';
      yield serializers.serialize(
        object.predicates,
        specifiedType: const FullType(BuiltList, [
          FullType(KeyFilterPredicate),
        ]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ComplexFilterPredicate object, {
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
    required ComplexFilterPredicateBuilder result,
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
                    specifiedType: const FullType.nullable(
                      AlarmRuleComplexOperation,
                    ),
                  )
                  as AlarmRuleComplexOperation?;
          if (valueDes == null) continue;
          result.operation = valueDes;
          break;
        case r'predicates':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(KeyFilterPredicate),
                    ]),
                  )
                  as BuiltList<KeyFilterPredicate>?;
          if (valueDes == null) continue;
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
  ComplexFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ComplexFilterPredicateBuilder();
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
