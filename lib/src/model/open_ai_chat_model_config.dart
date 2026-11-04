// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ai_model_config.dart';
import 'package:thingsboard_client/src/model/ai_model_type.dart';
import 'package:thingsboard_client/src/model/open_ai_provider_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'open_ai_chat_model_config.g.dart';

/// OpenAiChatModelConfig
///
/// Properties:
/// * [provider] 
/// * [providerConfig] 
/// * [modelId] 
/// * [temperature] 
/// * [topP] 
/// * [frequencyPenalty] 
/// * [presencePenalty] 
/// * [maxOutputTokens] 
/// * [timeoutSeconds] 
/// * [maxRetries] 
/// * [modelType] 
@BuiltValue()
abstract class OpenAiChatModelConfig implements AiModelConfig, Built<OpenAiChatModelConfig, OpenAiChatModelConfigBuilder> {
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
  OpenAiProviderConfig get providerConfig;

  @BuiltValueField(wireName: r'topP')
  double? get topP;

  @BuiltValueField(wireName: r'frequencyPenalty')
  double? get frequencyPenalty;

  @BuiltValueField(wireName: r'maxOutputTokens')
  int? get maxOutputTokens;

  OpenAiChatModelConfig._();

  factory OpenAiChatModelConfig([void updates(OpenAiChatModelConfigBuilder b)]) = _$OpenAiChatModelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OpenAiChatModelConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OpenAiChatModelConfig> get serializer => _$OpenAiChatModelConfigSerializer();
}

class _$OpenAiChatModelConfigSerializer implements PrimitiveSerializer<OpenAiChatModelConfig> {
  @override
  final Iterable<Type> types = const [OpenAiChatModelConfig, _$OpenAiChatModelConfig];

  @override
  final String wireName = r'OpenAiChatModelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OpenAiChatModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
      specifiedType: const FullType(OpenAiProviderConfig),
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
    OpenAiChatModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OpenAiChatModelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'presencePenalty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.presencePenalty = valueDes;
          break;
        case r'maxRetries':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.maxRetries = valueDes;
          break;
        case r'modelId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.modelId = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provider = valueDes;
          break;
        case r'temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.temperature = valueDes;
          break;
        case r'timeoutSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timeoutSeconds = valueDes;
          break;
        case r'modelType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AiModelType),
          ) as AiModelType?;
          if (valueDes == null) continue;
          result.modelType = valueDes;
          break;
        case r'providerConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OpenAiProviderConfig),
          ) as OpenAiProviderConfig;
          result.providerConfig.replace(valueDes);
          break;
        case r'topP':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.topP = valueDes;
          break;
        case r'frequencyPenalty':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(double),
          ) as double?;
          if (valueDes == null) continue;
          result.frequencyPenalty = valueDes;
          break;
        case r'maxOutputTokens':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
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
  OpenAiChatModelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpenAiChatModelConfigBuilder();
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


