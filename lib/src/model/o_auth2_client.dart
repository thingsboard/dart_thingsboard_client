// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/o_auth2_client_id.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/platform_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/o_auth2_mapper_config.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'o_auth2_client.g.dart';

/// OAuth2Client
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [additionalInfo] - Additional info of OAuth2 client. Must include: 'providerName' (string, name of the OAuth2 provider).
/// * [tenantId] - JSON object with Tenant Id
/// * [customerId] - JSON object with Customer Id
/// * [title] - Oauth2 client title
/// * [mapperConfig] - Config for mapping OAuth2 log in response to platform entities
/// * [clientId] - OAuth2 client ID. Cannot be empty
/// * [clientSecret] - OAuth2 client secret. Cannot be empty
/// * [authorizationUri] - Authorization URI of the OAuth2 provider. Cannot be empty
/// * [accessTokenUri] - Access token URI of the OAuth2 provider. Cannot be empty
/// * [scope] - OAuth scopes that will be requested from OAuth2 platform. Cannot be empty
/// * [userInfoUri] - User info URI of the OAuth2 provider
/// * [userNameAttributeName] - Name of the username attribute in OAuth2 provider response. Cannot be empty
/// * [jwkSetUri] - JSON Web Key URI of the OAuth2 provider
/// * [clientAuthenticationMethod] - Client authentication method to use: 'BASIC' or 'POST'. Cannot be empty
/// * [loginButtonLabel] - OAuth2 provider label. Cannot be empty
/// * [loginButtonIcon] - Log in button icon for OAuth2 provider
/// * [platforms] - List of platforms for which usage of the OAuth2 client is allowed (empty for all allowed)
/// * [name]
/// * [ownerId]
@BuiltValue()
abstract class OAuth2Client
    implements Built<OAuth2Client, OAuth2ClientBuilder> {
  @BuiltValueField(wireName: r'id')
  OAuth2ClientId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Additional info of OAuth2 client. Must include: 'providerName' (string, name of the OAuth2 provider).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Oauth2 client title
  @BuiltValueField(wireName: r'title')
  String get title;

  /// Config for mapping OAuth2 log in response to platform entities
  @BuiltValueField(wireName: r'mapperConfig')
  OAuth2MapperConfig get mapperConfig;

  /// OAuth2 client ID. Cannot be empty
  @BuiltValueField(wireName: r'clientId')
  String get clientId;

  /// OAuth2 client secret. Cannot be empty
  @BuiltValueField(wireName: r'clientSecret')
  String get clientSecret;

  /// Authorization URI of the OAuth2 provider. Cannot be empty
  @BuiltValueField(wireName: r'authorizationUri')
  String get authorizationUri;

  /// Access token URI of the OAuth2 provider. Cannot be empty
  @BuiltValueField(wireName: r'accessTokenUri')
  String get accessTokenUri;

  /// OAuth scopes that will be requested from OAuth2 platform. Cannot be empty
  @BuiltValueField(wireName: r'scope')
  BuiltList<String> get scope;

  /// User info URI of the OAuth2 provider
  @BuiltValueField(wireName: r'userInfoUri')
  String? get userInfoUri;

  /// Name of the username attribute in OAuth2 provider response. Cannot be empty
  @BuiltValueField(wireName: r'userNameAttributeName')
  String get userNameAttributeName;

  /// JSON Web Key URI of the OAuth2 provider
  @BuiltValueField(wireName: r'jwkSetUri')
  String? get jwkSetUri;

  /// Client authentication method to use: 'BASIC' or 'POST'. Cannot be empty
  @BuiltValueField(wireName: r'clientAuthenticationMethod')
  String get clientAuthenticationMethod;

  /// OAuth2 provider label. Cannot be empty
  @BuiltValueField(wireName: r'loginButtonLabel')
  String get loginButtonLabel;

  /// Log in button icon for OAuth2 provider
  @BuiltValueField(wireName: r'loginButtonIcon')
  String? get loginButtonIcon;

  /// List of platforms for which usage of the OAuth2 client is allowed (empty for all allowed)
  @BuiltValueField(wireName: r'platforms')
  BuiltList<PlatformType>? get platforms;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  OAuth2Client._();

  factory OAuth2Client([void updates(OAuth2ClientBuilder b)]) = _$OAuth2Client;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OAuth2ClientBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OAuth2Client> get serializer => _$OAuth2ClientSerializer();
}

