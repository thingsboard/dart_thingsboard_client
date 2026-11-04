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

part 'o_auth2_custom_mapper_config.g.dart';

/// OAuth2CustomMapperConfig
///
/// Properties:
/// * [url] 
/// * [username] 
/// * [password] 
/// * [sendToken] 
@BuiltValue()
abstract class OAuth2CustomMapperConfig implements Built<OAuth2CustomMapperConfig, OAuth2CustomMapperConfigBuilder> {
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'sendToken')
  bool? get sendToken;

  OAuth2CustomMapperConfig._();

  factory OAuth2CustomMapperConfig([void updates(OAuth2CustomMapperConfigBuilder b)]) = _$OAuth2CustomMapperConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2CustomMapperConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2CustomMapperConfig> get serializer => _$OAuth2CustomMapperConfigSerializer();
}

class _$OAuth2CustomMapperConfigSerializer implements PrimitiveSerializer<OAuth2CustomMapperConfig> {
  @override
  final Iterable<Type> types = const [OAuth2CustomMapperConfig, _$OAuth2CustomMapperConfig];

  @override
  final String wireName = r'OAuth2CustomMapperConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2CustomMapperConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.sendToken != null) {
      yield r'sendToken';
      yield serializers.serialize(
        object.sendToken,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2CustomMapperConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OAuth2CustomMapperConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'sendToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.sendToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2CustomMapperConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2CustomMapperConfigBuilder();
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


