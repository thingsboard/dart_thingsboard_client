// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/action_type.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_action_notification_info.g.dart';

/// EntityActionNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [entityId]
/// * [entityName]
/// * [actionType]
/// * [customerId]
/// * [userId]
/// * [userTitle]
/// * [userEmail]
/// * [userFirstName]
/// * [userLastName]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class EntityActionNotificationInfo
    implements
        NotificationInfo,
        Built<
          EntityActionNotificationInfo,
          EntityActionNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'actionType')
  ActionType? get actionType;
  // enum actionTypeEnum {  ADDED,  DELETED,  UPDATED,  ATTRIBUTES_UPDATED,  ATTRIBUTES_DELETED,  TIMESERIES_UPDATED,  TIMESERIES_DELETED,  RPC_CALL,  CREDENTIALS_UPDATED,  ASSIGNED_TO_CUSTOMER,  UNASSIGNED_FROM_CUSTOMER,  CHANGE_OWNER,  ACTIVATED,  SUSPENDED,  CREDENTIALS_READ,  ATTRIBUTES_READ,  RELATION_ADD_OR_UPDATE,  RELATION_DELETED,  RELATIONS_DELETED,  ALARM_ACK,  ALARM_CLEAR,  ALARM_DELETE,  ALARM_ASSIGNED,  ALARM_UNASSIGNED,  ADDED_TO_ENTITY_GROUP,  REMOVED_FROM_ENTITY_GROUP,  REST_API_RULE_ENGINE_CALL,  MADE_PUBLIC,  MADE_PRIVATE,  LOGIN,  LOGOUT,  LOCKOUT,  ASSIGNED_FROM_TENANT,  ASSIGNED_TO_TENANT,  PROVISION_SUCCESS,  PROVISION_FAILURE,  ASSIGNED_TO_EDGE,  UNASSIGNED_FROM_EDGE,  ADDED_COMMENT,  UPDATED_COMMENT,  DELETED_COMMENT,  SMS_SENT,  NON_PRODUCTION_CONFIRMED,  COMMUNITY_GRANT_OFFLINE_CHECKER_RUN,  COMMUNITY_GRANT_REQUEST_ACCESS,  COMMUNITY_GRANT_ENROLLMENT,  };

  @BuiltValueField(wireName: r'userTitle')
  String? get userTitle;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'entityName')
  String? get entityName;

  @BuiltValueField(wireName: r'userLastName')
  String? get userLastName;

  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  @BuiltValueField(wireName: r'entityId')
  EntityId? get entityId;

  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'userFirstName')
  String? get userFirstName;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  @BuiltValueField(wireName: r'userId')
  String? get userId;

  EntityActionNotificationInfo._();

  factory EntityActionNotificationInfo([
    void updates(EntityActionNotificationInfoBuilder b),
  ]) = _$EntityActionNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityActionNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.EntityActionNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityActionNotificationInfo> get serializer =>
      _$EntityActionNotificationInfoSerializer();
}

class _$EntityActionNotificationInfoSerializer
    implements PrimitiveSerializer<EntityActionNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    EntityActionNotificationInfo,
    _$EntityActionNotificationInfo,
  ];

  @override
  final String wireName = r'EntityActionNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityActionNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.affectedUserId != null) {
      yield r'affectedUserId';
      yield serializers.serialize(
        object.affectedUserId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.affectedCustomerId != null) {
      yield r'affectedCustomerId';
      yield serializers.serialize(
        object.affectedCustomerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.userFirstName != null) {
      yield r'userFirstName';
      yield serializers.serialize(
        object.userFirstName,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.actionType != null) {
      yield r'actionType';
      yield serializers.serialize(
        object.actionType,
        specifiedType: const FullType(ActionType),
      );
    }
    if (object.userTitle != null) {
      yield r'userTitle';
      yield serializers.serialize(
        object.userTitle,
        specifiedType: const FullType(String),
      );
    }
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.entityName != null) {
      yield r'entityName';
      yield serializers.serialize(
        object.entityName,
        specifiedType: const FullType(String),
      );
    }
    if (object.userLastName != null) {
      yield r'userLastName';
      yield serializers.serialize(
        object.userLastName,
        specifiedType: const FullType(String),
      );
    }
    if (object.stateEntityId != null) {
      yield r'stateEntityId';
      yield serializers.serialize(
        object.stateEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.customerId != null) {
      yield r'customerId';
      yield serializers.serialize(
        object.customerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.userEmail != null) {
      yield r'userEmail';
      yield serializers.serialize(
        object.userEmail,
        specifiedType: const FullType(String),
      );
    }
    if (object.affectedTenantId != null) {
      yield r'affectedTenantId';
      yield serializers.serialize(
        object.affectedTenantId,
        specifiedType: const FullType(TenantId),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityActionNotificationInfo object, {
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
    required EntityActionNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'affectedUserId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.affectedUserId.replace(valueDes);
          break;
        case r'entityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'affectedCustomerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.affectedCustomerId.replace(valueDes);
          break;
        case r'userFirstName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userFirstName = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'userId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userId = valueDes;
          break;
        case r'actionType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ActionType),
                  )
                  as ActionType?;
          if (valueDes == null) continue;
          result.actionType = valueDes;
          break;
        case r'userTitle':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userTitle = valueDes;
          break;
        case r'dashboardId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DashboardId),
                  )
                  as DashboardId?;
          if (valueDes == null) continue;
          result.dashboardId.replace(valueDes);
          break;
        case r'entityName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.entityName = valueDes;
          break;
        case r'userLastName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userLastName = valueDes;
          break;
        case r'stateEntityId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.stateEntityId = valueDes;
          break;
        case r'customerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.customerId.replace(valueDes);
          break;
        case r'userEmail':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userEmail = valueDes;
          break;
        case r'affectedTenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.affectedTenantId.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityActionNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityActionNotificationInfoBuilder();
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
