// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dynamic_value_double.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_predicate_value_double.g.dart';

/// FilterPredicateValueDouble
///
/// Properties:
/// * [defaultValue] 
/// * [userValue] 
/// * [dynamicValue] 
@BuiltValue()
abstract class FilterPredicateValueDouble implements Built<FilterPredicateValueDouble, FilterPredicateValueDoubleBuilder> {
  @BuiltValueField(wireName: r'defaultValue')
  double? get defaultValue;

  @BuiltValueField(wireName: r'userValue')
  double? get userValue;

  @BuiltValueField(wireName: r'dynamicValue')
  DynamicValueDouble? get dynamicValue;

  FilterPredicateValueDouble._();

  factory FilterPredicateValueDouble([void updates(FilterPredicateValueDoubleBuilder b)]) = _$FilterPredicateValueDouble;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterPredicateValueDoubleBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterPredicateValueDouble> get serializer => _$FilterPredicateValueDoubleSerializer();
}

class _$FilterPredicateValueDoubleSerializer implements PrimitiveSerializer<FilterPredicateValueDouble> {
  @override
  final Iterable<Type> types = const [FilterPredicateValueDouble, _$FilterPredicateValueDouble];

  @override
  final String wireName = r'FilterPredicateValueDouble';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterPredicateValueDouble object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType(double),
      );
    }
    if (object.userValue != null) {
      yield r'userValue';
      yield serializers.serialize(
        object.userValue,
        specifiedType: const FullType(double),
      );
    }
    if (object.dynamicValue != null) {
      yield r'dynamicValue';
      yield serializers.serialize(
        object.dynamicValue,
        specifiedType: const FullType(DynamicValueDouble),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterPredicateValueDouble object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterPredicateValueDoubleBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'userValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.userValue = valueDes;
          break;
        case r'dynamicValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DynamicValueDouble),
          ) as DynamicValueDouble?;
          if (valueDes == null) continue;
          result.dynamicValue.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilterPredicateValueDouble deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterPredicateValueDoubleBuilder();
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


