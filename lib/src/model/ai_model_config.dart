// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/git_hub_models_chat_model_config.dart';
import 'package:thingsboard_client/src/model/google_vertex_ai_gemini_chat_model_config.dart';
import 'package:thingsboard_client/src/model/azure_open_ai_chat_model_config.dart';
import 'package:thingsboard_client/src/model/ollama_chat_model_config.dart';
import 'package:thingsboard_client/src/model/amazon_bedrock_chat_model_config.dart';
import 'package:thingsboard_client/src/model/open_ai_chat_model_config.dart';
import 'package:thingsboard_client/src/model/mistral_ai_chat_model_config.dart';
import 'package:thingsboard_client/src/model/anthropic_chat_model_config.dart';
import 'package:thingsboard_client/src/model/google_ai_gemini_chat_model_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_model_config.g.dart';

/// Root configuration for AI models
///
/// Properties:
/// * [provider] 
@BuiltValue(instantiable: false)
abstract class AiModelConfig  {
  @BuiltValueField(wireName: r'provider')
  String get provider;

  static const String discriminatorFieldName = r'provider';

  static const Map<String, Type> discriminatorMapping = {
    r'AMAZON_BEDROCK': AmazonBedrockChatModelConfig,
    r'ANTHROPIC': AnthropicChatModelConfig,
    r'AZURE_OPENAI': AzureOpenAiChatModelConfig,
    r'GITHUB_MODELS': GitHubModelsChatModelConfig,
    r'GOOGLE_AI_GEMINI': GoogleAiGeminiChatModelConfig,
    r'GOOGLE_VERTEX_AI_GEMINI': GoogleVertexAiGeminiChatModelConfig,
    r'MISTRAL_AI': MistralAiChatModelConfig,
    r'OLLAMA': OllamaChatModelConfig,
    r'OPENAI': OpenAiChatModelConfig,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<AiModelConfig> get serializer => _$AiModelConfigSerializer();
}

extension AiModelConfigDiscriminatorExt on AiModelConfig {
    String? get discriminatorValue {
        if (this is AmazonBedrockChatModelConfig) {
            return r'AMAZON_BEDROCK';
        }
        if (this is AnthropicChatModelConfig) {
            return r'ANTHROPIC';
        }
        if (this is AzureOpenAiChatModelConfig) {
            return r'AZURE_OPENAI';
        }
        if (this is GitHubModelsChatModelConfig) {
            return r'GITHUB_MODELS';
        }
        if (this is GoogleAiGeminiChatModelConfig) {
            return r'GOOGLE_AI_GEMINI';
        }
        if (this is GoogleVertexAiGeminiChatModelConfig) {
            return r'GOOGLE_VERTEX_AI_GEMINI';
        }
        if (this is MistralAiChatModelConfig) {
            return r'MISTRAL_AI';
        }
        if (this is OllamaChatModelConfig) {
            return r'OLLAMA';
        }
        if (this is OpenAiChatModelConfig) {
            return r'OPENAI';
        }
        return null;
    }
}
extension AiModelConfigBuilderDiscriminatorExt on AiModelConfigBuilder {
    String? get discriminatorValue {
        if (this is AmazonBedrockChatModelConfigBuilder) {
            return r'AMAZON_BEDROCK';
        }
        if (this is AnthropicChatModelConfigBuilder) {
            return r'ANTHROPIC';
        }
        if (this is AzureOpenAiChatModelConfigBuilder) {
            return r'AZURE_OPENAI';
        }
        if (this is GitHubModelsChatModelConfigBuilder) {
            return r'GITHUB_MODELS';
        }
        if (this is GoogleAiGeminiChatModelConfigBuilder) {
            return r'GOOGLE_AI_GEMINI';
        }
        if (this is GoogleVertexAiGeminiChatModelConfigBuilder) {
            return r'GOOGLE_VERTEX_AI_GEMINI';
        }
        if (this is MistralAiChatModelConfigBuilder) {
            return r'MISTRAL_AI';
        }
        if (this is OllamaChatModelConfigBuilder) {
            return r'OLLAMA';
        }
        if (this is OpenAiChatModelConfigBuilder) {
            return r'OPENAI';
        }
        return null;
    }
}

class _$AiModelConfigSerializer implements PrimitiveSerializer<AiModelConfig> {
  @override
  final Iterable<Type> types = const [AiModelConfig];

