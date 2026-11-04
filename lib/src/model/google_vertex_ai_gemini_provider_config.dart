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

part 'google_vertex_ai_gemini_provider_config.g.dart';

/// GoogleVertexAiGeminiProviderConfig
///
/// Properties:
/// * [fileName] 
/// * [projectId] 
/// * [location] 
/// * [serviceAccountKey] 
@BuiltValue()
abstract class GoogleVertexAiGeminiProviderConfig implements Built<GoogleVertexAiGeminiProviderConfig, GoogleVertexAiGeminiProviderConfigBuilder> {
  @BuiltValueField(wireName: r'fileName')
  String? get fileName;

  @BuiltValueField(wireName: r'projectId')
  String get projectId;

  @BuiltValueField(wireName: r'location')
  String get location;

  @BuiltValueField(wireName: r'serviceAccountKey')
  String get serviceAccountKey;

  GoogleVertexAiGeminiProviderConfig._();

  factory GoogleVertexAiGeminiProviderConfig([void updates(GoogleVertexAiGeminiProviderConfigBuilder b)]) = _$GoogleVertexAiGeminiProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GoogleVertexAiGeminiProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GoogleVertexAiGeminiProviderConfig> get serializer => _$GoogleVertexAiGeminiProviderConfigSerializer();
}

class _$GoogleVertexAiGeminiProviderConfigSerializer implements PrimitiveSerializer<GoogleVertexAiGeminiProviderConfig> {
  @override
  final Iterable<Type> types = const [GoogleVertexAiGeminiProviderConfig, _$GoogleVertexAiGeminiProviderConfig];

  @override
  final String wireName = r'GoogleVertexAiGeminiProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GoogleVertexAiGeminiProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fileName != null) {
      yield r'fileName';
      yield serializers.serialize(
        object.fileName,
        specifiedType: const FullType(String),
      );
    }
    yield r'projectId';
    yield serializers.serialize(
      object.projectId,
      specifiedType: const FullType(String),
    );
    yield r'location';
    yield serializers.serialize(
      object.location,
      specifiedType: const FullType(String),
    );
    yield r'serviceAccountKey';
    yield serializers.serialize(
      object.serviceAccountKey,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GoogleVertexAiGeminiProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GoogleVertexAiGeminiProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.fileName = valueDes;
          break;
        case r'projectId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.projectId = valueDes;
          break;
        case r'location':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.location = valueDes;
          break;
        case r'serviceAccountKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceAccountKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GoogleVertexAiGeminiProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GoogleVertexAiGeminiProviderConfigBuilder();
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


