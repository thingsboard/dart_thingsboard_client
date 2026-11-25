// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/limited_api.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rate_limits_notification_info.g.dart';

/// RateLimitsNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [tenantId]
/// * [tenantName]
/// * [api]
/// * [limitLevel]
/// * [limitLevelEntityName]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class RateLimitsNotificationInfo
    implements
        NotificationInfo,
        Built<RateLimitsNotificationInfo, RateLimitsNotificationInfoBuilder> {
  @BuiltValueField(wireName: r'tenantName')
  String? get tenantName;

  @BuiltValueField(wireName: r'limitLevel')
  EntityId? get limitLevel;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'limitLevelEntityName')
  String? get limitLevelEntityName;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'api')
  LimitedApi? get api;
  // enum apiEnum {  ENTITY_EXPORT,  ENTITY_IMPORT,  NOTIFICATION_REQUESTS,  NOTIFICATION_REQUESTS_PER_RULE,  REST_REQUESTS_PER_TENANT,  REST_REQUESTS_PER_CUSTOMER,  WS_UPDATES_PER_SESSION,  CASSANDRA_WRITE_QUERIES_CORE,  CASSANDRA_READ_QUERIES_CORE,  CASSANDRA_WRITE_QUERIES_RULE_ENGINE,  CASSANDRA_READ_QUERIES_RULE_ENGINE,  CASSANDRA_READ_QUERIES_MONOLITH,  CASSANDRA_WRITE_QUERIES_MONOLITH,  CASSANDRA_QUERIES,  EDGE_EVENTS,  EDGE_EVENTS_PER_EDGE,  EDGE_UPLINK_MESSAGES,  EDGE_UPLINK_MESSAGES_PER_EDGE,  AGENT_EVENTS,  AGENT_EVENTS_PER_AGENT,  AGENT_LOG_CHUNKS,  AGENT_LOG_CHUNKS_PER_AGENT,  INTEGRATION_MSGS_PER_TENANT,  INTEGRATION_MSGS_PER_DEVICE,  INTEGRATION_MSGS_PER_ASSET,  INTEGRATION_EVENTS,  CONVERTER_EVENTS,  REPORTS,  PASSWORD_RESET,  TWO_FA_VERIFICATION_CODE_SEND,  TWO_FA_VERIFICATION_CODE_CHECK,  TRANSPORT_MESSAGES_PER_TENANT,  TRANSPORT_MESSAGES_PER_DEVICE,  TRANSPORT_MESSAGES_PER_GATEWAY,  TRANSPORT_MESSAGES_PER_GATEWAY_DEVICE,  EMAILS,  WS_SUBSCRIPTIONS,  CALCULATED_FIELD_DEBUG_EVENTS,  TRENDZ_PUBLIC_SYNC,  AI_CHAT_REQUESTS,  };

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  RateLimitsNotificationInfo._();

  factory RateLimitsNotificationInfo([
    void updates(RateLimitsNotificationInfoBuilder b),
  ]) = _$RateLimitsNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RateLimitsNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.RateLimitsNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<RateLimitsNotificationInfo> get serializer =>
      _$RateLimitsNotificationInfoSerializer();
}

class _$RateLimitsNotificationInfoSerializer
    implements PrimitiveSerializer<RateLimitsNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    RateLimitsNotificationInfo,
    _$RateLimitsNotificationInfo,
  ];

  @override
  final String wireName = r'RateLimitsNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RateLimitsNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.tenantName != null) {
      yield r'tenantName';
      yield serializers.serialize(
        object.tenantName,
        specifiedType: const FullType(String),
      );
    }
    if (object.limitLevel != null) {
      yield r'limitLevel';
      yield serializers.serialize(
        object.limitLevel,
        specifiedType: const FullType(EntityId),
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
    if (object.limitLevelEntityName != null) {
      yield r'limitLevelEntityName';
      yield serializers.serialize(
        object.limitLevelEntityName,
        specifiedType: const FullType(String),
      );
    }
    if (object.affectedCustomerId != null) {
      yield r'affectedCustomerId';
      yield serializers.serialize(
        object.affectedCustomerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    if (object.api != null) {
      yield r'api';
      yield serializers.serialize(
        object.api,
        specifiedType: const FullType(LimitedApi),
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
    RateLimitsNotificationInfo object, {
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
    required RateLimitsNotificationInfoBuilder result,
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
        case r'limitLevel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.limitLevel = valueDes;
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
        case r'limitLevelEntityName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.limitLevelEntityName = valueDes;
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
        case r'api':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(LimitedApi),
                  )
                  as LimitedApi?;
          if (valueDes == null) continue;
          result.api = valueDes;
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
  RateLimitsNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RateLimitsNotificationInfoBuilder();
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
