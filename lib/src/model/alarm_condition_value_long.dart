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

part 'alarm_condition_value_long.g.dart';

/// AlarmConditionValueLong
///
/// Properties:
/// * [staticValue]
/// * [dynamicValueArgument]
@BuiltValue()
abstract class AlarmConditionValueLong
    implements Built<AlarmConditionValueLong, AlarmConditionValueLongBuilder> {
  @BuiltValueField(wireName: r'staticValue')
  int? get staticValue;

  @BuiltValueField(wireName: r'dynamicValueArgument')
  String? get dynamicValueArgument;

  AlarmConditionValueLong._();

  factory AlarmConditionValueLong([
    void updates(AlarmConditionValueLongBuilder b),
  ]) = _$AlarmConditionValueLong;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmConditionValueLongBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmConditionValueLong> get serializer =>
      _$AlarmConditionValueLongSerializer();
}

class _$AlarmConditionValueLongSerializer
    implements PrimitiveSerializer<AlarmConditionValueLong> {
  @override
  final Iterable<Type> types = const [
    AlarmConditionValueLong,
    _$AlarmConditionValueLong,
  ];

  @override
  final String wireName = r'AlarmConditionValueLong';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmConditionValueLong object, {
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
    AlarmConditionValueLong object, {
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
    required AlarmConditionValueLongBuilder result,
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
  AlarmConditionValueLong deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmConditionValueLongBuilder();
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
