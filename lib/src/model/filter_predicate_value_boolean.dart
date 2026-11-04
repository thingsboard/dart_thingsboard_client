// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dynamic_value_boolean.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_predicate_value_boolean.g.dart';

/// FilterPredicateValueBoolean
///
/// Properties:
/// * [defaultValue] 
/// * [userValue] 
/// * [dynamicValue] 
@BuiltValue()
abstract class FilterPredicateValueBoolean implements Built<FilterPredicateValueBoolean, FilterPredicateValueBooleanBuilder> {
  @BuiltValueField(wireName: r'defaultValue')
  bool? get defaultValue;

  @BuiltValueField(wireName: r'userValue')
  bool? get userValue;

  @BuiltValueField(wireName: r'dynamicValue')
  DynamicValueBoolean? get dynamicValue;

  FilterPredicateValueBoolean._();

  factory FilterPredicateValueBoolean([void updates(FilterPredicateValueBooleanBuilder b)]) = _$FilterPredicateValueBoolean;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterPredicateValueBooleanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterPredicateValueBoolean> get serializer => _$FilterPredicateValueBooleanSerializer();
}

class _$FilterPredicateValueBooleanSerializer implements PrimitiveSerializer<FilterPredicateValueBoolean> {
  @override
  final Iterable<Type> types = const [FilterPredicateValueBoolean, _$FilterPredicateValueBoolean];

  @override
  final String wireName = r'FilterPredicateValueBoolean';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterPredicateValueBoolean object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.userValue != null) {
      yield r'userValue';
      yield serializers.serialize(
        object.userValue,
        specifiedType: const FullType(bool),
      );
    }
    if (object.dynamicValue != null) {
      yield r'dynamicValue';
      yield serializers.serialize(
        object.dynamicValue,
        specifiedType: const FullType(DynamicValueBoolean),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterPredicateValueBoolean object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilterPredicateValueBooleanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaultValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'userValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.userValue = valueDes;
          break;
        case r'dynamicValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DynamicValueBoolean),
          ) as DynamicValueBoolean?;
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
  FilterPredicateValueBoolean deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterPredicateValueBooleanBuilder();
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