class _$OAuth2ClientSerializer implements PrimitiveSerializer<OAuth2Client> {
  @override
  final Iterable<Type> types = const [OAuth2Client, _$OAuth2Client];

  @override
  final String wireName = r'OAuth2Client';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OAuth2Client object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(OAuth2ClientId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    yield r'additionalInfo';
    yield object.additionalInfo == null
        ? null
        : serializers.serialize(
            object.additionalInfo,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'mapperConfig';
    yield serializers.serialize(
      object.mapperConfig,
      specifiedType: const FullType(OAuth2MapperConfig),
    );
    yield r'clientId';
    yield serializers.serialize(
      object.clientId,
      specifiedType: const FullType(String),
    );
    yield r'clientSecret';
    yield serializers.serialize(
      object.clientSecret,
      specifiedType: const FullType(String),
    );
    yield r'authorizationUri';
    yield serializers.serialize(
      object.authorizationUri,
      specifiedType: const FullType(String),
    );
    yield r'accessTokenUri';
    yield serializers.serialize(
      object.accessTokenUri,
      specifiedType: const FullType(String),
    );
    yield r'scope';
    yield serializers.serialize(
      object.scope,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.userInfoUri != null) {
      yield r'userInfoUri';
      yield serializers.serialize(
        object.userInfoUri,
        specifiedType: const FullType(String),
      );
    }
    yield r'userNameAttributeName';
    yield serializers.serialize(
      object.userNameAttributeName,
      specifiedType: const FullType(String),
    );
    if (object.jwkSetUri != null) {
      yield r'jwkSetUri';
      yield serializers.serialize(
        object.jwkSetUri,
        specifiedType: const FullType(String),
      );
    }
    yield r'clientAuthenticationMethod';
    yield serializers.serialize(
      object.clientAuthenticationMethod,
      specifiedType: const FullType(String),
    );
    yield r'loginButtonLabel';
    yield serializers.serialize(
      object.loginButtonLabel,
      specifiedType: const FullType(String),
    );
    if (object.loginButtonIcon != null) {
      yield r'loginButtonIcon';
      yield serializers.serialize(
        object.loginButtonIcon,
        specifiedType: const FullType(String),
      );
    }
    if (object.platforms != null) {
      yield r'platforms';
      yield serializers.serialize(
        object.platforms,
        specifiedType: const FullType(BuiltList, [FullType(PlatformType)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OAuth2Client object, {
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
    required OAuth2ClientBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(OAuth2ClientId),
                  )
                  as OAuth2ClientId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'additionalInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'title':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.title = valueDes;
          break;
        case r'mapperConfig':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(OAuth2MapperConfig),
                  )
                  as OAuth2MapperConfig;
          result.mapperConfig.replace(valueDes);
          break;
        case r'clientId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.clientId = valueDes;
          break;
        case r'clientSecret':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.clientSecret = valueDes;
          break;
        case r'authorizationUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.authorizationUri = valueDes;
          break;
        case r'accessTokenUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.accessTokenUri = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltList, [
                      FullType(String),
                    ]),
                  )
                  as BuiltList<String>;
          result.scope.replace(valueDes);
          break;
        case r'userInfoUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userInfoUri = valueDes;
          break;
        case r'userNameAttributeName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.userNameAttributeName = valueDes;
          break;
        case r'jwkSetUri':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.jwkSetUri = valueDes;
          break;
        case r'clientAuthenticationMethod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.clientAuthenticationMethod = valueDes;
          break;
        case r'loginButtonLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.loginButtonLabel = valueDes;
          break;
        case r'loginButtonIcon':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.loginButtonIcon = valueDes;
          break;
        case r'platforms':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(PlatformType),
                    ]),
                  )
                  as BuiltList<PlatformType>?;
          if (valueDes == null) continue;
          result.platforms.replace(valueDes);
          break;
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
        case r'ownerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.ownerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OAuth2Client deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OAuth2ClientBuilder();
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
