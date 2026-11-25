// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/tb_user_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_chat_prompt.g.dart';

/// TbChatPrompt
///
/// Properties:
/// * [systemMessage] - A system-level instruction that frames the user's input, setting the persona, tone, and constraints for the generated response
/// * [userMessage] - The actual user prompt that will be answered by the AI model
@BuiltValue()
abstract class TbChatPrompt
    implements Built<TbChatPrompt, TbChatPromptBuilder> {
  /// A system-level instruction that frames the user's input, setting the persona, tone, and constraints for the generated response
  @BuiltValueField(wireName: r'systemMessage')
  String? get systemMessage;

  /// The actual user prompt that will be answered by the AI model
  @BuiltValueField(wireName: r'userMessage')
  TbUserMessage get userMessage;

  TbChatPrompt._();

  factory TbChatPrompt([void updates(TbChatPromptBuilder b)]) = _$TbChatPrompt;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbChatPromptBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbChatPrompt> get serializer => _$TbChatPromptSerializer();
}

class _$TbChatPromptSerializer implements PrimitiveSerializer<TbChatPrompt> {
  @override
  final Iterable<Type> types = const [TbChatPrompt, _$TbChatPrompt];

  @override
  final String wireName = r'TbChatPrompt';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbChatPrompt object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.systemMessage != null) {
      yield r'systemMessage';
      yield serializers.serialize(
        object.systemMessage,
        specifiedType: const FullType(String),
      );
    }
    yield r'userMessage';
    yield serializers.serialize(
      object.userMessage,
      specifiedType: const FullType(TbUserMessage),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TbChatPrompt object, {
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
    required TbChatPromptBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'systemMessage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.systemMessage = valueDes;
          break;
        case r'userMessage':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(TbUserMessage),
                  )
                  as TbUserMessage;
          result.userMessage.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbChatPrompt deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbChatPromptBuilder();
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
