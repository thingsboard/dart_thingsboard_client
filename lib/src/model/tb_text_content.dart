// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tb_content.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_text_content.g.dart';

/// Text-based content part of a user's prompt
///
/// Properties:
/// * [contentType] 
/// * [text] - The text content
@BuiltValue()
abstract class TbTextContent implements TbContent, Built<TbTextContent, TbTextContentBuilder> {
  /// The text content
  @BuiltValueField(wireName: r'text')
  String get text;

  TbTextContent._();

  factory TbTextContent([void updates(TbTextContentBuilder b)]) = _$TbTextContent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbTextContentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbTextContent> get serializer => _$TbTextContentSerializer();
}

class _$TbTextContentSerializer implements PrimitiveSerializer<TbTextContent> {
  @override
  final Iterable<Type> types = const [TbTextContent, _$TbTextContent];

  @override
  final String wireName = r'TbTextContent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbTextContent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contentType';
    yield serializers.serialize(
      object.contentType,
      specifiedType: const FullType(String),
    );
    yield r'text';
    yield serializers.serialize(
      object.text,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TbTextContent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TbTextContentBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contentType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contentType = valueDes;
          break;
        case r'text':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.text = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbTextContent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbTextContentBuilder();
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


