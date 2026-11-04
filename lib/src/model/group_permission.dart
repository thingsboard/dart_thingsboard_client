// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/role_id.dart';
import 'package:thingsboard_client/src/model/group_permission_id.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_permission.g.dart';

/// A JSON value representing the group permission.
///
/// Properties:
/// * [id] - JSON object with the Group Permission Id. Specify this field to update the Group Permission. Referencing non-existing Group Permission Id will cause error. Omit this field to create new Group Permission.
/// * [createdTime] - Timestamp of the group permission creation, in milliseconds
/// * [tenantId] - JSON object with the Tenant Id.
/// * [userGroupId] - JSON object with the User Group Id. Represents the user group that will have permissions to perform operations against the corresponding entity group.
/// * [roleId] - JSON object with the Role Id. Represents the set of permissions. The role type (GENERIC or GROUP) determines whether 'entityGroupId' is required.
/// * [entityGroupId] - JSON object with the Entity Group Id. Required when using a GROUP role — specifies the entity group to which the permissions apply. Must be null or omitted when using a GENERIC role.
/// * [entityGroupType] - Type of the entities in the group: DEVICE, ASSET, CUSTOMER, etc. Auto-populated from the referenced entity group. Null for generic permissions.
/// * [isPublic] 
/// * [name] - Name of the Group Permissions. Auto-generated
/// * [public] 
@BuiltValue()
abstract class GroupPermission implements Built<GroupPermission, GroupPermissionBuilder> {
  /// JSON object with the Group Permission Id. Specify this field to update the Group Permission. Referencing non-existing Group Permission Id will cause error. Omit this field to create new Group Permission.
  @BuiltValueField(wireName: r'id')
  GroupPermissionId? get id;

  /// Timestamp of the group permission creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with the Tenant Id.
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with the User Group Id. Represents the user group that will have permissions to perform operations against the corresponding entity group.
  @BuiltValueField(wireName: r'userGroupId')
  EntityGroupId get userGroupId;

  /// JSON object with the Role Id. Represents the set of permissions. The role type (GENERIC or GROUP) determines whether 'entityGroupId' is required.
  @BuiltValueField(wireName: r'roleId')
  RoleId get roleId;

  /// JSON object with the Entity Group Id. Required when using a GROUP role — specifies the entity group to which the permissions apply. Must be null or omitted when using a GENERIC role.
  @BuiltValueField(wireName: r'entityGroupId')
  EntityGroupId? get entityGroupId;

  /// Type of the entities in the group: DEVICE, ASSET, CUSTOMER, etc. Auto-populated from the referenced entity group. Null for generic permissions.
  @BuiltValueField(wireName: r'entityGroupType')
  EntityType? get entityGroupType;
  // enum entityGroupTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'isPublic')
  bool? get isPublic;

  /// Name of the Group Permissions. Auto-generated
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'public')
  bool? get public;

  GroupPermission._();

  factory GroupPermission([void updates(GroupPermissionBuilder b)]) = _$GroupPermission;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupPermissionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupPermission> get serializer => _$GroupPermissionSerializer();
}

class _$GroupPermissionSerializer implements PrimitiveSerializer<GroupPermission> {
  @override
  final Iterable<Type> types = const [GroupPermission, _$GroupPermission];

  @override
  final String wireName = r'GroupPermission';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(GroupPermissionId),
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
    yield r'userGroupId';
    yield serializers.serialize(
      object.userGroupId,
      specifiedType: const FullType(EntityGroupId),
    );
    yield r'roleId';
    yield serializers.serialize(
      object.roleId,
      specifiedType: const FullType(RoleId),
    );
    if (object.entityGroupId != null) {
      yield r'entityGroupId';
      yield serializers.serialize(
        object.entityGroupId,
        specifiedType: const FullType(EntityGroupId),
      );
    }
    if (object.entityGroupType != null) {
      yield r'entityGroupType';
      yield serializers.serialize(
        object.entityGroupType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.isPublic != null) {
      yield r'isPublic';
      yield serializers.serialize(
        object.isPublic,
        specifiedType: const FullType(bool),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.public != null) {
      yield r'public';
      yield serializers.serialize(
        object.public,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupPermission object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GroupPermissionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(GroupPermissionId),
          ) as GroupPermissionId?;
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
        case r'userGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityGroupId),
          ) as EntityGroupId;
          result.userGroupId.replace(valueDes);
          break;
        case r'roleId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RoleId),
          ) as RoleId;
          result.roleId.replace(valueDes);
          break;
        case r'entityGroupId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityGroupId),
          ) as EntityGroupId?;
          if (valueDes == null) continue;
          result.entityGroupId.replace(valueDes);
          break;
        case r'entityGroupType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityType),
          ) as EntityType?;
          if (valueDes == null) continue;
          result.entityGroupType = valueDes;
          break;
        case r'isPublic':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPublic = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'public':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.public = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupPermission deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupPermissionBuilder();
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


