// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/boolean_operation.dart';
import 'package:thingsboard_client/src/model/key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/filter_predicate_value_boolean.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'boolean_filter_predicate.g.dart';

/// BooleanFilterPredicate
///
/// Properties:
/// * [type]
/// * [operation]
/// * [value] - The value associated with the filter predicate
@BuiltValue()
abstract class BooleanFilterPredicate
    implements
        KeyFilterPredicate,
        Built<BooleanFilterPredicate, BooleanFilterPredicateBuilder> {
  @BuiltValueField(wireName: r'operation')
  BooleanOperation? get operation;
  // enum operationEnum {  EQUAL,  NOT_EQUAL,  };

  /// The value associated with the filter predicate
  @BuiltValueField(wireName: r'value')
  FilterPredicateValueBoolean? get value;

  BooleanFilterPredicate._();

  factory BooleanFilterPredicate([
    void updates(BooleanFilterPredicateBuilder b),
  ]) = _$BooleanFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BooleanFilterPredicateBuilder b) =>
      b..type = r'BOOLEAN';

  @BuiltValueSerializer(custom: true)
  static Serializer<BooleanFilterPredicate> get serializer =>
      _$BooleanFilterPredicateSerializer();
}

class _$BooleanFilterPredicateSerializer
    implements PrimitiveSerializer<BooleanFilterPredicate> {
  @override
  final Iterable<Type> types = const [
    BooleanFilterPredicate,
    _$BooleanFilterPredicate,
  ];

  @override
  final String wireName = r'BooleanFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BooleanFilterPredicate object, {
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
        specifiedType: const FullType(BooleanOperation),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(FilterPredicateValueBoolean),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BooleanFilterPredicate object, {
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
    required BooleanFilterPredicateBuilder result,
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
                    specifiedType: const FullType.nullable(BooleanOperation),
                  )
                  as BooleanOperation?;
          if (valueDes == null) continue;
          result.operation = valueDes;
          break;
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      FilterPredicateValueBoolean,
                    ),
                  )
                  as FilterPredicateValueBoolean?;
          if (valueDes == null) continue;
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
  BooleanFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BooleanFilterPredicateBuilder();
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
