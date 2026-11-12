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

part 'azure_open_ai_provider_config.g.dart';

/// AzureOpenAiProviderConfig
///
/// Properties:
/// * [endpoint]
/// * [serviceVersion]
/// * [apiKey]
@BuiltValue()
abstract class AzureOpenAiProviderConfig
    implements
        Built<AzureOpenAiProviderConfig, AzureOpenAiProviderConfigBuilder> {
  @BuiltValueField(wireName: r'endpoint')
  String get endpoint;

  @BuiltValueField(wireName: r'serviceVersion')
  String? get serviceVersion;

  @BuiltValueField(wireName: r'apiKey')
  String get apiKey;

  AzureOpenAiProviderConfig._();

  factory AzureOpenAiProviderConfig([
    void updates(AzureOpenAiProviderConfigBuilder b),
  ]) = _$AzureOpenAiProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AzureOpenAiProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AzureOpenAiProviderConfig> get serializer =>
      _$AzureOpenAiProviderConfigSerializer();
}

class _$AzureOpenAiProviderConfigSerializer
    implements PrimitiveSerializer<AzureOpenAiProviderConfig> {
  @override
  final Iterable<Type> types = const [
    AzureOpenAiProviderConfig,
    _$AzureOpenAiProviderConfig,
  ];

  @override
  final String wireName = r'AzureOpenAiProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AzureOpenAiProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'endpoint';
    yield serializers.serialize(
      object.endpoint,
      specifiedType: const FullType(String),
    );
    if (object.serviceVersion != null) {
      yield r'serviceVersion';
      yield serializers.serialize(
        object.serviceVersion,
        specifiedType: const FullType(String),
      );
    }
    yield r'apiKey';
    yield serializers.serialize(
      object.apiKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AzureOpenAiProviderConfig object, {
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
    required AzureOpenAiProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'endpoint':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.endpoint = valueDes;
          break;
        case r'serviceVersion':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.serviceVersion = valueDes;
          break;
        case r'apiKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.apiKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AzureOpenAiProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AzureOpenAiProviderConfigBuilder();
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
