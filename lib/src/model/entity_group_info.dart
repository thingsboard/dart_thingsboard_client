// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_group_info.g.dart';

/// EntityGroupInfo
///
/// Properties:
/// * [id] - JSON object with the EntityGroupId Id. Specify this field to update the Entity Group. Referencing non-existing Entity Group Id will cause error. Omit this field to create new Entity Group.
/// * [createdTime] - Timestamp of the entity group creation, in milliseconds
/// * [type]
/// * [name] - Name of the entity group
/// * [ownerId] - JSON object with the owner of the group - Tenant or Customer Id. When omitted or null on creation, defaults to the current user's owner (Tenant for tenant admins, Customer for customer users).
/// * [additionalInfo] - Additional parameters of the entity group. May include: 'description' (string), 'isPublic' (boolean, whether this group is shared publicly), 'publicCustomerId' (string, UUID of the public customer associated with this group).
/// * [configuration] - JSON with the configuration for UI components: list of columns, settings, actions, etc
/// * [version]
/// * [ownerIds] - List of the entity group owners.
/// * [edgeGroupAll] - Indicates special edge group 'All' that contains all entities and can't be deleted.
/// * [groupAll] - Indicates special group 'All' that contains all entities and can't be deleted.
/// * [tenantId]
@BuiltValue()
abstract class EntityGroupInfo
    implements Built<EntityGroupInfo, EntityGroupInfoBuilder> {
  /// JSON object with the EntityGroupId Id. Specify this field to update the Entity Group. Referencing non-existing Entity Group Id will cause error. Omit this field to create new Entity Group.
  @BuiltValueField(wireName: r'id')
  EntityGroupId? get id;

  /// Timestamp of the entity group creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'type')
  EntityGroupInfoTypeEnum get type;
  // enum typeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  /// Name of the entity group
  @BuiltValueField(wireName: r'name')
  String get name;

  /// JSON object with the owner of the group - Tenant or Customer Id. When omitted or null on creation, defaults to the current user's owner (Tenant for tenant admins, Customer for customer users).
  @BuiltValueField(wireName: r'ownerId')
  EntityId? get ownerId;

  /// Additional parameters of the entity group. May include: 'description' (string), 'isPublic' (boolean, whether this group is shared publicly), 'publicCustomerId' (string, UUID of the public customer associated with this group).
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// JSON with the configuration for UI components: list of columns, settings, actions, etc
  @BuiltValueField(wireName: r'configuration')
  JsonObject? get configuration;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// List of the entity group owners.
  @BuiltValueField(wireName: r'ownerIds')
  BuiltSet<EntityId> get ownerIds;

  /// Indicates special edge group 'All' that contains all entities and can't be deleted.
  @BuiltValueField(wireName: r'edgeGroupAll')
  bool? get edgeGroupAll;

  /// Indicates special group 'All' that contains all entities and can't be deleted.
  @BuiltValueField(wireName: r'groupAll')
  bool? get groupAll;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  EntityGroupInfo._();

  factory EntityGroupInfo([void updates(EntityGroupInfoBuilder b)]) =
      _$EntityGroupInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityGroupInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityGroupInfo> get serializer =>
      _$EntityGroupInfoSerializer();
}

