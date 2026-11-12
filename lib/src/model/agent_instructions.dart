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

part 'agent_instructions.g.dart';

/// AgentInstructions
///
/// Properties:
/// * [instructions] - Resolved install/provision instructions for the selected method
@BuiltValue()
abstract class AgentInstructions
    implements Built<AgentInstructions, AgentInstructionsBuilder> {
  /// Resolved install/provision instructions for the selected method
  @BuiltValueField(wireName: r'instructions')
  String? get instructions;

  AgentInstructions._();

  factory AgentInstructions([void updates(AgentInstructionsBuilder b)]) =
      _$AgentInstructions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentInstructionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentInstructions> get serializer =>
      _$AgentInstructionsSerializer();
}

class _$AgentInstructionsSerializer
    implements PrimitiveSerializer<AgentInstructions> {
  @override
  final Iterable<Type> types = const [AgentInstructions, _$AgentInstructions];

  @override
  final String wireName = r'AgentInstructions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentInstructions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.instructions != null) {
      yield r'instructions';
      yield serializers.serialize(
        object.instructions,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AgentInstructions object, {
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
    required AgentInstructionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instructions':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.instructions = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AgentInstructions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentInstructionsBuilder();
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
