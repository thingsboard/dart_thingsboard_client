// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/filter_predicate_value_double.dart';
import 'package:thingsboard_client/src/model/key_filter_predicate.dart';
import 'package:thingsboard_client/src/model/numeric_operation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'numeric_filter_predicate.g.dart';

/// NumericFilterPredicate
///
/// Properties:
/// * [type] 
/// * [operation] 
/// * [value] - The value associated with the filter predicate
@BuiltValue()
abstract class NumericFilterPredicate implements KeyFilterPredicate, Built<NumericFilterPredicate, NumericFilterPredicateBuilder> {
  @BuiltValueField(wireName: r'operation')
  NumericOperation? get operation;
  // enum operationEnum {  EQUAL,  NOT_EQUAL,  GREATER,  LESS,  GREATER_OR_EQUAL,  LESS_OR_EQUAL,  };

  /// The value associated with the filter predicate
  @BuiltValueField(wireName: r'value')
  FilterPredicateValueDouble? get value;

  NumericFilterPredicate._();

  factory NumericFilterPredicate([void updates(NumericFilterPredicateBuilder b)]) = _$NumericFilterPredicate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NumericFilterPredicateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NumericFilterPredicate> get serializer => _$NumericFilterPredicateSerializer();
}

class _$NumericFilterPredicateSerializer implements PrimitiveSerializer<NumericFilterPredicate> {
  @override
  final Iterable<Type> types = const [NumericFilterPredicate, _$NumericFilterPredicate];

  @override
  final String wireName = r'NumericFilterPredicate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NumericFilterPredicate object, {
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
        specifiedType: const FullType(NumericOperation),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(FilterPredicateValueDouble),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NumericFilterPredicate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NumericFilterPredicateBuilder result,
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
            specifiedType: const FullType.nullable(NumericOperation),
          ) as NumericOperation?;
          if (valueDes == null) continue;
          result.operation = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FilterPredicateValueDouble),
          ) as FilterPredicateValueDouble?;
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
  NumericFilterPredicate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NumericFilterPredicateBuilder();
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


