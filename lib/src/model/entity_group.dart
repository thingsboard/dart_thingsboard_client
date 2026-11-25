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

part 'entity_group.g.dart';

/// A JSON value representing the entity group.
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
/// * [edgeGroupAll] - Indicates special edge group 'All' that contains all entities and can't be deleted.
/// * [groupAll] - Indicates special group 'All' that contains all entities and can't be deleted.
/// * [tenantId]
@BuiltValue()
abstract class EntityGroup implements Built<EntityGroup, EntityGroupBuilder> {
  /// JSON object with the EntityGroupId Id. Specify this field to update the Entity Group. Referencing non-existing Entity Group Id will cause error. Omit this field to create new Entity Group.
  @BuiltValueField(wireName: r'id')
  EntityGroupId? get id;

  /// Timestamp of the entity group creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'type')
  EntityGroupTypeEnum get type;
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

  /// Indicates special edge group 'All' that contains all entities and can't be deleted.
  @BuiltValueField(wireName: r'edgeGroupAll')
  bool? get edgeGroupAll;

  /// Indicates special group 'All' that contains all entities and can't be deleted.
  @BuiltValueField(wireName: r'groupAll')
  bool? get groupAll;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  EntityGroup._();

  factory EntityGroup([void updates(EntityGroupBuilder b)]) = _$EntityGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityGroup> get serializer => _$EntityGroupSerializer();
}

class _$EntityGroupSerializer implements PrimitiveSerializer<EntityGroup> {
  @override
  final Iterable<Type> types = const [EntityGroup, _$EntityGroup];

