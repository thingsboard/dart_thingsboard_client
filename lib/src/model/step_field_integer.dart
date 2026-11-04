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

part 'step_field_integer.g.dart';

/// StepFieldInteger
///
/// Properties:
/// * [value] 
/// * [userChoice] 
@BuiltValue()
abstract class StepFieldInteger implements Built<StepFieldInteger, StepFieldIntegerBuilder> {
  @BuiltValueField(wireName: r'value')
  int? get value;

  @BuiltValueField(wireName: r'userChoice')
  bool? get userChoice;

  StepFieldInteger._();

  factory StepFieldInteger([void updates(StepFieldIntegerBuilder b)]) = _$StepFieldInteger;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepFieldIntegerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepFieldInteger> get serializer => _$StepFieldIntegerSerializer();
}

class _$StepFieldIntegerSerializer implements PrimitiveSerializer<StepFieldInteger> {
  @override
  final Iterable<Type> types = const [StepFieldInteger, _$StepFieldInteger];

  @override
  final String wireName = r'StepFieldInteger';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepFieldInteger object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(int),
      );
    }
    if (object.userChoice != null) {
      yield r'userChoice';
      yield serializers.serialize(
        object.userChoice,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StepFieldInteger object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StepFieldIntegerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'userChoice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.userChoice = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StepFieldInteger deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepFieldIntegerBuilder();
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


