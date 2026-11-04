// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_condition_value_integer.g.dart';

/// AlarmConditionValueInteger
///
/// Properties:
/// * [staticValue]
/// * [dynamicValueArgument]
@BuiltValue()
abstract class AlarmConditionValueInteger
    implements
        Built<AlarmConditionValueInteger, AlarmConditionValueIntegerBuilder> {
  @BuiltValueField(wireName: r'staticValue')
  int? get staticValue;

  @BuiltValueField(wireName: r'dynamicValueArgument')
  String? get dynamicValueArgument;

  AlarmConditionValueInteger._();

  factory AlarmConditionValueInteger([
    void updates(AlarmConditionValueIntegerBuilder b),
  ]) = _$AlarmConditionValueInteger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmConditionValueIntegerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmConditionValueInteger> get serializer =>
      _$AlarmConditionValueIntegerSerializer();
}

class _$AlarmConditionValueIntegerSerializer
    implements PrimitiveSerializer<AlarmConditionValueInteger> {
  @override
  final Iterable<Type> types = const [
    AlarmConditionValueInteger,
    _$AlarmConditionValueInteger,
  ];

  @override
  final String wireName = r'AlarmConditionValueInteger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmConditionValueInteger object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.staticValue != null) {
      yield r'staticValue';
      yield serializers.serialize(
        object.staticValue,
        specifiedType: const FullType(int),
      );
    }
    if (object.dynamicValueArgument != null) {
      yield r'dynamicValueArgument';
      yield serializers.serialize(
        object.dynamicValueArgument,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmConditionValueInteger object, {
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
    required AlarmConditionValueIntegerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'staticValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.staticValue = valueDes;
          break;
        case r'dynamicValueArgument':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.dynamicValueArgument = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmConditionValueInteger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmConditionValueIntegerBuilder();
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