  @override
  final String wireName = r'EntityGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityGroup object, {
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
      specifiedType: const FullType(EntityGroupTypeEnum),
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
    EntityGroup object, {
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
    required EntityGroupBuilder result,
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
                    specifiedType: const FullType(EntityGroupTypeEnum),
                  )
                  as EntityGroupTypeEnum;
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
  EntityGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityGroupBuilder();
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

class EntityGroupTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TENANT')
  static const EntityGroupTypeEnum TENANT = _$entityGroupTypeEnum_TENANT;
  @BuiltValueEnumConst(wireName: r'CUSTOMER')
  static const EntityGroupTypeEnum CUSTOMER = _$entityGroupTypeEnum_CUSTOMER;
  @BuiltValueEnumConst(wireName: r'USER')
  static const EntityGroupTypeEnum USER = _$entityGroupTypeEnum_USER;
  @BuiltValueEnumConst(wireName: r'DASHBOARD')
  static const EntityGroupTypeEnum DASHBOARD = _$entityGroupTypeEnum_DASHBOARD;
  @BuiltValueEnumConst(wireName: r'ASSET')
  static const EntityGroupTypeEnum ASSET = _$entityGroupTypeEnum_ASSET;
  @BuiltValueEnumConst(wireName: r'DEVICE')
  static const EntityGroupTypeEnum DEVICE = _$entityGroupTypeEnum_DEVICE;
  @BuiltValueEnumConst(wireName: r'ALARM')
  static const EntityGroupTypeEnum ALARM = _$entityGroupTypeEnum_ALARM;
  @BuiltValueEnumConst(wireName: r'ENTITY_GROUP')
  static const EntityGroupTypeEnum ENTITY_GROUP =
      _$entityGroupTypeEnum_ENTITY_GROUP;
  @BuiltValueEnumConst(wireName: r'CONVERTER')
  static const EntityGroupTypeEnum CONVERTER = _$entityGroupTypeEnum_CONVERTER;
  @BuiltValueEnumConst(wireName: r'INTEGRATION')
  static const EntityGroupTypeEnum INTEGRATION =
      _$entityGroupTypeEnum_INTEGRATION;
  @BuiltValueEnumConst(wireName: r'RULE_CHAIN')
  static const EntityGroupTypeEnum RULE_CHAIN =
      _$entityGroupTypeEnum_RULE_CHAIN;
  @BuiltValueEnumConst(wireName: r'RULE_NODE')
  static const EntityGroupTypeEnum RULE_NODE = _$entityGroupTypeEnum_RULE_NODE;
  @BuiltValueEnumConst(wireName: r'SCHEDULER_EVENT')
  static const EntityGroupTypeEnum SCHEDULER_EVENT =
      _$entityGroupTypeEnum_SCHEDULER_EVENT;
  @BuiltValueEnumConst(wireName: r'BLOB_ENTITY')
  static const EntityGroupTypeEnum BLOB_ENTITY =
      _$entityGroupTypeEnum_BLOB_ENTITY;
  @BuiltValueEnumConst(wireName: r'REPORT_TEMPLATE')
  static const EntityGroupTypeEnum REPORT_TEMPLATE =
      _$entityGroupTypeEnum_REPORT_TEMPLATE;
  @BuiltValueEnumConst(wireName: r'REPORT')
  static const EntityGroupTypeEnum REPORT = _$entityGroupTypeEnum_REPORT;
  @BuiltValueEnumConst(wireName: r'ENTITY_VIEW')
  static const EntityGroupTypeEnum ENTITY_VIEW =
      _$entityGroupTypeEnum_ENTITY_VIEW;
  @BuiltValueEnumConst(wireName: r'WIDGETS_BUNDLE')
  static const EntityGroupTypeEnum WIDGETS_BUNDLE =
      _$entityGroupTypeEnum_WIDGETS_BUNDLE;
  @BuiltValueEnumConst(wireName: r'WIDGET_TYPE')
  static const EntityGroupTypeEnum WIDGET_TYPE =
      _$entityGroupTypeEnum_WIDGET_TYPE;
  @BuiltValueEnumConst(wireName: r'ROLE')
  static const EntityGroupTypeEnum ROLE = _$entityGroupTypeEnum_ROLE;
  @BuiltValueEnumConst(wireName: r'GROUP_PERMISSION')
  static const EntityGroupTypeEnum GROUP_PERMISSION =
      _$entityGroupTypeEnum_GROUP_PERMISSION;
  @BuiltValueEnumConst(wireName: r'TENANT_PROFILE')
  static const EntityGroupTypeEnum TENANT_PROFILE =
      _$entityGroupTypeEnum_TENANT_PROFILE;
  @BuiltValueEnumConst(wireName: r'DEVICE_PROFILE')
  static const EntityGroupTypeEnum DEVICE_PROFILE =
      _$entityGroupTypeEnum_DEVICE_PROFILE;
  @BuiltValueEnumConst(wireName: r'ASSET_PROFILE')
  static const EntityGroupTypeEnum ASSET_PROFILE =
      _$entityGroupTypeEnum_ASSET_PROFILE;
  @BuiltValueEnumConst(wireName: r'API_USAGE_STATE')
  static const EntityGroupTypeEnum API_USAGE_STATE =
      _$entityGroupTypeEnum_API_USAGE_STATE;
  @BuiltValueEnumConst(wireName: r'TB_RESOURCE')
  static const EntityGroupTypeEnum TB_RESOURCE =
      _$entityGroupTypeEnum_TB_RESOURCE;
  @BuiltValueEnumConst(wireName: r'OTA_PACKAGE')
  static const EntityGroupTypeEnum OTA_PACKAGE =
      _$entityGroupTypeEnum_OTA_PACKAGE;
  @BuiltValueEnumConst(wireName: r'EDGE')
  static const EntityGroupTypeEnum EDGE = _$entityGroupTypeEnum_EDGE;
  @BuiltValueEnumConst(wireName: r'RPC')
  static const EntityGroupTypeEnum RPC = _$entityGroupTypeEnum_RPC;
  @BuiltValueEnumConst(wireName: r'QUEUE')
  static const EntityGroupTypeEnum QUEUE = _$entityGroupTypeEnum_QUEUE;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_TARGET')
  static const EntityGroupTypeEnum NOTIFICATION_TARGET =
      _$entityGroupTypeEnum_NOTIFICATION_TARGET;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_TEMPLATE')
  static const EntityGroupTypeEnum NOTIFICATION_TEMPLATE =
      _$entityGroupTypeEnum_NOTIFICATION_TEMPLATE;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_REQUEST')
  static const EntityGroupTypeEnum NOTIFICATION_REQUEST =
      _$entityGroupTypeEnum_NOTIFICATION_REQUEST;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION')
  static const EntityGroupTypeEnum NOTIFICATION =
      _$entityGroupTypeEnum_NOTIFICATION;
  @BuiltValueEnumConst(wireName: r'NOTIFICATION_RULE')
  static const EntityGroupTypeEnum NOTIFICATION_RULE =
      _$entityGroupTypeEnum_NOTIFICATION_RULE;
  @BuiltValueEnumConst(wireName: r'QUEUE_STATS')
  static const EntityGroupTypeEnum QUEUE_STATS =
      _$entityGroupTypeEnum_QUEUE_STATS;
  @BuiltValueEnumConst(wireName: r'OAUTH2_CLIENT')
  static const EntityGroupTypeEnum OAUTH2_CLIENT =
      _$entityGroupTypeEnum_OAUTH2_CLIENT;
  @BuiltValueEnumConst(wireName: r'DOMAIN')
  static const EntityGroupTypeEnum DOMAIN = _$entityGroupTypeEnum_DOMAIN;
  @BuiltValueEnumConst(wireName: r'MOBILE_APP')
  static const EntityGroupTypeEnum MOBILE_APP =
      _$entityGroupTypeEnum_MOBILE_APP;
  @BuiltValueEnumConst(wireName: r'MOBILE_APP_BUNDLE')
  static const EntityGroupTypeEnum MOBILE_APP_BUNDLE =
      _$entityGroupTypeEnum_MOBILE_APP_BUNDLE;
  @BuiltValueEnumConst(wireName: r'CALCULATED_FIELD')
  static const EntityGroupTypeEnum CALCULATED_FIELD =
      _$entityGroupTypeEnum_CALCULATED_FIELD;
  @BuiltValueEnumConst(wireName: r'JOB')
  static const EntityGroupTypeEnum JOB = _$entityGroupTypeEnum_JOB;
  @BuiltValueEnumConst(wireName: r'SECRET')
  static const EntityGroupTypeEnum SECRET = _$entityGroupTypeEnum_SECRET;
  @BuiltValueEnumConst(wireName: r'ADMIN_SETTINGS')
  static const EntityGroupTypeEnum ADMIN_SETTINGS =
      _$entityGroupTypeEnum_ADMIN_SETTINGS;
  @BuiltValueEnumConst(wireName: r'AI_MODEL')
  static const EntityGroupTypeEnum AI_MODEL = _$entityGroupTypeEnum_AI_MODEL;
  @BuiltValueEnumConst(wireName: r'API_KEY')
  static const EntityGroupTypeEnum API_KEY = _$entityGroupTypeEnum_API_KEY;
  @BuiltValueEnumConst(wireName: r'AGENT')
  static const EntityGroupTypeEnum AGENT = _$entityGroupTypeEnum_AGENT;
  @BuiltValueEnumConst(wireName: r'AGENT_APPLICATION')
  static const EntityGroupTypeEnum AGENT_APPLICATION =
      _$entityGroupTypeEnum_AGENT_APPLICATION;
  @BuiltValueEnumConst(wireName: r'AGENT_APP_EVENT')
  static const EntityGroupTypeEnum AGENT_APP_EVENT =
      _$entityGroupTypeEnum_AGENT_APP_EVENT;
  @BuiltValueEnumConst(wireName: r'AGENT_APP_UNIT')
  static const EntityGroupTypeEnum AGENT_APP_UNIT =
      _$entityGroupTypeEnum_AGENT_APP_UNIT;
  @BuiltValueEnumConst(wireName: r'AGENT_APP_PROFILE')
  static const EntityGroupTypeEnum AGENT_APP_PROFILE =
      _$entityGroupTypeEnum_AGENT_APP_PROFILE;
  @BuiltValueEnumConst(wireName: r'AGENT_PROFILE')
  static const EntityGroupTypeEnum AGENT_PROFILE =
      _$entityGroupTypeEnum_AGENT_PROFILE;
  @BuiltValueEnumConst(wireName: r'AGENT_BULK_ACTION')
  static const EntityGroupTypeEnum AGENT_BULK_ACTION =
      _$entityGroupTypeEnum_AGENT_BULK_ACTION;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const EntityGroupTypeEnum unknownDefaultOpenApi =
      _$entityGroupTypeEnum_unknownDefaultOpenApi;

  static Serializer<EntityGroupTypeEnum> get serializer =>
      _$entityGroupTypeEnumSerializer;

  const EntityGroupTypeEnum._(String name) : super(name);

  static BuiltSet<EntityGroupTypeEnum> get values =>
      _$entityGroupTypeEnumValues;
  static EntityGroupTypeEnum valueOf(String name) =>
      _$entityGroupTypeEnumValueOf(name);
}
