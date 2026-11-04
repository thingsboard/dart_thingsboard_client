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

part 'o_auth2_client_login_info.g.dart';

/// OAuth2ClientLoginInfo
///
/// Properties:
/// * [name] - OAuth2 client name
/// * [icon] - Name of the icon, displayed on OAuth2 log in button
/// * [url] - URI for OAuth2 log in. On HTTP GET request to this URI, it redirects to the OAuth2 provider page
@BuiltValue()
abstract class OAuth2ClientLoginInfo
    implements Built<OAuth2ClientLoginInfo, OAuth2ClientLoginInfoBuilder> {
  /// OAuth2 client name
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Name of the icon, displayed on OAuth2 log in button
  @BuiltValueField(wireName: r'icon')
  String? get icon;

  /// URI for OAuth2 log in. On HTTP GET request to this URI, it redirects to the OAuth2 provider page
  @BuiltValueField(wireName: r'url')
  String? get url;

  OAuth2ClientLoginInfo._();

  factory OAuth2ClientLoginInfo([
    void updates(OAuth2ClientLoginInfoBuilder b),
  ]) = _$OAuth2ClientLoginInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2ClientLoginInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2ClientLoginInfo> get serializer =>
      _$OAuth2ClientLoginInfoSerializer();
}

class _$OAuth2ClientLoginInfoSerializer
    implements PrimitiveSerializer<OAuth2ClientLoginInfo> {
  @override
  final Iterable<Type> types = const [
    OAuth2ClientLoginInfo,
    _$OAuth2ClientLoginInfo,
  ];

  @override
  final String wireName = r'OAuth2ClientLoginInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2ClientLoginInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.icon != null) {
      yield r'icon';
      yield serializers.serialize(
        object.icon,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2ClientLoginInfo object, {
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
    required OAuth2ClientLoginInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'icon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.icon = valueDes;
          break;
        case r'url':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2ClientLoginInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2ClientLoginInfoBuilder();
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
