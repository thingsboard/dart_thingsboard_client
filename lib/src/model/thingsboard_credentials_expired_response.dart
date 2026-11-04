// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/thingsboard_error_code.dart';
import 'package:thingsboard_client/src/model/subscription_entry.dart';
import 'package:thingsboard_client/src/model/subscription_error_code.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thingsboard_credentials_expired_response.g.dart';

/// ThingsboardCredentialsExpiredResponse
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
abstract class ThingsboardCredentialsExpiredResponse implements Built<ThingsboardCredentialsExpiredResponse, ThingsboardCredentialsExpiredResponseBuilder> {
  /// HTTP Response Status Code
  @BuiltValueField(wireName: r'status')
  int? get status;

  /// Error message
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Platform error code: * `2` - General error (HTTP: 500 - Internal Server Error)  * `10` - Authentication failed (HTTP: 401 - Unauthorized)  * `11` - JWT token expired (HTTP: 401 - Unauthorized)  * `15` - Credentials expired (HTTP: 401 - Unauthorized)  * `20` - Permission denied (HTTP: 403 - Forbidden)  * `30` - Invalid arguments (HTTP: 400 - Bad Request)  * `31` - Bad request params (HTTP: 400 - Bad Request)  * `32` - Item not found (HTTP: 404 - Not Found)  * `33` - Too many requests (HTTP: 429 - Too Many Requests)  * `34` - Too many updates (Too many updates over Websocket session)  * `35` - Version conflict (HTTP: 409 - Conflict)  * `40` - Subscription violation (HTTP: 403 - Forbidden)  * `41` - Entities limit exceeded (HTTP: 403 - Forbidden)  * `47` - Setup incomplete (HTTP: 423 - Locked)
  @BuiltValueField(wireName: r'errorCode')
  ThingsboardErrorCode? get errorCode;
  // enum errorCodeEnum {  2,  10,  11,  15,  20,  30,  31,  32,  33,  34,  35,  40,  41,  45,  46,  47,  };

  /// Timestamp
  @BuiltValueField(wireName: r'timestamp')
  int? get timestamp;

  @BuiltValueField(wireName: r'subscriptionErrorCode')
  SubscriptionErrorCode? get subscriptionErrorCode;
  // enum subscriptionErrorCodeEnum {  LIMIT_REACHED,  FEATURE_DISABLED,  };

  @BuiltValueField(wireName: r'subscriptionEntry')
  SubscriptionEntry? get subscriptionEntry;
  // enum subscriptionEntryEnum {  DEVICE_COUNT,  ASSET_COUNT,  EDGE_COUNT,  WHITE_LABELING,  INTEGRATIONS,  SCHEDULER,  REPORTING,  AGENT_COUNT,  };

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'subscriptionValue')
  JsonObject? get subscriptionValue;

  /// Password reset token
  @BuiltValueField(wireName: r'resetToken')
  String? get resetToken;

  ThingsboardCredentialsExpiredResponse._();

  factory ThingsboardCredentialsExpiredResponse([void updates(ThingsboardCredentialsExpiredResponseBuilder b)]) = _$ThingsboardCredentialsExpiredResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ThingsboardCredentialsExpiredResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ThingsboardCredentialsExpiredResponse> get serializer => _$ThingsboardCredentialsExpiredResponseSerializer();
}

class _$ThingsboardCredentialsExpiredResponseSerializer implements PrimitiveSerializer<ThingsboardCredentialsExpiredResponse> {
  @override
  final Iterable<Type> types = const [ThingsboardCredentialsExpiredResponse, _$ThingsboardCredentialsExpiredResponse];

  @override
  final String wireName = r'ThingsboardCredentialsExpiredResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ThingsboardCredentialsExpiredResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.errorCode != null) {
      yield r'errorCode';
      yield serializers.serialize(
        object.errorCode,
        specifiedType: const FullType(ThingsboardErrorCode),
      );
    }
    if (object.timestamp != null) {
      yield r'timestamp';
      yield serializers.serialize(
        object.timestamp,
        specifiedType: const FullType(int),
      );
    }
    if (object.subscriptionErrorCode != null) {
      yield r'subscriptionErrorCode';
      yield serializers.serialize(
        object.subscriptionErrorCode,
        specifiedType: const FullType(SubscriptionErrorCode),
      );
    }
    if (object.subscriptionEntry != null) {
      yield r'subscriptionEntry';
      yield serializers.serialize(
        object.subscriptionEntry,
        specifiedType: const FullType(SubscriptionEntry),
      );
    }
    if (object.subscriptionValue != null) {
      yield r'subscriptionValue';
      yield serializers.serialize(
        object.subscriptionValue,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.resetToken != null) {
      yield r'resetToken';
      yield serializers.serialize(
        object.resetToken,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ThingsboardCredentialsExpiredResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ThingsboardCredentialsExpiredResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.message = valueDes;
          break;
        case r'errorCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ThingsboardErrorCode),
          ) as ThingsboardErrorCode?;
          if (valueDes == null) continue;
          result.errorCode = valueDes;
          break;
        case r'timestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.timestamp = valueDes;
          break;
        case r'subscriptionErrorCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SubscriptionErrorCode),
          ) as SubscriptionErrorCode?;
          if (valueDes == null) continue;
          result.subscriptionErrorCode = valueDes;
          break;
        case r'subscriptionEntry':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SubscriptionEntry),
          ) as SubscriptionEntry?;
          if (valueDes == null) continue;
          result.subscriptionEntry = valueDes;
          break;
        case r'subscriptionValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.subscriptionValue = valueDes;
          break;
        case r'resetToken':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.resetToken = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ThingsboardCredentialsExpiredResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ThingsboardCredentialsExpiredResponseBuilder();
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


