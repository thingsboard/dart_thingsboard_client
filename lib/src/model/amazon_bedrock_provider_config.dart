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

part 'amazon_bedrock_provider_config.g.dart';

/// AmazonBedrockProviderConfig
///
/// Properties:
/// * [region] 
/// * [accessKeyId] 
/// * [secretAccessKey] 
@BuiltValue()
abstract class AmazonBedrockProviderConfig implements Built<AmazonBedrockProviderConfig, AmazonBedrockProviderConfigBuilder> {
  @BuiltValueField(wireName: r'region')
  String get region;

  @BuiltValueField(wireName: r'accessKeyId')
  String get accessKeyId;

  @BuiltValueField(wireName: r'secretAccessKey')
  String get secretAccessKey;

  AmazonBedrockProviderConfig._();

  factory AmazonBedrockProviderConfig([void updates(AmazonBedrockProviderConfigBuilder b)]) = _$AmazonBedrockProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AmazonBedrockProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AmazonBedrockProviderConfig> get serializer => _$AmazonBedrockProviderConfigSerializer();
}

class _$AmazonBedrockProviderConfigSerializer implements PrimitiveSerializer<AmazonBedrockProviderConfig> {
  @override
  final Iterable<Type> types = const [AmazonBedrockProviderConfig, _$AmazonBedrockProviderConfig];

  @override
  final String wireName = r'AmazonBedrockProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AmazonBedrockProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'region';
    yield serializers.serialize(
      object.region,
      specifiedType: const FullType(String),
    );
    yield r'accessKeyId';
    yield serializers.serialize(
      object.accessKeyId,
      specifiedType: const FullType(String),
    );
    yield r'secretAccessKey';
    yield serializers.serialize(
      object.secretAccessKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AmazonBedrockProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AmazonBedrockProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'region':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.region = valueDes;
          break;
        case r'accessKeyId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessKeyId = valueDes;
          break;
        case r'secretAccessKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secretAccessKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AmazonBedrockProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AmazonBedrockProviderConfigBuilder();
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


