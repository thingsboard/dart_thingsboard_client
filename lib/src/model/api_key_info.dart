// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/api_key_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_key_info.g.dart';

/// A JSON value representing the API key.
///
/// Properties:
/// * [id] - JSON object with the API Key Id. Specify this field to update the API Key. Referencing non-existing API Key Id will cause error. Omit this field to create new API Key.
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object with Tenant Id. Tenant Id of the API key cannot be changed.
/// * [userId] - JSON object with User Id. User Id of the API key cannot be changed.
/// * [expirationTime] - Expiration time of the API key.
/// * [description] - API Key description.
/// * [enabled] - Enabled/disabled API key.
/// * [expired] - Indicates if the API key is expired based on current time. Returns false if expirationTime is 0 (no expiry).
@BuiltValue()
abstract class ApiKeyInfo implements Built<ApiKeyInfo, ApiKeyInfoBuilder> {
  /// JSON object with the API Key Id. Specify this field to update the API Key. Referencing non-existing API Key Id will cause error. Omit this field to create new API Key.
  @BuiltValueField(wireName: r'id')
  ApiKeyId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id. Tenant Id of the API key cannot be changed.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with User Id. User Id of the API key cannot be changed.
  @BuiltValueField(wireName: r'userId')
  UserId? get userId;

  /// Expiration time of the API key.
  @BuiltValueField(wireName: r'expirationTime')
  int? get expirationTime;

  /// API Key description.
  @BuiltValueField(wireName: r'description')
  String get description;

  /// Enabled/disabled API key.
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Indicates if the API key is expired based on current time. Returns false if expirationTime is 0 (no expiry).
  @BuiltValueField(wireName: r'expired')
  bool? get expired;

  ApiKeyInfo._();

  factory ApiKeyInfo([void updates(ApiKeyInfoBuilder b)]) = _$ApiKeyInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiKeyInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiKeyInfo> get serializer => _$ApiKeyInfoSerializer();
}

class _$ApiKeyInfoSerializer implements PrimitiveSerializer<ApiKeyInfo> {
  @override
  final Iterable<Type> types = const [ApiKeyInfo, _$ApiKeyInfo];

  @override
  final String wireName = r'ApiKeyInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiKeyInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(ApiKeyId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.expirationTime != null) {
      yield r'expirationTime';
      yield serializers.serialize(
        object.expirationTime,
        specifiedType: const FullType(int),
      );
    }
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.expired != null) {
      yield r'expired';
      yield serializers.serialize(
        object.expired,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiKeyInfo object, {
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
    required ApiKeyInfoBuilder result,
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
                    specifiedType: const FullType.nullable(ApiKeyId),
                  )
                  as ApiKeyId?;
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
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.userId.replace(valueDes);
          break;
        case r'expirationTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.expirationTime = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.description = valueDes;
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'expired':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.expired = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiKeyInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiKeyInfoBuilder();
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
