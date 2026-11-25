// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/api_feature.dart';
import 'package:thingsboard_client/src/model/api_usage_record_key.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/api_usage_state_value.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_usage_limit_notification_info.g.dart';

/// ApiUsageLimitNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [feature]
/// * [recordKey]
/// * [status]
/// * [limit]
/// * [currentValue]
/// * [tenantId]
/// * [tenantName]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class ApiUsageLimitNotificationInfo
    implements
        NotificationInfo,
        Built<
          ApiUsageLimitNotificationInfo,
          ApiUsageLimitNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'feature')
  ApiFeature? get feature;
  // enum featureEnum {  TRANSPORT,  DB,  RE,  JS,  TBEL,  EMAIL,  SMS,  ALARM,  REPORT,  AI,  };

  @BuiltValueField(wireName: r'tenantName')
  String? get tenantName;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'recordKey')
  ApiUsageRecordKey? get recordKey;
  // enum recordKeyEnum {  TRANSPORT_MSG_COUNT,  TRANSPORT_DP_COUNT,  STORAGE_DP_COUNT,  RE_EXEC_COUNT,  JS_EXEC_COUNT,  TBEL_EXEC_COUNT,  EMAIL_EXEC_COUNT,  SMS_EXEC_COUNT,  CREATED_ALARMS_COUNT,  ACTIVE_DEVICES,  INACTIVE_DEVICES,  GENERATED_REPORTS_COUNT,  AI_CREDITS_COUNT,  };

  @BuiltValueField(wireName: r'limit')
  String? get limit;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  @BuiltValueField(wireName: r'currentValue')
  String? get currentValue;

  @BuiltValueField(wireName: r'status')
  ApiUsageStateValue? get status;
  // enum statusEnum {  ENABLED,  WARNING,  DISABLED,  };

  ApiUsageLimitNotificationInfo._();

  factory ApiUsageLimitNotificationInfo([
    void updates(ApiUsageLimitNotificationInfoBuilder b),
  ]) = _$ApiUsageLimitNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiUsageLimitNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.ApiUsageLimitNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiUsageLimitNotificationInfo> get serializer =>
      _$ApiUsageLimitNotificationInfoSerializer();
}

class _$ApiUsageLimitNotificationInfoSerializer
    implements PrimitiveSerializer<ApiUsageLimitNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    ApiUsageLimitNotificationInfo,
    _$ApiUsageLimitNotificationInfo,
  ];

  @override
  final String wireName = r'ApiUsageLimitNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiUsageLimitNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.affectedUserId != null) {
      yield r'affectedUserId';
      yield serializers.serialize(
        object.affectedUserId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.affectedCustomerId != null) {
      yield r'affectedCustomerId';
      yield serializers.serialize(
        object.affectedCustomerId,
        specifiedType: const FullType(CustomerId),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.feature != null) {
      yield r'feature';
      yield serializers.serialize(
        object.feature,
        specifiedType: const FullType(ApiFeature),
      );
    }
    if (object.tenantName != null) {
      yield r'tenantName';
      yield serializers.serialize(
        object.tenantName,
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
    if (object.recordKey != null) {
      yield r'recordKey';
      yield serializers.serialize(
        object.recordKey,
        specifiedType: const FullType(ApiUsageRecordKey),
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
        specifiedType: const FullType(String),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.affectedTenantId != null) {
      yield r'affectedTenantId';
      yield serializers.serialize(
        object.affectedTenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    if (object.currentValue != null) {
      yield r'currentValue';
      yield serializers.serialize(
        object.currentValue,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ApiUsageStateValue),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiUsageLimitNotificationInfo object, {
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
    required ApiUsageLimitNotificationInfoBuilder result,
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
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'feature':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ApiFeature),
                  )
                  as ApiFeature?;
          if (valueDes == null) continue;
          result.feature = valueDes;
          break;
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
        case r'recordKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ApiUsageRecordKey),
                  )
                  as ApiUsageRecordKey?;
          if (valueDes == null) continue;
          result.recordKey = valueDes;
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
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
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
        case r'currentValue':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.currentValue = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ApiUsageStateValue),
                  )
                  as ApiUsageStateValue?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiUsageLimitNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiUsageLimitNotificationInfoBuilder();
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
