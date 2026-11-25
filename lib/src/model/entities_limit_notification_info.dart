// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/entity_type.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entities_limit_notification_info.g.dart';

/// EntitiesLimitNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [entityType]
/// * [currentCount]
/// * [limit]
/// * [percents]
/// * [tenantId]
/// * [tenantName]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class EntitiesLimitNotificationInfo
    implements
        NotificationInfo,
        Built<
          EntitiesLimitNotificationInfo,
          EntitiesLimitNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'tenantName')
  String? get tenantName;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'entityType')
  EntityType? get entityType;
  // enum entityTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'currentCount')
  int? get currentCount;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'percents')
  int? get percents;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  EntitiesLimitNotificationInfo._();

  factory EntitiesLimitNotificationInfo([
    void updates(EntitiesLimitNotificationInfoBuilder b),
  ]) = _$EntitiesLimitNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntitiesLimitNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.EntitiesLimitNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<EntitiesLimitNotificationInfo> get serializer =>
      _$EntitiesLimitNotificationInfoSerializer();
}

class _$EntitiesLimitNotificationInfoSerializer
    implements PrimitiveSerializer<EntitiesLimitNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    EntitiesLimitNotificationInfo,
    _$EntitiesLimitNotificationInfo,
  ];

  @override
  final String wireName = r'EntitiesLimitNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntitiesLimitNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantName != null) {
      yield r'tenantName';
      yield serializers.serialize(
        object.tenantName,
        specifiedType: const FullType(String),
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
    if (object.entityType != null) {
      yield r'entityType';
      yield serializers.serialize(
        object.entityType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.currentCount != null) {
      yield r'currentCount';
      yield serializers.serialize(
        object.currentCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.stateEntityId != null) {
      yield r'stateEntityId';
      yield serializers.serialize(
        object.stateEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
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
    if (object.percents != null) {
      yield r'percents';
      yield serializers.serialize(
        object.percents,
        specifiedType: const FullType(int),
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EntitiesLimitNotificationInfo object, {
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
    required EntitiesLimitNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tenantName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.tenantName = valueDes;
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
        case r'entityType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityType),
                  )
                  as EntityType?;
          if (valueDes == null) continue;
          result.entityType = valueDes;
          break;
        case r'currentCount':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.currentCount = valueDes;
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
        case r'limit':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.limit = valueDes;
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
        case r'percents':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.percents = valueDes;
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntitiesLimitNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntitiesLimitNotificationInfoBuilder();
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
