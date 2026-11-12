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

part 'step_field_boolean.g.dart';

/// StepFieldBoolean
///
/// Properties:
/// * [value]
/// * [userChoice]
@BuiltValue()
abstract class StepFieldBoolean
    implements Built<StepFieldBoolean, StepFieldBooleanBuilder> {
  @BuiltValueField(wireName: r'value')
  bool? get value;

  @BuiltValueField(wireName: r'userChoice')
  bool? get userChoice;

  StepFieldBoolean._();

  factory StepFieldBoolean([void updates(StepFieldBooleanBuilder b)]) =
      _$StepFieldBoolean;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepFieldBooleanBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepFieldBoolean> get serializer =>
      _$StepFieldBooleanSerializer();
}

class _$StepFieldBooleanSerializer
    implements PrimitiveSerializer<StepFieldBoolean> {
  @override
  final Iterable<Type> types = const [StepFieldBoolean, _$StepFieldBoolean];

  @override
  final String wireName = r'StepFieldBoolean';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepFieldBoolean object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(bool),
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
    StepFieldBoolean object, {
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
    required StepFieldBooleanBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'userChoice':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
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
  StepFieldBoolean deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepFieldBooleanBuilder();
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
