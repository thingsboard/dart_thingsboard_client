// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dynamic_value_string.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'filter_predicate_value_string.g.dart';

/// FilterPredicateValueString
///
/// Properties:
/// * [defaultValue]
/// * [userValue]
/// * [dynamicValue]
@BuiltValue()
abstract class FilterPredicateValueString
    implements
        Built<FilterPredicateValueString, FilterPredicateValueStringBuilder> {
  @BuiltValueField(wireName: r'defaultValue')
  String? get defaultValue;

  @BuiltValueField(wireName: r'userValue')
  String? get userValue;

  @BuiltValueField(wireName: r'dynamicValue')
  DynamicValueString? get dynamicValue;

  FilterPredicateValueString._();

  factory FilterPredicateValueString([
    void updates(FilterPredicateValueStringBuilder b),
  ]) = _$FilterPredicateValueString;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilterPredicateValueStringBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilterPredicateValueString> get serializer =>
      _$FilterPredicateValueStringSerializer();
}

class _$FilterPredicateValueStringSerializer
    implements PrimitiveSerializer<FilterPredicateValueString> {
  @override
  final Iterable<Type> types = const [
    FilterPredicateValueString,
    _$FilterPredicateValueString,
  ];

  @override
  final String wireName = r'FilterPredicateValueString';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilterPredicateValueString object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.defaultValue != null) {
      yield r'defaultValue';
      yield serializers.serialize(
        object.defaultValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.userValue != null) {
      yield r'userValue';
      yield serializers.serialize(
        object.userValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.dynamicValue != null) {
      yield r'dynamicValue';
      yield serializers.serialize(
        object.dynamicValue,
        specifiedType: const FullType(DynamicValueString),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FilterPredicateValueString object, {
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
    required FilterPredicateValueStringBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'defaultValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.defaultValue = valueDes;
          break;
        case r'userValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userValue = valueDes;
          break;
        case r'dynamicValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DynamicValueString),
                  )
                  as DynamicValueString?;
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
  FilterPredicateValueString deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilterPredicateValueStringBuilder();
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
