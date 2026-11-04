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

part 'git_hub_models_provider_config.g.dart';

/// GitHubModelsProviderConfig
///
/// Properties:
/// * [personalAccessToken]
@BuiltValue()
abstract class GitHubModelsProviderConfig
    implements
        Built<GitHubModelsProviderConfig, GitHubModelsProviderConfigBuilder> {
  @BuiltValueField(wireName: r'personalAccessToken')
  String get personalAccessToken;

  GitHubModelsProviderConfig._();

  factory GitHubModelsProviderConfig([
    void updates(GitHubModelsProviderConfigBuilder b),
  ]) = _$GitHubModelsProviderConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GitHubModelsProviderConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GitHubModelsProviderConfig> get serializer =>
      _$GitHubModelsProviderConfigSerializer();
}

class _$GitHubModelsProviderConfigSerializer
    implements PrimitiveSerializer<GitHubModelsProviderConfig> {
  @override
  final Iterable<Type> types = const [
    GitHubModelsProviderConfig,
    _$GitHubModelsProviderConfig,
  ];

  @override
  final String wireName = r'GitHubModelsProviderConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GitHubModelsProviderConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'personalAccessToken';
    yield serializers.serialize(
      object.personalAccessToken,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    GitHubModelsProviderConfig object, {
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
    required GitHubModelsProviderConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'personalAccessToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.personalAccessToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GitHubModelsProviderConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GitHubModelsProviderConfigBuilder();
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
