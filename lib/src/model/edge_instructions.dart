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

part 'edge_instructions.g.dart';

/// EdgeInstructions
///
/// Properties:
/// * [instructions] - Markdown with install/upgrade instructions
@BuiltValue()
abstract class EdgeInstructions implements Built<EdgeInstructions, EdgeInstructionsBuilder> {
  /// Markdown with install/upgrade instructions
  @BuiltValueField(wireName: r'instructions')
  String? get instructions;

  EdgeInstructions._();

  factory EdgeInstructions([void updates(EdgeInstructionsBuilder b)]) = _$EdgeInstructions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeInstructionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeInstructions> get serializer => _$EdgeInstructionsSerializer();
}

class _$EdgeInstructionsSerializer implements PrimitiveSerializer<EdgeInstructions> {
  @override
  final Iterable<Type> types = const [EdgeInstructions, _$EdgeInstructions];

  @override
  final String wireName = r'EdgeInstructions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeInstructions object, {
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
    EdgeInstructions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdgeInstructionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'instructions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
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
  EdgeInstructions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeInstructionsBuilder();
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


