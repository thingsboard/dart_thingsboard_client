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

part 'jwt_settings.g.dart';

/// A JSON value representing the JWT Settings.
///
/// Properties:
/// * [tokenExpirationTime] - The JWT will expire after seconds.
/// * [refreshTokenExpTime] - The JWT can be refreshed during seconds.
/// * [tokenIssuer] - The JWT issuer.
/// * [tokenSigningKey] - The JWT key is used to sing token. Base64 encoded.
@BuiltValue()
abstract class JwtSettings implements Built<JwtSettings, JwtSettingsBuilder> {
  /// The JWT will expire after seconds.
  @BuiltValueField(wireName: r'tokenExpirationTime')
  int? get tokenExpirationTime;

  /// The JWT can be refreshed during seconds.
  @BuiltValueField(wireName: r'refreshTokenExpTime')
  int? get refreshTokenExpTime;

  /// The JWT issuer.
  @BuiltValueField(wireName: r'tokenIssuer')
  String? get tokenIssuer;

  /// The JWT key is used to sing token. Base64 encoded.
  @BuiltValueField(wireName: r'tokenSigningKey')
  String? get tokenSigningKey;

  JwtSettings._();

  factory JwtSettings([void updates(JwtSettingsBuilder b)]) = _$JwtSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(JwtSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<JwtSettings> get serializer => _$JwtSettingsSerializer();
}

class _$JwtSettingsSerializer implements PrimitiveSerializer<JwtSettings> {
  @override
  final Iterable<Type> types = const [JwtSettings, _$JwtSettings];

  @override
  final String wireName = r'JwtSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    JwtSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tokenExpirationTime != null) {
      yield r'tokenExpirationTime';
      yield serializers.serialize(
        object.tokenExpirationTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.refreshTokenExpTime != null) {
      yield r'refreshTokenExpTime';
      yield serializers.serialize(
        object.refreshTokenExpTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tokenIssuer != null) {
      yield r'tokenIssuer';
      yield serializers.serialize(
        object.tokenIssuer,
        specifiedType: const FullType(String),
      );
    }
    if (object.tokenSigningKey != null) {
      yield r'tokenSigningKey';
      yield serializers.serialize(
        object.tokenSigningKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    JwtSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required JwtSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tokenExpirationTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.tokenExpirationTime = valueDes;
          break;
        case r'refreshTokenExpTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.refreshTokenExpTime = valueDes;
          break;
        case r'tokenIssuer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokenIssuer = valueDes;
          break;
        case r'tokenSigningKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.tokenSigningKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  JwtSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = JwtSettingsBuilder();
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


