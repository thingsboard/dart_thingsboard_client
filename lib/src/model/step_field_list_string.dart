// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'step_field_list_string.g.dart';

/// StepFieldListString
///
/// Properties:
/// * [userChoice] 
/// * [value] 
@BuiltValue()
abstract class StepFieldListString implements Built<StepFieldListString, StepFieldListStringBuilder> {
  @BuiltValueField(wireName: r'userChoice')
  bool? get userChoice;

  @BuiltValueField(wireName: r'value')
  BuiltList<String>? get value;

  StepFieldListString._();

  factory StepFieldListString([void updates(StepFieldListStringBuilder b)]) = _$StepFieldListString;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StepFieldListStringBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StepFieldListString> get serializer => _$StepFieldListStringSerializer();
}

class _$StepFieldListStringSerializer implements PrimitiveSerializer<StepFieldListString> {
  @override
  final Iterable<Type> types = const [StepFieldListString, _$StepFieldListString];

  @override
  final String wireName = r'StepFieldListString';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StepFieldListString object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userChoice != null) {
      yield r'userChoice';
      yield serializers.serialize(
        object.userChoice,
        specifiedType: const FullType(bool),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StepFieldListString object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StepFieldListStringBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userChoice':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.userChoice = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
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
  StepFieldListString deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StepFieldListStringBuilder();
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


