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

part 'step_field_string.g.dart';

/// StepFieldString
///
/// Properties:
/// * [value] 
/// * [userChoice] 
@BuiltValue()
abstract class StepFieldString implements Built<StepFieldString, StepFieldStringBuilder> {
  @BuiltValueField(wireName: r'value')
  String? get value;

  @BuiltValueField(wireName: r'userChoice')
  bool? get userChoice;

  StepFieldString._();

  factory StepFieldString([void updates(StepFieldStringBuilder b)]) = _$StepFieldString;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepFieldStringBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepFieldString> get serializer => _$StepFieldStringSerializer();
}

class _$StepFieldStringSerializer implements PrimitiveSerializer<StepFieldString> {
  @override
  final Iterable<Type> types = const [StepFieldString, _$StepFieldString];

  @override
  final String wireName = r'StepFieldString';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepFieldString object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
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
    StepFieldString object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StepFieldStringBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  StepFieldString deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepFieldStringBuilder();
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


