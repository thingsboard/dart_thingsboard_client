// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tb_content.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_user_message.g.dart';

/// TbUserMessage
///
/// Properties:
/// * [contents] - A list of content parts that make up the complete user prompt
@BuiltValue()
abstract class TbUserMessage
    implements Built<TbUserMessage, TbUserMessageBuilder> {
  /// A list of content parts that make up the complete user prompt
  @BuiltValueField(wireName: r'contents')
  BuiltList<TbContent> get contents;

  TbUserMessage._();

  factory TbUserMessage([void updates(TbUserMessageBuilder b)]) =
      _$TbUserMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbUserMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbUserMessage> get serializer =>
      _$TbUserMessageSerializer();
}

class _$TbUserMessageSerializer implements PrimitiveSerializer<TbUserMessage> {
  @override
  final Iterable<Type> types = const [TbUserMessage, _$TbUserMessage];

  @override
  final String wireName = r'TbUserMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbUserMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'contents';
    yield serializers.serialize(
      object.contents,
      specifiedType: const FullType(BuiltList, [FullType(TbContent)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TbUserMessage object, {
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
    required TbUserMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(TbContent),
                    ]),
                  )
                  as BuiltList<TbContent>;
          result.contents.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbUserMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbUserMessageBuilder();
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
