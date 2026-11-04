// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/thingsboard_error_code.dart';
import 'package:thingsboard_client/src/model/thingsboard_error_response.dart';
import 'package:thingsboard_client/src/model/subscription_entry.dart';
import 'package:thingsboard_client/src/model/thingsboard_credentials_expired_response.dart';
import 'package:thingsboard_client/src/model/subscription_error_code.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'login401_response.g.dart';

/// Login401Response
///
/// Properties:
/// * [status] - HTTP Response Status Code
/// * [message] - Error message
/// * [errorCode] - Platform error code: * `2` - General error (HTTP: 500 - Internal Server Error)  * `10` - Authentication failed (HTTP: 401 - Unauthorized)  * `11` - JWT token expired (HTTP: 401 - Unauthorized)  * `15` - Credentials expired (HTTP: 401 - Unauthorized)  * `20` - Permission denied (HTTP: 403 - Forbidden)  * `30` - Invalid arguments (HTTP: 400 - Bad Request)  * `31` - Bad request params (HTTP: 400 - Bad Request)  * `32` - Item not found (HTTP: 404 - Not Found)  * `33` - Too many requests (HTTP: 429 - Too Many Requests)  * `34` - Too many updates (Too many updates over Websocket session)  * `35` - Version conflict (HTTP: 409 - Conflict)  * `40` - Subscription violation (HTTP: 403 - Forbidden)  * `41` - Entities limit exceeded (HTTP: 403 - Forbidden)  * `47` - Setup incomplete (HTTP: 423 - Locked)
/// * [timestamp] - Timestamp
/// * [subscriptionErrorCode] 
/// * [subscriptionEntry] 
/// * [subscriptionValue] - A value representing the any type (object or primitive)
/// * [resetToken] - Password reset token
@BuiltValue()
abstract class Login401Response implements Built<Login401Response, Login401ResponseBuilder> {
  /// One Of [ThingsboardCredentialsExpiredResponse], [ThingsboardErrorResponse]
  OneOf get oneOf;

  Login401Response._();

  factory Login401Response([void updates(Login401ResponseBuilder b)]) = _$Login401Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Login401ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Login401Response> get serializer => _$Login401ResponseSerializer();
}

class _$Login401ResponseSerializer implements PrimitiveSerializer<Login401Response> {
  @override
  final Iterable<Type> types = const [Login401Response, _$Login401Response];

  @override
  final String wireName = r'Login401Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Login401Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    Login401Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value, specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Login401Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Login401ResponseBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [FullType(ThingsboardErrorResponse), FullType(ThingsboardCredentialsExpiredResponse), ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc, specifiedType: targetType) as OneOf;
    return result.build();
  }
}


