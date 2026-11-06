// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/housekeeper_task_type.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task_processing_failure_notification_info.g.dart';

/// TaskProcessingFailureNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [tenantId]
/// * [entityId]
/// * [taskType]
/// * [taskDescription]
/// * [error]
/// * [attempt]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class TaskProcessingFailureNotificationInfo
    implements
        NotificationInfo,
        Built<
          TaskProcessingFailureNotificationInfo,
          TaskProcessingFailureNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'taskType')
  HousekeeperTaskType? get taskType;
  // enum taskTypeEnum {  DELETE_ATTRIBUTES,  DELETE_TELEMETRY,  DELETE_LATEST_TS,  DELETE_TS_HISTORY,  DELETE_EVENTS,  DELETE_ALARMS,  DELETE_ALARM_COMMENTS,  UNASSIGN_ALARMS,  DELETE_TENANT_ENTITIES,  DELETE_ENTITIES,  CLEANUP_ENTITIES,  DELETE_CALCULATED_FIELDS,  DELETE_JOBS,  DELETE_AI_USER_DATA,  DELETE_AI_TENANT_DATA,  };

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'taskDescription')
  String? get taskDescription;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'entityId')
  EntityId? get entityId;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  @BuiltValueField(wireName: r'error')
  String? get error;

  @BuiltValueField(wireName: r'attempt')
  int? get attempt;

  TaskProcessingFailureNotificationInfo._();

  factory TaskProcessingFailureNotificationInfo([
    void updates(TaskProcessingFailureNotificationInfoBuilder b),
  ]) = _$TaskProcessingFailureNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskProcessingFailureNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.TaskProcessingFailureNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<TaskProcessingFailureNotificationInfo> get serializer =>
      _$TaskProcessingFailureNotificationInfoSerializer();
}

class _$TaskProcessingFailureNotificationInfoSerializer
    implements PrimitiveSerializer<TaskProcessingFailureNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    TaskProcessingFailureNotificationInfo,
    _$TaskProcessingFailureNotificationInfo,
  ];

  @override
  final String wireName = r'TaskProcessingFailureNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TaskProcessingFailureNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.taskType != null) {
      yield r'taskType';
      yield serializers.serialize(
        object.taskType,
        specifiedType: const FullType(HousekeeperTaskType),
      );
    }
    if (object.affectedUserId != null) {
      yield r'affectedUserId';
      yield serializers.serialize(
        object.affectedUserId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(DashboardId),
      );
    }
    if (object.taskDescription != null) {
      yield r'taskDescription';
      yield serializers.serialize(
        object.taskDescription,
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
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
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
    if (object.affectedTenantId != null) {
      yield r'affectedTenantId';
      yield serializers.serialize(
        object.affectedTenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.attempt != null) {
      yield r'attempt';
      yield serializers.serialize(
        object.attempt,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TaskProcessingFailureNotificationInfo object, {
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
    required TaskProcessingFailureNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'taskType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(HousekeeperTaskType),
                  )
                  as HousekeeperTaskType?;
          if (valueDes == null) continue;
          result.taskType = valueDes;
          break;
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
        case r'taskDescription':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.taskDescription = valueDes;
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
        case r'error':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
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
        case r'attempt':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.attempt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TaskProcessingFailureNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskProcessingFailureNotificationInfoBuilder();
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
