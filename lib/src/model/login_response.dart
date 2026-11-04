// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/authority.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_response.g.dart';

/// LoginResponse
///
/// Properties:
/// * [token] - JWT token
/// * [refreshToken] - Refresh token. Absent when the token is a two-factor authentication token (see scope)
/// * [scope] - Set only when two-factor authentication is required: PRE_VERIFICATION_TOKEN when the user must verify a code, MFA_CONFIGURATION_TOKEN when the user must configure two-factor authentication first. The token then grants access only to the two-factor authentication API
@BuiltValue()
abstract class LoginResponse
    implements Built<LoginResponse, LoginResponseBuilder> {
  /// JWT token
  @BuiltValueField(wireName: r'token')
  String get token;

  /// Refresh token. Absent when the token is a two-factor authentication token (see scope)
  @BuiltValueField(wireName: r'refreshToken')
  String? get refreshToken;

  /// Set only when two-factor authentication is required: PRE_VERIFICATION_TOKEN when the user must verify a code, MFA_CONFIGURATION_TOKEN when the user must configure two-factor authentication first. The token then grants access only to the two-factor authentication API
  @BuiltValueField(wireName: r'scope')
  Authority? get scope;
  // enum scopeEnum {  SYS_ADMIN,  TENANT_ADMIN,  CUSTOMER_USER,  REFRESH_TOKEN,  PRE_VERIFICATION_TOKEN,  MFA_CONFIGURATION_TOKEN,  };

  LoginResponse._();

  factory LoginResponse([void updates(LoginResponseBuilder b)]) =
      _$LoginResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LoginResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LoginResponse> get serializer =>
      _$LoginResponseSerializer();
}

class _$LoginResponseSerializer implements PrimitiveSerializer<LoginResponse> {
  @override
  final Iterable<Type> types = const [LoginResponse, _$LoginResponse];

  @override
  final String wireName = r'LoginResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LoginResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    if (object.refreshToken != null) {
      yield r'refreshToken';
      yield serializers.serialize(
        object.refreshToken,
        specifiedType: const FullType(String),
      );
    }
    if (object.scope != null) {
      yield r'scope';
      yield serializers.serialize(
        object.scope,
        specifiedType: const FullType(Authority),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LoginResponse object, {
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
    required LoginResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'token':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.token = valueDes;
          break;
        case r'refreshToken':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.refreshToken = valueDes;
          break;
        case r'scope':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Authority),
                  )
                  as Authority?;
          if (valueDes == null) continue;
          result.scope = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LoginResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LoginResponseBuilder();
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
