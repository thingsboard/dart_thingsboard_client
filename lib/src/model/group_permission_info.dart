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
import 'package:thingsboard_client/src/model/role.dart';
import 'package:thingsboard_client/src/model/entity_group_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'group_permission_info.g.dart';

/// GroupPermissionInfo
///
/// Properties:
/// * [id] - JSON object with the Group Permission Id. Specify this field to update the Group Permission. Referencing non-existing Group Permission Id will cause error. Omit this field to create new Group Permission.
/// * [createdTime] - Timestamp of the group permission creation, in milliseconds
/// * [tenantId] - JSON object with the Tenant Id.
/// * [userGroupId] - JSON object with the User Group Id. Represents the user group that will have permissions to perform operations against the corresponding entity group.
/// * [roleId] - JSON object with the Role Id. Represents the set of permissions. The role type (GENERIC or GROUP) determines whether 'entityGroupId' is required.
/// * [entityGroupId] - JSON object with the Entity Group Id. Required when using a GROUP role — specifies the entity group to which the permissions apply. Must be null or omitted when using a GENERIC role.
/// * [entityGroupType] - Type of the entities in the group: DEVICE, ASSET, CUSTOMER, etc. Auto-populated from the referenced entity group. Null for generic permissions.
/// * [role] - Represent set of permissions.
/// * [entityGroupName] - Entity Group Name.
/// * [entityGroupOwnerId] - Entity Group Owner Id (Tenant or Customer).
/// * [entityGroupOwnerName] - Name of the entity group owner (Tenant or Customer title).
/// * [userGroupName] - User Group Name.
/// * [userGroupOwnerId] - User Group Owner Id (Tenant or Customer).
/// * [userGroupOwnerName] - Name of the user group owner (Tenant or Customer title).
/// * [name] - Name of the Group Permissions. Auto-generated
/// * [public]
/// * [readOnly]
@BuiltValue()
abstract class GroupPermissionInfo
    implements Built<GroupPermissionInfo, GroupPermissionInfoBuilder> {
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
  EntityGroupId? get userGroupId;

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

  /// Represent set of permissions.
  @BuiltValueField(wireName: r'role')
  Role? get role;

  /// Entity Group Name.
  @BuiltValueField(wireName: r'entityGroupName')
  String? get entityGroupName;

  /// Entity Group Owner Id (Tenant or Customer).
  @BuiltValueField(wireName: r'entityGroupOwnerId')
  EntityId? get entityGroupOwnerId;

  /// Name of the entity group owner (Tenant or Customer title).
  @BuiltValueField(wireName: r'entityGroupOwnerName')
  String? get entityGroupOwnerName;

  /// User Group Name.
  @BuiltValueField(wireName: r'userGroupName')
  String? get userGroupName;

  /// User Group Owner Id (Tenant or Customer).
  @BuiltValueField(wireName: r'userGroupOwnerId')
  EntityId? get userGroupOwnerId;

  /// Name of the user group owner (Tenant or Customer title).
  @BuiltValueField(wireName: r'userGroupOwnerName')
  String? get userGroupOwnerName;

  /// Name of the Group Permissions. Auto-generated
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'public')
  bool? get public;

  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  GroupPermissionInfo._();

  factory GroupPermissionInfo([void updates(GroupPermissionInfoBuilder b)]) =
      _$GroupPermissionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GroupPermissionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GroupPermissionInfo> get serializer =>
      _$GroupPermissionInfoSerializer();
}

class _$GroupPermissionInfoSerializer
    implements PrimitiveSerializer<GroupPermissionInfo> {
  @override
  final Iterable<Type> types = const [
    GroupPermissionInfo,
    _$GroupPermissionInfo,
  ];

  @override
  final String wireName = r'GroupPermissionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GroupPermissionInfo object, {
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
    if (object.userGroupId != null) {
      yield r'userGroupId';
      yield serializers.serialize(
        object.userGroupId,
        specifiedType: const FullType(EntityGroupId),
      );
    }
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
    if (object.role != null) {
      yield r'role';
      yield serializers.serialize(
        object.role,
        specifiedType: const FullType(Role),
      );
    }
    if (object.entityGroupName != null) {
      yield r'entityGroupName';
      yield serializers.serialize(
        object.entityGroupName,
        specifiedType: const FullType(String),
      );
    }
    if (object.entityGroupOwnerId != null) {
      yield r'entityGroupOwnerId';
      yield serializers.serialize(
        object.entityGroupOwnerId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.entityGroupOwnerName != null) {
      yield r'entityGroupOwnerName';
      yield serializers.serialize(
        object.entityGroupOwnerName,
        specifiedType: const FullType(String),
      );
    }
    if (object.userGroupName != null) {
      yield r'userGroupName';
      yield serializers.serialize(
        object.userGroupName,
        specifiedType: const FullType(String),
      );
    }
    if (object.userGroupOwnerId != null) {
      yield r'userGroupOwnerId';
      yield serializers.serialize(
        object.userGroupOwnerId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.userGroupOwnerName != null) {
      yield r'userGroupOwnerName';
      yield serializers.serialize(
        object.userGroupOwnerName,
        specifiedType: const FullType(String),
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
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GroupPermissionInfo object, {
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
    required GroupPermissionInfoBuilder result,
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
                    specifiedType: const FullType.nullable(GroupPermissionId),
                  )
                  as GroupPermissionId?;
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
        case r'userGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityGroupId),
                  )
                  as EntityGroupId?;
          if (valueDes == null) continue;
          result.userGroupId.replace(valueDes);
          break;
        case r'roleId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(RoleId),
                  )
                  as RoleId;
          result.roleId.replace(valueDes);
          break;
        case r'entityGroupId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityGroupId),
                  )
                  as EntityGroupId?;
          if (valueDes == null) continue;
          result.entityGroupId.replace(valueDes);
          break;
        case r'entityGroupType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityType),
                  )
                  as EntityType?;
          if (valueDes == null) continue;
          result.entityGroupType = valueDes;
          break;
        case r'role':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(Role),
                  )
                  as Role?;
          if (valueDes == null) continue;
          result.role.replace(valueDes);
          break;
        case r'entityGroupName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityGroupName = valueDes;
          break;
        case r'entityGroupOwnerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.entityGroupOwnerId = valueDes;
          break;
        case r'entityGroupOwnerName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityGroupOwnerName = valueDes;
          break;
        case r'userGroupName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userGroupName = valueDes;
          break;
        case r'userGroupOwnerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.userGroupOwnerId = valueDes;
          break;
        case r'userGroupOwnerName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userGroupOwnerName = valueDes;
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'public':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.public = valueDes;
          break;
        case r'readOnly':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.readOnly = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GroupPermissionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GroupPermissionInfoBuilder();
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