  @override
  final String wireName = r'AiModelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'provider';
    yield serializers.serialize(
      object.provider,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AiModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AmazonBedrockChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(AmazonBedrockChatModelConfig))!;
    }
    if (object is AnthropicChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(AnthropicChatModelConfig))!;
    }
    if (object is AzureOpenAiChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(AzureOpenAiChatModelConfig))!;
    }
    if (object is GitHubModelsChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(GitHubModelsChatModelConfig))!;
    }
    if (object is GoogleAiGeminiChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(GoogleAiGeminiChatModelConfig))!;
    }
    if (object is GoogleVertexAiGeminiChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(GoogleVertexAiGeminiChatModelConfig))!;
    }
    if (object is MistralAiChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(MistralAiChatModelConfig))!;
    }
    if (object is OllamaChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(OllamaChatModelConfig))!;
    }
    if (object is OpenAiChatModelConfig) {
      return serializers.serialize(object, specifiedType: FullType(OpenAiChatModelConfig))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  AiModelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(AiModelConfig.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'AMAZON_BEDROCK':
        return serializers.deserialize(serialized, specifiedType: FullType(AmazonBedrockChatModelConfig)) as AmazonBedrockChatModelConfig;
      case r'ANTHROPIC':
        return serializers.deserialize(serialized, specifiedType: FullType(AnthropicChatModelConfig)) as AnthropicChatModelConfig;
      case r'AZURE_OPENAI':
        return serializers.deserialize(serialized, specifiedType: FullType(AzureOpenAiChatModelConfig)) as AzureOpenAiChatModelConfig;
      case r'GITHUB_MODELS':
        return serializers.deserialize(serialized, specifiedType: FullType(GitHubModelsChatModelConfig)) as GitHubModelsChatModelConfig;
      case r'GOOGLE_AI_GEMINI':
        return serializers.deserialize(serialized, specifiedType: FullType(GoogleAiGeminiChatModelConfig)) as GoogleAiGeminiChatModelConfig;
      case r'GOOGLE_VERTEX_AI_GEMINI':
        return serializers.deserialize(serialized, specifiedType: FullType(GoogleVertexAiGeminiChatModelConfig)) as GoogleVertexAiGeminiChatModelConfig;
      case r'MISTRAL_AI':
        return serializers.deserialize(serialized, specifiedType: FullType(MistralAiChatModelConfig)) as MistralAiChatModelConfig;
      case r'OLLAMA':
        return serializers.deserialize(serialized, specifiedType: FullType(OllamaChatModelConfig)) as OllamaChatModelConfig;
      case r'OPENAI':
        return serializers.deserialize(serialized, specifiedType: FullType(OpenAiChatModelConfig)) as OpenAiChatModelConfig;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($AiModelConfig)) as $AiModelConfig;
    }
  }
}


/// a concrete implementation of [AiModelConfig], since [AiModelConfig] is not instantiable
@BuiltValue(instantiable: true)
abstract class $AiModelConfig implements AiModelConfig, Built<$AiModelConfig, $AiModelConfigBuilder> {
  $AiModelConfig._();

  factory $AiModelConfig([void Function($AiModelConfigBuilder)? updates]) = _$$AiModelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($AiModelConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$AiModelConfig> get serializer => _$$AiModelConfigSerializer();
}

class _$$AiModelConfigSerializer implements PrimitiveSerializer<$AiModelConfig> {
  @override
  final Iterable<Type> types = const [$AiModelConfig, _$$AiModelConfig];

  @override
  final String wireName = r'$AiModelConfig';

  @override
  Object serialize(
    Serializers serializers,
    $AiModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(AiModelConfig))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiModelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $AiModelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $AiModelConfigBuilder();
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

