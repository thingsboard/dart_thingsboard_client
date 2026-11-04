// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/action_status.dart';
import 'package:thingsboard_client/src/model/action_type.dart';
import 'package:thingsboard_client/src/model/audit_log_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_log.g.dart';

/// AuditLog
///
/// Properties:
/// * [id] - JSON object with the auditLog Id
/// * [createdTime] - Timestamp of the auditLog creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id
/// * [customerId] - JSON object with Customer Id
/// * [entityId] - JSON object with Entity id
/// * [entityName] - Name of the logged entity
/// * [userId] - JSON object with User id.
/// * [userName] - Unique user name(email) of the user that performed some action on logged entity
/// * [actionType] - String represented Action type
/// * [actionData] - JsonNode represented action data
/// * [actionStatus] - String represented Action status
/// * [actionFailureDetails] - Failure action details info. An empty string in case of action status type 'SUCCESS', otherwise includes stack trace of the caused exception.
@BuiltValue()
abstract class AuditLog implements Built<AuditLog, AuditLogBuilder> {
  /// JSON object with the auditLog Id
  @BuiltValueField(wireName: r'id')
  AuditLogId? get id;

  /// Timestamp of the auditLog creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// JSON object with Customer Id
  @BuiltValueField(wireName: r'customerId')
  CustomerId? get customerId;

  /// JSON object with Entity id
  @BuiltValueField(wireName: r'entityId')
  EntityId? get entityId;

  /// Name of the logged entity
  @BuiltValueField(wireName: r'entityName')
  String? get entityName;

  /// JSON object with User id.
  @BuiltValueField(wireName: r'userId')
  UserId? get userId;

  /// Unique user name(email) of the user that performed some action on logged entity
  @BuiltValueField(wireName: r'userName')
  String? get userName;

  /// String represented Action type
  @BuiltValueField(wireName: r'actionType')
  ActionType? get actionType;
  // enum actionTypeEnum {  ADDED,  DELETED,  UPDATED,  ATTRIBUTES_UPDATED,  ATTRIBUTES_DELETED,  TIMESERIES_UPDATED,  TIMESERIES_DELETED,  RPC_CALL,  CREDENTIALS_UPDATED,  ASSIGNED_TO_CUSTOMER,  UNASSIGNED_FROM_CUSTOMER,  CHANGE_OWNER,  ACTIVATED,  SUSPENDED,  CREDENTIALS_READ,  ATTRIBUTES_READ,  RELATION_ADD_OR_UPDATE,  RELATION_DELETED,  RELATIONS_DELETED,  ALARM_ACK,  ALARM_CLEAR,  ALARM_DELETE,  ALARM_ASSIGNED,  ALARM_UNASSIGNED,  ADDED_TO_ENTITY_GROUP,  REMOVED_FROM_ENTITY_GROUP,  REST_API_RULE_ENGINE_CALL,  MADE_PUBLIC,  MADE_PRIVATE,  LOGIN,  LOGOUT,  LOCKOUT,  ASSIGNED_FROM_TENANT,  ASSIGNED_TO_TENANT,  PROVISION_SUCCESS,  PROVISION_FAILURE,  ASSIGNED_TO_EDGE,  UNASSIGNED_FROM_EDGE,  ADDED_COMMENT,  UPDATED_COMMENT,  DELETED_COMMENT,  SMS_SENT,  NON_PRODUCTION_CONFIRMED,  COMMUNITY_GRANT_OFFLINE_CHECKER_RUN,  COMMUNITY_GRANT_REQUEST_ACCESS,  COMMUNITY_GRANT_ENROLLMENT,  };

  /// JsonNode represented action data
  @BuiltValueField(wireName: r'actionData')
  JsonObject? get actionData;

  /// String represented Action status
  @BuiltValueField(wireName: r'actionStatus')
  ActionStatus? get actionStatus;
  // enum actionStatusEnum {  SUCCESS,  FAILURE,  };

  /// Failure action details info. An empty string in case of action status type 'SUCCESS', otherwise includes stack trace of the caused exception.
  @BuiltValueField(wireName: r'actionFailureDetails')
  String? get actionFailureDetails;

  AuditLog._();

  factory AuditLog([void updates(AuditLogBuilder b)]) = _$AuditLog;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AuditLogBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AuditLog> get serializer => _$AuditLogSerializer();
}

class _$AuditLogSerializer implements PrimitiveSerializer<AuditLog> {
  @override
  final Iterable<Type> types = const [AuditLog, _$AuditLog];

  @override
  final String wireName = r'AuditLog';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AuditLog object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(AuditLogId),
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
    if (object.entityId != null) {
      yield r'entityId';
      yield serializers.serialize(
        object.entityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.entityName != null) {
      yield r'entityName';
      yield serializers.serialize(
        object.entityName,
        specifiedType: const FullType(String),
      );
    }
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.userName != null) {
      yield r'userName';
      yield serializers.serialize(
        object.userName,
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
    if (object.actionData != null) {
      yield r'actionData';
      yield serializers.serialize(
        object.actionData,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.actionStatus != null) {
      yield r'actionStatus';
      yield serializers.serialize(
        object.actionStatus,
        specifiedType: const FullType(ActionStatus),
      );
    }
    if (object.actionFailureDetails != null) {
      yield r'actionFailureDetails';
      yield serializers.serialize(
        object.actionFailureDetails,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AuditLog object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AuditLogBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AuditLogId),
          ) as AuditLogId?;
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
        case r'entityId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityId),
          ) as EntityId?;
          if (valueDes == null) continue;
          result.entityId = valueDes;
          break;
        case r'entityName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entityName = valueDes;
          break;
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserId),
          ) as UserId?;
          if (valueDes == null) continue;
          result.userId.replace(valueDes);
          break;
        case r'userName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.userName = valueDes;
          break;
        case r'actionType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ActionType),
          ) as ActionType?;
          if (valueDes == null) continue;
          result.actionType = valueDes;
          break;
        case r'actionData':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.actionData = valueDes;
          break;
        case r'actionStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ActionStatus),
          ) as ActionStatus?;
          if (valueDes == null) continue;
          result.actionStatus = valueDes;
          break;
        case r'actionFailureDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.actionFailureDetails = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AuditLog deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AuditLogBuilder();
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


