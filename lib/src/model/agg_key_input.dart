// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/agg_input.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agg_key_input.g.dart';

/// AggKeyInput
///
/// Properties:
/// * [type]
/// * [key]
@BuiltValue()
abstract class AggKeyInput
    implements AggInput, Built<AggKeyInput, AggKeyInputBuilder> {
  @BuiltValueField(wireName: r'key')
  String? get key;

  AggKeyInput._();

  factory AggKeyInput([void updates(AggKeyInputBuilder b)]) = _$AggKeyInput;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AggKeyInputBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AggKeyInput> get serializer => _$AggKeyInputSerializer();
}

class _$AggKeyInputSerializer implements PrimitiveSerializer<AggKeyInput> {
  @override
  final Iterable<Type> types = const [AggKeyInput, _$AggKeyInput];

  @override
  final String wireName = r'AggKeyInput';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AggKeyInput object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AggKeyInput object, {
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
    required AggKeyInputBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'key':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.key = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AggKeyInput deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AggKeyInputBuilder();
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
