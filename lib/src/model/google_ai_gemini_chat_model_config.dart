// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/google_ai_gemini_provider_config.dart';
import 'package:thingsboard_client/src/model/ai_model_config.dart';
import 'package:thingsboard_client/src/model/ai_model_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'google_ai_gemini_chat_model_config.g.dart';

/// GoogleAiGeminiChatModelConfig
///
/// Properties:
/// * [provider]
/// * [providerConfig]
/// * [modelId]
/// * [temperature]
/// * [topP]
/// * [topK]
/// * [frequencyPenalty]
/// * [presencePenalty]
/// * [maxOutputTokens]
/// * [timeoutSeconds]
/// * [maxRetries]
/// * [modelType]
@BuiltValue()
abstract class GoogleAiGeminiChatModelConfig
    implements
        AiModelConfig,
        Built<
          GoogleAiGeminiChatModelConfig,
          GoogleAiGeminiChatModelConfigBuilder
        > {
  @BuiltValueField(wireName: r'topK')
  int? get topK;

  @BuiltValueField(wireName: r'presencePenalty')
  double? get presencePenalty;

  @BuiltValueField(wireName: r'maxRetries')
  int? get maxRetries;

  @BuiltValueField(wireName: r'modelId')
  String get modelId;

  @BuiltValueField(wireName: r'temperature')
  double? get temperature;

  @BuiltValueField(wireName: r'timeoutSeconds')
  int? get timeoutSeconds;

  @BuiltValueField(wireName: r'modelType')
  AiModelType? get modelType;
  // enum modelTypeEnum {  CHAT,  };

  @BuiltValueField(wireName: r'providerConfig')
  GoogleAiGeminiProviderConfig get providerConfig;

  @BuiltValueField(wireName: r'topP')
  double? get topP;

  @BuiltValueField(wireName: r'frequencyPenalty')
  double? get frequencyPenalty;

  @BuiltValueField(wireName: r'maxOutputTokens')
  int? get maxOutputTokens;

  GoogleAiGeminiChatModelConfig._();

  factory GoogleAiGeminiChatModelConfig([
    void updates(GoogleAiGeminiChatModelConfigBuilder b),
  ]) = _$GoogleAiGeminiChatModelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GoogleAiGeminiChatModelConfigBuilder b) =>
      b..provider = r'GOOGLE_AI_GEMINI';

  @BuiltValueSerializer(custom: true)
  static Serializer<GoogleAiGeminiChatModelConfig> get serializer =>
      _$GoogleAiGeminiChatModelConfigSerializer();
}

class _$GoogleAiGeminiChatModelConfigSerializer
    implements PrimitiveSerializer<GoogleAiGeminiChatModelConfig> {
  @override
  final Iterable<Type> types = const [
    GoogleAiGeminiChatModelConfig,
    _$GoogleAiGeminiChatModelConfig,
  ];

  @override
  final String wireName = r'GoogleAiGeminiChatModelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GoogleAiGeminiChatModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.topK != null) {
      yield r'topK';
      yield serializers.serialize(
        object.topK,
        specifiedType: const FullType(int),
      );
    }
    if (object.presencePenalty != null) {
      yield r'presencePenalty';
      yield serializers.serialize(
        object.presencePenalty,
        specifiedType: const FullType(double),
      );
    }
    if (object.maxRetries != null) {
      yield r'maxRetries';
      yield serializers.serialize(
        object.maxRetries,
        specifiedType: const FullType(int),
      );
    }
    yield r'modelId';
    yield serializers.serialize(
      object.modelId,
      specifiedType: const FullType(String),
    );
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
    if (object.temperature != null) {
      yield r'temperature';
      yield serializers.serialize(
        object.temperature,
        specifiedType: const FullType(double),
      );
    }
    if (object.timeoutSeconds != null) {
      yield r'timeoutSeconds';
      yield serializers.serialize(
        object.timeoutSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.modelType != null) {
      yield r'modelType';
      yield serializers.serialize(
        object.modelType,
        specifiedType: const FullType(AiModelType),
      );
    }
    yield r'providerConfig';
    yield serializers.serialize(
      object.providerConfig,
      specifiedType: const FullType(GoogleAiGeminiProviderConfig),
    );
    if (object.topP != null) {
      yield r'topP';
      yield serializers.serialize(
        object.topP,
        specifiedType: const FullType(double),
      );
    }
    if (object.frequencyPenalty != null) {
      yield r'frequencyPenalty';
      yield serializers.serialize(
        object.frequencyPenalty,
        specifiedType: const FullType(double),
      );
    }
    if (object.maxOutputTokens != null) {
      yield r'maxOutputTokens';
      yield serializers.serialize(
        object.maxOutputTokens,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GoogleAiGeminiChatModelConfig object, {
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
    required GoogleAiGeminiChatModelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'topK':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.topK = valueDes;
          break;
        case r'presencePenalty':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.presencePenalty = valueDes;
          break;
        case r'maxRetries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxRetries = valueDes;
          break;
        case r'modelId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.modelId = valueDes;
          break;
        case r'provider':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.provider = valueDes;
          break;
        case r'temperature':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.temperature = valueDes;
          break;
        case r'timeoutSeconds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.timeoutSeconds = valueDes;
          break;
        case r'modelType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AiModelType),
                  )
                  as AiModelType?;
          if (valueDes == null) continue;
          result.modelType = valueDes;
          break;
        case r'providerConfig':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(GoogleAiGeminiProviderConfig),
                  )
                  as GoogleAiGeminiProviderConfig;
          result.providerConfig.replace(valueDes);
          break;
        case r'topP':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.topP = valueDes;
          break;
        case r'frequencyPenalty':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(double),
                  )
                  as double?;
          if (valueDes == null) continue;
          result.frequencyPenalty = valueDes;
          break;
        case r'maxOutputTokens':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.maxOutputTokens = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GoogleAiGeminiChatModelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GoogleAiGeminiChatModelConfigBuilder();
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
