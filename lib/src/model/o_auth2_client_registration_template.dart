// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/o_auth2_client_registration_template_id.dart';
import 'package:thingsboard_client/src/model/o_auth2_mapper_config.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth2_client_registration_template.g.dart';

/// OAuth2ClientRegistrationTemplate
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [additionalInfo] - A value representing the any type (object or primitive)
/// * [providerId] - OAuth2 provider identifier (e.g. its name)
/// * [mapperConfig] - Default config for mapping OAuth2 log in response to platform entities
/// * [authorizationUri] - Default authorization URI of the OAuth2 provider
/// * [accessTokenUri] - Default access token URI of the OAuth2 provider
/// * [scope] - Default OAuth scopes that will be requested from OAuth2 platform
/// * [userInfoUri] - Default user info URI of the OAuth2 provider
/// * [userNameAttributeName] - Default name of the username attribute in OAuth2 provider log in response
/// * [jwkSetUri] - Default JSON Web Key URI of the OAuth2 provider
/// * [clientAuthenticationMethod] - Default client authentication method to use: 'BASIC' or 'POST'
/// * [comment] - Comment for OAuth2 provider
/// * [loginButtonIcon] - Default log in button icon for OAuth2 provider
/// * [loginButtonLabel] - Default OAuth2 provider label
/// * [helpLink] - Help link for OAuth2 provider
/// * [name] 
@BuiltValue()
abstract class OAuth2ClientRegistrationTemplate implements Built<OAuth2ClientRegistrationTemplate, OAuth2ClientRegistrationTemplateBuilder> {
  @BuiltValueField(wireName: r'id')
  OAuth2ClientRegistrationTemplateId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// OAuth2 provider identifier (e.g. its name)
  @BuiltValueField(wireName: r'providerId')
  String get providerId;

  /// Default config for mapping OAuth2 log in response to platform entities
  @BuiltValueField(wireName: r'mapperConfig')
  OAuth2MapperConfig? get mapperConfig;

  /// Default authorization URI of the OAuth2 provider
  @BuiltValueField(wireName: r'authorizationUri')
  String? get authorizationUri;

  /// Default access token URI of the OAuth2 provider
  @BuiltValueField(wireName: r'accessTokenUri')
  String? get accessTokenUri;

  /// Default OAuth scopes that will be requested from OAuth2 platform
  @BuiltValueField(wireName: r'scope')
  BuiltList<String>? get scope;

  /// Default user info URI of the OAuth2 provider
  @BuiltValueField(wireName: r'userInfoUri')
  String? get userInfoUri;

  /// Default name of the username attribute in OAuth2 provider log in response
  @BuiltValueField(wireName: r'userNameAttributeName')
  String? get userNameAttributeName;

  /// Default JSON Web Key URI of the OAuth2 provider
  @BuiltValueField(wireName: r'jwkSetUri')
  String? get jwkSetUri;

  /// Default client authentication method to use: 'BASIC' or 'POST'
  @BuiltValueField(wireName: r'clientAuthenticationMethod')
  String? get clientAuthenticationMethod;

  /// Comment for OAuth2 provider
  @BuiltValueField(wireName: r'comment')
  String? get comment;

  /// Default log in button icon for OAuth2 provider
  @BuiltValueField(wireName: r'loginButtonIcon')
  String? get loginButtonIcon;

  /// Default OAuth2 provider label
  @BuiltValueField(wireName: r'loginButtonLabel')
  String? get loginButtonLabel;

  /// Help link for OAuth2 provider
  @BuiltValueField(wireName: r'helpLink')
  String? get helpLink;

  @BuiltValueField(wireName: r'name')
  String? get name;

  OAuth2ClientRegistrationTemplate._();

  factory OAuth2ClientRegistrationTemplate([void updates(OAuth2ClientRegistrationTemplateBuilder b)]) = _$OAuth2ClientRegistrationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2ClientRegistrationTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2ClientRegistrationTemplate> get serializer => _$OAuth2ClientRegistrationTemplateSerializer();
}

class _$OAuth2ClientRegistrationTemplateSerializer implements PrimitiveSerializer<OAuth2ClientRegistrationTemplate> {
  @override
  final Iterable<Type> types = const [OAuth2ClientRegistrationTemplate, _$OAuth2ClientRegistrationTemplate];

  @override
  final String wireName = r'OAuth2ClientRegistrationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2ClientRegistrationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(OAuth2ClientRegistrationTemplateId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    yield r'providerId';
    yield serializers.serialize(
      object.providerId,
      specifiedType: const FullType(String),
    );
    if (object.mapperConfig != null) {
      yield r'mapperConfig';
      yield serializers.serialize(
        object.mapperConfig,
        specifiedType: const FullType(OAuth2MapperConfig),
      );
    }
    if (object.authorizationUri != null) {
      yield r'authorizationUri';
      yield serializers.serialize(
        object.authorizationUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.accessTokenUri != null) {
      yield r'accessTokenUri';
      yield serializers.serialize(
        object.accessTokenUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.userInfoUri != null) {
      yield r'userInfoUri';
      yield serializers.serialize(
        object.userInfoUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.userNameAttributeName != null) {
      yield r'userNameAttributeName';
      yield serializers.serialize(
        object.userNameAttributeName,
        specifiedType: const FullType(String),
      );
    }
    if (object.jwkSetUri != null) {
      yield r'jwkSetUri';
      yield serializers.serialize(
        object.jwkSetUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.clientAuthenticationMethod != null) {
      yield r'clientAuthenticationMethod';
      yield serializers.serialize(
        object.clientAuthenticationMethod,
        specifiedType: const FullType(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
      );
    }
    if (object.loginButtonIcon != null) {
      yield r'loginButtonIcon';
      yield serializers.serialize(
        object.loginButtonIcon,
        specifiedType: const FullType(String),
      );
    }
    if (object.loginButtonLabel != null) {
      yield r'loginButtonLabel';
      yield serializers.serialize(
        object.loginButtonLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.helpLink != null) {
      yield r'helpLink';
      yield serializers.serialize(
        object.helpLink,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2ClientRegistrationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OAuth2ClientRegistrationTemplateBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OAuth2ClientRegistrationTemplateId),
          ) as OAuth2ClientRegistrationTemplateId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'additionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        case r'providerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.providerId = valueDes;
          break;
        case r'mapperConfig':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(OAuth2MapperConfig),
          ) as OAuth2MapperConfig?;
          if (valueDes == null) continue;
          result.mapperConfig.replace(valueDes);
          break;
        case r'authorizationUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authorizationUri = valueDes;
          break;
        case r'accessTokenUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.accessTokenUri = valueDes;
          break;
        case r'scope':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.scope.replace(valueDes);
          break;
        case r'userInfoUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userInfoUri = valueDes;
          break;
        case r'userNameAttributeName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userNameAttributeName = valueDes;
          break;
        case r'jwkSetUri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.jwkSetUri = valueDes;
          break;
        case r'clientAuthenticationMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.clientAuthenticationMethod = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        case r'loginButtonIcon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loginButtonIcon = valueDes;
          break;
        case r'loginButtonLabel':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.loginButtonLabel = valueDes;
          break;
        case r'helpLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.helpLink = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2ClientRegistrationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2ClientRegistrationTemplateBuilder();
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


