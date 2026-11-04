// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ai_model_config.dart';
import 'package:thingsboard_client/src/model/tb_user_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'tb_chat_request.g.dart';

/// TbChatRequest
///
/// Properties:
/// * [systemMessage] - A system-level instruction that frames the user's input, setting the persona, tone, and constraints for the generated response
/// * [userMessage] - The actual user prompt that will be answered by the AI model
/// * [chatModelConfig] - Configuration of the AI chat model that should execute the request
@BuiltValue()
abstract class TbChatRequest implements Built<TbChatRequest, TbChatRequestBuilder> {
  /// A system-level instruction that frames the user's input, setting the persona, tone, and constraints for the generated response
  @BuiltValueField(wireName: r'systemMessage')
  String? get systemMessage;

  /// The actual user prompt that will be answered by the AI model
  @BuiltValueField(wireName: r'userMessage')
  TbUserMessage get userMessage;

  /// Configuration of the AI chat model that should execute the request
  @BuiltValueField(wireName: r'chatModelConfig')
  AiModelConfig get chatModelConfig;

  TbChatRequest._();

  factory TbChatRequest([void updates(TbChatRequestBuilder b)]) = _$TbChatRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TbChatRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TbChatRequest> get serializer => _$TbChatRequestSerializer();
}

class _$TbChatRequestSerializer implements PrimitiveSerializer<TbChatRequest> {
  @override
  final Iterable<Type> types = const [TbChatRequest, _$TbChatRequest];

  @override
  final String wireName = r'TbChatRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TbChatRequest object, {
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
    yield r'chatModelConfig';
    yield serializers.serialize(
      object.chatModelConfig,
      specifiedType: const FullType(AiModelConfig),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TbChatRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TbChatRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'systemMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.systemMessage = valueDes;
          break;
        case r'userMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TbUserMessage),
          ) as TbUserMessage;
          result.userMessage.replace(valueDes);
          break;
        case r'chatModelConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AiModelConfig),
          ) as AiModelConfig;
          result.chatModelConfig = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TbChatRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TbChatRequestBuilder();
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


