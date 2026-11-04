// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/edge_id.dart';
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/rule_chain_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edge_info.g.dart';

/// EdgeInfo
///
/// Properties:
/// * [id] - JSON object with the Edge Id. Specify this field to update the Edge. Referencing non-existing Edge Id will cause error. Omit this field to create new Edge.
/// * [createdTime] - Timestamp of the edge creation, in milliseconds
/// * [additionalInfo] - Additional parameters of the edge. May include: 'description' (string).
/// * [tenantId] - JSON object with Tenant Id. Always set to the tenant of the current user on save; cannot be changed after creation.
/// * [customerId] - JSON object with Customer Id.
/// * [rootRuleChainId] - JSON object with Root Rule Chain Id. Use 'setEdgeRootRuleChain' to change the Root Rule Chain Id.
/// * [name] - Unique Edge Name in scope of Tenant
/// * [type] - Edge type
/// * [label] - Label that may be used in widgets
/// * [routingKey] - Edge routing key ('username') to authorize on cloud
/// * [secret] - Edge secret ('password') to authorize on cloud
/// * [edgeLicenseKey] - Edge license key obtained from license portal
/// * [cloudEndpoint] - Edge uses this cloud URL to activate and periodically check it's license
/// * [version] 
/// * [ownerName] - Owner name
/// * [groups] - Groups
/// * [ownerId] 
@BuiltValue()
abstract class EdgeInfo implements Built<EdgeInfo, EdgeInfoBuilder> {
  /// JSON object with the Edge Id. Specify this field to update the Edge. Referencing non-existing Edge Id will cause error. Omit this field to create new Edge.
  @BuiltValueField(wireName: r'id')
  EdgeId? get id;

  /// Timestamp of the edge creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// Additional parameters of the edge. May include: 'description' (string).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id. Always set to the tenant of the current user on save; cannot be changed after creation.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// JSON object with Root Rule Chain Id. Use 'setEdgeRootRuleChain' to change the Root Rule Chain Id.
  @BuiltValueField(wireName: r'rootRuleChainId')
  RuleChainId? get rootRuleChainId;

  /// Unique Edge Name in scope of Tenant
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Edge type
  @BuiltValueField(wireName: r'type')
  String get type;

  /// Label that may be used in widgets
  @BuiltValueField(wireName: r'label')
  String? get label;

  /// Edge routing key ('username') to authorize on cloud
  @BuiltValueField(wireName: r'routingKey')
  String get routingKey;

  /// Edge secret ('password') to authorize on cloud
  @BuiltValueField(wireName: r'secret')
  String get secret;

  /// Edge license key obtained from license portal
  @BuiltValueField(wireName: r'edgeLicenseKey')
  String get edgeLicenseKey;

  /// Edge uses this cloud URL to activate and periodically check it's license
  @BuiltValueField(wireName: r'cloudEndpoint')
  String get cloudEndpoint;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Owner name
  @BuiltValueField(wireName: r'ownerName')
  String? get ownerName;

  /// Groups
  @BuiltValueField(wireName: r'groups')
  BuiltList<EntityInfo>? get groups;

  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  EdgeInfo._();

  factory EdgeInfo([void updates(EdgeInfoBuilder b)]) = _$EdgeInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EdgeInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EdgeInfo> get serializer => _$EdgeInfoSerializer();
}

class _$EdgeInfoSerializer implements PrimitiveSerializer<EdgeInfo> {
  @override
  final Iterable<Type> types = const [EdgeInfo, _$EdgeInfo];

  @override
  final String wireName = r'EdgeInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EdgeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(EdgeId),
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
    if (object.rootRuleChainId != null) {
      yield r'rootRuleChainId';
      yield serializers.serialize(
        object.rootRuleChainId,
        specifiedType: const FullType(RuleChainId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    yield r'routingKey';
    yield serializers.serialize(
      object.routingKey,
      specifiedType: const FullType(String),
    );
    yield r'secret';
    yield serializers.serialize(
      object.secret,
      specifiedType: const FullType(String),
    );
    yield r'edgeLicenseKey';
    yield serializers.serialize(
      object.edgeLicenseKey,
      specifiedType: const FullType(String),
    );
    yield r'cloudEndpoint';
    yield serializers.serialize(
      object.cloudEndpoint,
      specifiedType: const FullType(String),
    );
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.ownerName != null) {
      yield r'ownerName';
      yield serializers.serialize(
        object.ownerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.groups != null) {
      yield r'groups';
      yield serializers.serialize(
        object.groups,
        specifiedType: const FullType(BuiltList, [FullType(EntityInfo)]),
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
    EdgeInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EdgeInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EdgeId),
          ) as EdgeId?;
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
        case r'rootRuleChainId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(RuleChainId),
          ) as RuleChainId?;
          if (valueDes == null) continue;
          result.rootRuleChainId.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.label = valueDes;
          break;
        case r'routingKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.routingKey = valueDes;
          break;
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secret = valueDes;
          break;
        case r'edgeLicenseKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.edgeLicenseKey = valueDes;
          break;
        case r'cloudEndpoint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cloudEndpoint = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'ownerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ownerName = valueDes;
          break;
        case r'groups':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(EntityInfo)]),
          ) as BuiltList<EntityInfo>?;
          if (valueDes == null) continue;
          result.groups.replace(valueDes);
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
  EdgeInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EdgeInfoBuilder();
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


