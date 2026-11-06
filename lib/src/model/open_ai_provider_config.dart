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

part 'open_ai_provider_config.g.dart';

/// OpenAiProviderConfig
///
/// Properties:
/// * [baseUrl]
/// * [apiKey]
@BuiltValue()
abstract class OpenAiProviderConfig
    implements Built<OpenAiProviderConfig, OpenAiProviderConfigBuilder> {
  @BuiltValueField(wireName: r'baseUrl')
  String? get baseUrl;

  @BuiltValueField(wireName: r'apiKey')
  String? get apiKey;

  OpenAiProviderConfig._();

  factory OpenAiProviderConfig([void updates(OpenAiProviderConfigBuilder b)]) =
      _$OpenAiProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OpenAiProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OpenAiProviderConfig> get serializer =>
      _$OpenAiProviderConfigSerializer();
}

class _$OpenAiProviderConfigSerializer
    implements PrimitiveSerializer<OpenAiProviderConfig> {
  @override
  final Iterable<Type> types = const [
    OpenAiProviderConfig,
    _$OpenAiProviderConfig,
  ];

  @override
  final String wireName = r'OpenAiProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OpenAiProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.baseUrl != null) {
      yield r'baseUrl';
      yield serializers.serialize(
        object.baseUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.apiKey != null) {
      yield r'apiKey';
      yield serializers.serialize(
        object.apiKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OpenAiProviderConfig object, {
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
    required OpenAiProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'baseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.baseUrl = valueDes;
          break;
        case r'apiKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
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
  OpenAiProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpenAiProviderConfigBuilder();
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
