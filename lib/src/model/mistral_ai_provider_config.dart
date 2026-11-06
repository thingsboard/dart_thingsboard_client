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

part 'mistral_ai_provider_config.g.dart';

/// MistralAiProviderConfig
///
/// Properties:
/// * [apiKey]
@BuiltValue()
abstract class MistralAiProviderConfig
    implements Built<MistralAiProviderConfig, MistralAiProviderConfigBuilder> {
  @BuiltValueField(wireName: r'apiKey')
  String get apiKey;

  MistralAiProviderConfig._();

  factory MistralAiProviderConfig([
    void updates(MistralAiProviderConfigBuilder b),
  ]) = _$MistralAiProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MistralAiProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MistralAiProviderConfig> get serializer =>
      _$MistralAiProviderConfigSerializer();
}

class _$MistralAiProviderConfigSerializer
    implements PrimitiveSerializer<MistralAiProviderConfig> {
  @override
  final Iterable<Type> types = const [
    MistralAiProviderConfig,
    _$MistralAiProviderConfig,
  ];

  @override
  final String wireName = r'MistralAiProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MistralAiProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'apiKey';
    yield serializers.serialize(
      object.apiKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MistralAiProviderConfig object, {
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
    required MistralAiProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  MistralAiProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MistralAiProviderConfigBuilder();
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