class _$EntityGroupInfoSerializer
    implements PrimitiveSerializer<EntityGroupInfo> {
  @override
  final Iterable<Type> types = const [EntityGroupInfo, _$EntityGroupInfo];

  @override
  final String wireName = r'EntityGroupInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityGroupInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(EntityGroupId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EntityGroupInfoTypeEnum),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.ownerId != null) {
      yield r'ownerId';
      yield serializers.serialize(
        object.ownerId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    yield r'ownerIds';
    yield serializers.serialize(
      object.ownerIds,
      specifiedType: const FullType(BuiltSet, [FullType(EntityId)]),
    );
    if (object.edgeGroupAll != null) {
      yield r'edgeGroupAll';
      yield serializers.serialize(
        object.edgeGroupAll,
        specifiedType: const FullType(bool),
      );
    }
    if (object.groupAll != null) {
      yield r'groupAll';
      yield serializers.serialize(
        object.groupAll,
        specifiedType: const FullType(bool),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityGroupInfo object, {
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
    required EntityGroupInfoBuilder result,
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
                    specifiedType: const FullType.nullable(EntityGroupId),
                  )
                  as EntityGroupId?;
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(EntityGroupInfoTypeEnum),
                  )
                  as EntityGroupInfoTypeEnum;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
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
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'ownerIds':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltSet, [
                      FullType(EntityId),
                    ]),
                  )
                  as BuiltSet<EntityId>;
          result.ownerIds.replace(valueDes);
          break;
        case r'edgeGroupAll':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.edgeGroupAll = valueDes;
          break;
        case r'groupAll':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.groupAll = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityGroupInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityGroupInfoBuilder();
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

class EntityGroupInfoTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TENANT')
  static const EntityGroupInfoTypeEnum TENANT =
      _$entityGroupInfoTypeEnum_TENANT;
  @BuiltValueEnumConst(wireName: r'CUSTOMER')
  static const EntityGroupInfoTypeEnum CUSTOMER =
      _$entityGroupInfoTypeEnum_CUSTOMER;
  @BuiltValueEnumConst(wireName: r'USER')
  static const EntityGroupInfoTypeEnum USER = _$entityGroupInfoTypeEnum_USER;
  @BuiltValueEnumConst(wireName: r'DASHBOARD')
  static const EntityGroupInfoTypeEnum DASHBOARD =
      _$entityGroupInfoTypeEnum_DASHBOARD;
  @BuiltValueEnumConst(wireName: r'ASSET')
  static const EntityGroupInfoTypeEnum ASSET = _$entityGroupInfoTypeEnum_ASSET;
  @BuiltValueEnumConst(wireName: r'DEVICE')
  static const EntityGroupInfoTypeEnum DEVICE =
      _$entityGroupInfoTypeEnum_DEVICE;
  @BuiltValueEnumConst(wireName: r'ALARM')
  static const EntityGroupInfoTypeEnum ALARM = _$entityGroupInfoTypeEnum_ALARM;
  @BuiltValueEnumConst(wireName: r'ENTITY_GROUP')
  static const EntityGroupInfoTypeEnum ENTITY_GROUP =
      _$entityGroupInfoTypeEnum_ENTITY_GROUP;
  @BuiltValueEnumConst(wireName: r'CONVERTER')
  static const EntityGroupInfoTypeEnum CONVERTER =
      _$entityGroupInfoTypeEnum_CONVERTER;
  @BuiltValueEnumConst(wireName: r'INTEGRATION')
  static const EntityGroupInfoTypeEnum INTEGRATION =
      _$entityGroupInfoTypeEnum_INTEGRATION;
  @BuiltValueEnumConst(wireName: r'RULE_CHAIN')
  static const EntityGroupInfoTypeEnum RULE_CHAIN =
      _$entityGroupInfoTypeEnum_RULE_CHAIN;
  @BuiltValueEnumConst(wireName: r'RULE_NODE')
  static const EntityGroupInfoTypeEnum RULE_NODE =
      _$entityGroupInfoTypeEnum_RULE_NODE;
  @BuiltValueEnumConst(wireName: r'SCHEDULER_EVENT')
  static const EntityGroupInfoTypeEnum SCHEDULER_EVENT =
      _$entityGroupInfoTypeEnum_SCHEDULER_EVENT;
  @BuiltValueEnumConst(wireName: r'BLOB_ENTITY')
  static const EntityGroupInfoTypeEnum BLOB_ENTITY =
      _$entityGroupInfoTypeEnum_BLOB_ENTITY;
  @BuiltValueEnumConst(wireName: r'REPORT_TEMPLATE')
  static const EntityGroupInfoTypeEnum REPORT_TEMPLATE =
      _$entityGroupInfoTypeEnum_REPORT_TEMPLATE;
  @BuiltValueEnumConst(wireName: r'REPORT')
  static const EntityGroupInfoTypeEnum REPORT =
      _$entityGroupInfoTypeEnum_REPORT;
  @BuiltValueEnumConst(wireName: r'ENTITY_VIEW')
  static const EntityGroupInfoTypeEnum ENTITY_VIEW =
      _$entityGroupInfoTypeEnum_ENTITY_VIEW;
  @BuiltValueEnumConst(wireName: r'WIDGETS_BUNDLE')
  static const EntityGroupInfoTypeEnum WIDGETS_BUNDLE =
      _$entityGroupInfoTypeEnum_WIDGETS_BUNDLE;
  @BuiltValueEnumConst(wireName: r'WIDGET_TYPE')
  static const EntityGroupInfoTypeEnum WIDGET_TYPE =
      _$entityGroupInfoTypeEnum_WIDGET_TYPE;
  @BuiltValueEnumConst(wireName: r'ROLE')
  static const EntityGroupInfoTypeEnum ROLE = _$entityGroupInfoTypeEnum_ROLE;
  @BuiltValueEnumConst(wireName: r'GROUP_PERMISSION')
  static const EntityGroupInfoTypeEnum GROUP_PERMISSION =
      _$entityGroupInfoTypeEnum_GROUP_PERMISSION;
  @BuiltValueEnumConst(wireName: r'TENANT_PROFILE')
  static const EntityGroupInfoTypeEnum TENANT_PROFILE =
      _$entityGroupInfoTypeEnum_TENANT_PROFILE;
  @BuiltValueEnumConst(wireName: r'DEVICE_PROFILE')
  static const EntityGroupInfoTypeEnum DEVICE_PROFILE =
      _$entityGroupInfoTypeEnum_DEVICE_PROFILE;
  @BuiltValueEnumConst(wireName: r'ASSET_PROFILE')
  static const EntityGroupInfoTypeEnum ASSET_PROFILE =
      _$entityGroupInfoTypeEnum_ASSET_PROFILE;
  @BuiltValueEnumConst(wireName: r'API_USAGE_STATE')
  static const EntityGroupInfoTypeEnum API_USAGE_STATE =
      _$entityGroupInfoTypeEnum_API_USAGE_STATE;
  @BuiltValueEnumConst(wireName: r'TB_RESOURCE')
  static const EntityGroupInfoTypeEnum TB_RESOURCE =
      _$entityGroupInfoTypeEnum_TB_RESOURCE;
  @BuiltValueEnumConst(wireName: r'OTA_PACKAGE')
  static const EntityGroupInfoTypeEnum OTA_PACKAGE =
      _$entityGroupInfoTypeEnum_OTA_PACKAGE;
  @BuiltValueEnumConst(wireName: r'EDGE')
  static const EntityGroupInfoTypeEnum EDGE = _$entityGroupInfoTypeEnum_EDGE;
  @BuiltValueEnumConst(wireName: r'RPC')
  static const EntityGroupInfoTypeEnum RPC = _$entityGroupInfoTypeEnum_RPC;
  @BuiltValueEnumConst(wireName: r'QUEUE')
  static const EntityGroupInfoTypeEnum QUEUE = _$entityGroupInfoTypeEnum_QUEUE;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_TARGET')
  static const EntityGroupInfoTypeEnum NOTIFICATION_TARGET =
      _$entityGroupInfoTypeEnum_NOTIFICATION_TARGET;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_TEMPLATE')
  static const EntityGroupInfoTypeEnum NOTIFICATION_TEMPLATE =
      _$entityGroupInfoTypeEnum_NOTIFICATION_TEMPLATE;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_REQUEST')
  static const EntityGroupInfoTypeEnum NOTIFICATION_REQUEST =
      _$entityGroupInfoTypeEnum_NOTIFICATION_REQUEST;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION')
  static const EntityGroupInfoTypeEnum NOTIFICATION =
      _$entityGroupInfoTypeEnum_NOTIFICATION;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_RULE')
  static const EntityGroupInfoTypeEnum NOTIFICATION_RULE =
      _$entityGroupInfoTypeEnum_NOTIFICATION_RULE;
  @BuiltValueEnumConst(wireName: r'QUEUE_STATS')
  static const EntityGroupInfoTypeEnum QUEUE_STATS =
      _$entityGroupInfoTypeEnum_QUEUE_STATS;
  @BuiltValueEnumConst(wireName: r'OAUTH2_CLIENT')
  static const EntityGroupInfoTypeEnum OAUTH2_CLIENT =
      _$entityGroupInfoTypeEnum_OAUTH2_CLIENT;
  @BuiltValueEnumConst(wireName: r'DOMAIN')
  static const EntityGroupInfoTypeEnum DOMAIN =
      _$entityGroupInfoTypeEnum_DOMAIN;
  @BuiltValueEnumConst(wireName: r'MOBILE_APP')
  static const EntityGroupInfoTypeEnum MOBILE_APP =
      _$entityGroupInfoTypeEnum_MOBILE_APP;
  @BuiltValueEnumConst(wireName: r'MOBILE_APP_BUNDLE')
  static const EntityGroupInfoTypeEnum MOBILE_APP_BUNDLE =
      _$entityGroupInfoTypeEnum_MOBILE_APP_BUNDLE;
  @BuiltValueEnumConst(wireName: r'CALCULATED_FIELD')
  static const EntityGroupInfoTypeEnum CALCULATED_FIELD =
      _$entityGroupInfoTypeEnum_CALCULATED_FIELD;
  @BuiltValueEnumConst(wireName: r'JOB')
  static const EntityGroupInfoTypeEnum JOB = _$entityGroupInfoTypeEnum_JOB;
  @BuiltValueEnumConst(wireName: r'SECRET')
  static const EntityGroupInfoTypeEnum SECRET =
      _$entityGroupInfoTypeEnum_SECRET;
  @BuiltValueEnumConst(wireName: r'ADMIN_SETTINGS')
  static const EntityGroupInfoTypeEnum ADMIN_SETTINGS =
      _$entityGroupInfoTypeEnum_ADMIN_SETTINGS;
  @BuiltValueEnumConst(wireName: r'AI_MODEL')
  static const EntityGroupInfoTypeEnum AI_MODEL =
      _$entityGroupInfoTypeEnum_AI_MODEL;
  @BuiltValueEnumConst(wireName: r'API_KEY')
  static const EntityGroupInfoTypeEnum API_KEY =
      _$entityGroupInfoTypeEnum_API_KEY;
  @BuiltValueEnumConst(wireName: r'AGENT')
  static const EntityGroupInfoTypeEnum AGENT = _$entityGroupInfoTypeEnum_AGENT;
  @BuiltValueEnumConst(wireName: r'AGENT_APPLICATION')
  static const EntityGroupInfoTypeEnum AGENT_APPLICATION =
      _$entityGroupInfoTypeEnum_AGENT_APPLICATION;
  @BuiltValueEnumConst(wireName: r'AGENT_APP_EVENT')
  static const EntityGroupInfoTypeEnum AGENT_APP_EVENT =
      _$entityGroupInfoTypeEnum_AGENT_APP_EVENT;
  @BuiltValueEnumConst(wireName: r'AGENT_APP_UNIT')
  static const EntityGroupInfoTypeEnum AGENT_APP_UNIT =
      _$entityGroupInfoTypeEnum_AGENT_APP_UNIT;
  @BuiltValueEnumConst(wireName: r'AGENT_APP_PROFILE')
  static const EntityGroupInfoTypeEnum AGENT_APP_PROFILE =
      _$entityGroupInfoTypeEnum_AGENT_APP_PROFILE;
  @BuiltValueEnumConst(wireName: r'AGENT_PROFILE')
  static const EntityGroupInfoTypeEnum AGENT_PROFILE =
      _$entityGroupInfoTypeEnum_AGENT_PROFILE;
  @BuiltValueEnumConst(wireName: r'AGENT_BULK_ACTION')
  static const EntityGroupInfoTypeEnum AGENT_BULK_ACTION =
      _$entityGroupInfoTypeEnum_AGENT_BULK_ACTION;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EntityGroupInfoTypeEnum unknownDefaultOpenApi =
      _$entityGroupInfoTypeEnum_unknownDefaultOpenApi;

  static Serializer<EntityGroupInfoTypeEnum> get serializer =>
      _$entityGroupInfoTypeEnumSerializer;

  const EntityGroupInfoTypeEnum._(String name) : super(name);

  static BuiltSet<EntityGroupInfoTypeEnum> get values =>
      _$entityGroupInfoTypeEnumValues;
  static EntityGroupInfoTypeEnum valueOf(String name) =>
      _$entityGroupInfoTypeEnumValueOf(name);
}
