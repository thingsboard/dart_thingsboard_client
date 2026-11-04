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

part 'anthropic_provider_config.g.dart';

/// AnthropicProviderConfig
///
/// Properties:
/// * [apiKey] 
@BuiltValue()
abstract class AnthropicProviderConfig implements Built<AnthropicProviderConfig, AnthropicProviderConfigBuilder> {
  @BuiltValueField(wireName: r'apiKey')
  String get apiKey;

  AnthropicProviderConfig._();

  factory AnthropicProviderConfig([void updates(AnthropicProviderConfigBuilder b)]) = _$AnthropicProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AnthropicProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AnthropicProviderConfig> get serializer => _$AnthropicProviderConfigSerializer();
}

class _$AnthropicProviderConfigSerializer implements PrimitiveSerializer<AnthropicProviderConfig> {
  @override
  final Iterable<Type> types = const [AnthropicProviderConfig, _$AnthropicProviderConfig];

  @override
  final String wireName = r'AnthropicProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AnthropicProviderConfig object, {
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
    AnthropicProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AnthropicProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  AnthropicProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AnthropicProviderConfigBuilder();
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


