// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/o_auth2_client_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/domain_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'domain_info.g.dart';

/// DomainInfo
///
/// Properties:
/// * [id] 
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId] - JSON object with Tenant Id
/// * [customerId] - JSON object with Customer Id
/// * [name] - Domain name. Cannot be empty
/// * [oauth2Enabled] - Whether OAuth2 settings are enabled or not
/// * [propagateToEdge] - Whether OAuth2 settings are enabled on Edge or not
/// * [oauth2ClientInfos] - List of available oauth2 clients
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class DomainInfo implements Built<DomainInfo, DomainInfoBuilder> {
  @BuiltValueField(wireName: r'id')
  DomainId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Domain name. Cannot be empty
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Whether OAuth2 settings are enabled or not
  @BuiltValueField(wireName: r'oauth2Enabled')
  bool? get oauth2Enabled;

  /// Whether OAuth2 settings are enabled on Edge or not
  @BuiltValueField(wireName: r'propagateToEdge')
  bool? get propagateToEdge;

  /// List of available oauth2 clients
  @BuiltValueField(wireName: r'oauth2ClientInfos')
  BuiltList<OAuth2ClientInfo>? get oauth2ClientInfos;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  DomainInfo._();

  factory DomainInfo([void updates(DomainInfoBuilder b)]) = _$DomainInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DomainInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DomainInfo> get serializer => _$DomainInfoSerializer();
}

class _$DomainInfoSerializer implements PrimitiveSerializer<DomainInfo> {
  @override
  final Iterable<Type> types = const [DomainInfo, _$DomainInfo];

  @override
  final String wireName = r'DomainInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DomainInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(DomainId),
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
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.oauth2Enabled != null) {
      yield r'oauth2Enabled';
      yield serializers.serialize(
        object.oauth2Enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.propagateToEdge != null) {
      yield r'propagateToEdge';
      yield serializers.serialize(
        object.propagateToEdge,
        specifiedType: const FullType(bool),
      );
    }
    if (object.oauth2ClientInfos != null) {
      yield r'oauth2ClientInfos';
      yield serializers.serialize(
        object.oauth2ClientInfos,
        specifiedType: const FullType(BuiltList, [FullType(OAuth2ClientInfo)]),
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
    DomainInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DomainInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DomainId),
          ) as DomainId?;
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
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'customerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(CustomerId),
          ) as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'oauth2Enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.oauth2Enabled = valueDes;
          break;
        case r'propagateToEdge':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.propagateToEdge = valueDes;
          break;
        case r'oauth2ClientInfos':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(OAuth2ClientInfo)]),
          ) as BuiltList<OAuth2ClientInfo>?;
          if (valueDes == null) continue;
          result.oauth2ClientInfos.replace(valueDes);
          break;
        case r'ownerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
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
  DomainInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DomainInfoBuilder();
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


