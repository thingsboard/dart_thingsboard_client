// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/entity_info.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/agent_id.dart';
import 'package:thingsboard_client/src/model/agent_profile_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'agent_info.g.dart';

/// AgentInfo
///
/// Properties:
/// * [id] - JSON object with the Agent Id. Specify this field to update the Agent. Referencing non-existing Agent Id will cause error. Omit this field to create new Agent.
/// * [createdTime] - Timestamp of the agent creation, in milliseconds
/// * [additionalInfo] - A value representing the any type (object or primitive)
/// * [tenantId] - JSON object with Tenant Id. Use 'assignAgentToTenant' to change the Tenant Id.
/// * [customerId] - JSON object with Customer Id.
/// * [name] - Unique Agent Name in scope of Tenant
/// * [description] - Agent description
/// * [routingKey] - Agent routing key used for authentication
/// * [secret] - Agent secret used for authentication
/// * [agentProfileId] - JSON object with Agent Profile Id. Nullable.
/// * [version] 
/// * [customerTitle] - Title of the Customer that owns the agent.
/// * [customerIsPublic] - Indicates special 'Public' Customer that is auto-generated to use the agents on public dashboards.
/// * [agentProfileName] - Name of the Agent Profile the agent belongs to.
/// * [ownerName] - Owner name — tenant title if the agent is owned by a tenant, or customer title otherwise.
/// * [groups] - Entity groups that contain this agent (excluding the implicit 'All' group).
/// * [active] - Whether the agent currently has an active connection (derived from server-scope 'active' attribute).
/// * [agentVersion] - Agent software version reported on the last connect (derived from server-scope 'agentVersion' attribute).
/// * [upgradeTargetImageRef] - Image reference this agent should be upgraded to, or null when no upgrade applies. Resolved from the published version graph.
/// * [ownerId] - JSON object with Customer or Tenant Id
@BuiltValue()
abstract class AgentInfo implements Built<AgentInfo, AgentInfoBuilder> {
  /// JSON object with the Agent Id. Specify this field to update the Agent. Referencing non-existing Agent Id will cause error. Omit this field to create new Agent.
  @BuiltValueField(wireName: r'id')
  AgentId? get id;

  /// Timestamp of the agent creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON object with Tenant Id. Use 'assignAgentToTenant' to change the Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id.
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// Unique Agent Name in scope of Tenant
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Agent description
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Agent routing key used for authentication
  @BuiltValueField(wireName: r'routingKey')
  String get routingKey;

  /// Agent secret used for authentication
  @BuiltValueField(wireName: r'secret')
  String get secret;

  /// JSON object with Agent Profile Id. Nullable.
  @BuiltValueField(wireName: r'agentProfileId')
  AgentProfileId? get agentProfileId;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// Title of the Customer that owns the agent.
  @BuiltValueField(wireName: r'customerTitle')
  String? get customerTitle;

  /// Indicates special 'Public' Customer that is auto-generated to use the agents on public dashboards.
  @BuiltValueField(wireName: r'customerIsPublic')
  bool? get customerIsPublic;

  /// Name of the Agent Profile the agent belongs to.
  @BuiltValueField(wireName: r'agentProfileName')
  String? get agentProfileName;

  /// Owner name — tenant title if the agent is owned by a tenant, or customer title otherwise.
  @BuiltValueField(wireName: r'ownerName')
  String? get ownerName;

  /// Entity groups that contain this agent (excluding the implicit 'All' group).
  @BuiltValueField(wireName: r'groups')
  BuiltList<EntityInfo>? get groups;

  /// Whether the agent currently has an active connection (derived from server-scope 'active' attribute).
  @BuiltValueField(wireName: r'active')
  bool? get active;

  /// Agent software version reported on the last connect (derived from server-scope 'agentVersion' attribute).
  @BuiltValueField(wireName: r'agentVersion')
  String? get agentVersion;

  /// Image reference this agent should be upgraded to, or null when no upgrade applies. Resolved from the published version graph.
  @BuiltValueField(wireName: r'upgradeTargetImageRef')
  String? get upgradeTargetImageRef;

  /// JSON object with Customer or Tenant Id
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  AgentInfo._();

  factory AgentInfo([void updates(AgentInfoBuilder b)]) = _$AgentInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AgentInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AgentInfo> get serializer => _$AgentInfoSerializer();
}

class _$AgentInfoSerializer implements PrimitiveSerializer<AgentInfo> {
  @override
  final Iterable<Type> types = const [AgentInfo, _$AgentInfo];

  @override
  final String wireName = r'AgentInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AgentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AgentId),
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
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
    if (object.agentProfileId != null) {
      yield r'agentProfileId';
      yield serializers.serialize(
        object.agentProfileId,
        specifiedType: const FullType(AgentProfileId),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerTitle != null) {
      yield r'customerTitle';
      yield serializers.serialize(
        object.customerTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerIsPublic != null) {
      yield r'customerIsPublic';
      yield serializers.serialize(
        object.customerIsPublic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.agentProfileName != null) {
      yield r'agentProfileName';
      yield serializers.serialize(
        object.agentProfileName,
        specifiedType: const FullType(String),
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
    if (object.active != null) {
      yield r'active';
      yield serializers.serialize(
        object.active,
        specifiedType: const FullType(bool),
      );
    }
    if (object.agentVersion != null) {
      yield r'agentVersion';
      yield serializers.serialize(
        object.agentVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.upgradeTargetImageRef != null) {
      yield r'upgradeTargetImageRef';
      yield serializers.serialize(
        object.upgradeTargetImageRef,
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
    AgentInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AgentInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentId),
          ) as AgentId?;
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
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
        case r'agentProfileId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AgentProfileId),
          ) as AgentProfileId?;
          if (valueDes == null) continue;
          result.agentProfileId.replace(valueDes);
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'customerTitle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.customerTitle = valueDes;
          break;
        case r'customerIsPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.customerIsPublic = valueDes;
          break;
        case r'agentProfileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentProfileName = valueDes;
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
        case r'active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.active = valueDes;
          break;
        case r'agentVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.agentVersion = valueDes;
          break;
        case r'upgradeTargetImageRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.upgradeTargetImageRef = valueDes;
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
  AgentInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AgentInfoBuilder();
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


