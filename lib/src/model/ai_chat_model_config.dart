// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/ai_model_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ai_chat_model_config.g.dart';

/// AiChatModelConfig
///
/// Properties:
/// * [modelType] 
@BuiltValue()
abstract class AiChatModelConfig implements Built<AiChatModelConfig, AiChatModelConfigBuilder> {
  @BuiltValueField(wireName: r'modelType')
  AiModelType? get modelType;
  // enum modelTypeEnum {  CHAT,  };

  AiChatModelConfig._();

  factory AiChatModelConfig([void updates(AiChatModelConfigBuilder b)]) = _$AiChatModelConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AiChatModelConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AiChatModelConfig> get serializer => _$AiChatModelConfigSerializer();
}

class _$AiChatModelConfigSerializer implements PrimitiveSerializer<AiChatModelConfig> {
  @override
  final Iterable<Type> types = const [AiChatModelConfig, _$AiChatModelConfig];

  @override
  final String wireName = r'AiChatModelConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AiChatModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.modelType != null) {
      yield r'modelType';
      yield serializers.serialize(
        object.modelType,
        specifiedType: const FullType(AiModelType),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AiChatModelConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AiChatModelConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'modelType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AiModelType),
          ) as AiModelType?;
          if (valueDes == null) continue;
          result.modelType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AiChatModelConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AiChatModelConfigBuilder();
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


