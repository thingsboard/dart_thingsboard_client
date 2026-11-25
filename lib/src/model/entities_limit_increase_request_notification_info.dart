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
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entities_limit_increase_request_notification_info.g.dart';

/// EntitiesLimitIncreaseRequestNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [entityType]
/// * [userEmail]
/// * [increaseLimitActionLabel]
/// * [increaseLimitLink]
/// * [baseUrl]
@BuiltValue()
abstract class EntitiesLimitIncreaseRequestNotificationInfo
    implements
        NotificationInfo,
        Built<
          EntitiesLimitIncreaseRequestNotificationInfo,
          EntitiesLimitIncreaseRequestNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'baseUrl')
  String? get baseUrl;

  @BuiltValueField(wireName: r'increaseLimitActionLabel')
  String? get increaseLimitActionLabel;

  @BuiltValueField(wireName: r'entityType')
  EntityType? get entityType;
  // enum entityTypeEnum {  TENANT,  CUSTOMER,  USER,  DASHBOARD,  ASSET,  DEVICE,  ALARM,  ENTITY_GROUP,  CONVERTER,  INTEGRATION,  RULE_CHAIN,  RULE_NODE,  SCHEDULER_EVENT,  BLOB_ENTITY,  REPORT_TEMPLATE,  REPORT,  ENTITY_VIEW,  WIDGETS_BUNDLE,  WIDGET_TYPE,  ROLE,  GROUP_PERMISSION,  TENANT_PROFILE,  DEVICE_PROFILE,  ASSET_PROFILE,  API_USAGE_STATE,  TB_RESOURCE,  OTA_PACKAGE,  EDGE,  RPC,  QUEUE,  NOTIFICATION_TARGET,  NOTIFICATION_TEMPLATE,  NOTIFICATION_REQUEST,  NOTIFICATION,  NOTIFICATION_RULE,  QUEUE_STATS,  OAUTH2_CLIENT,  DOMAIN,  MOBILE_APP,  MOBILE_APP_BUNDLE,  CALCULATED_FIELD,  JOB,  SECRET,  ADMIN_SETTINGS,  AI_MODEL,  API_KEY,  AGENT,  AGENT_APPLICATION,  AGENT_APP_EVENT,  AGENT_APP_UNIT,  AGENT_APP_PROFILE,  AGENT_PROFILE,  AGENT_BULK_ACTION,  };

  @BuiltValueField(wireName: r'increaseLimitLink')
  String? get increaseLimitLink;

  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  EntitiesLimitIncreaseRequestNotificationInfo._();

  factory EntitiesLimitIncreaseRequestNotificationInfo([
    void updates(EntitiesLimitIncreaseRequestNotificationInfoBuilder b),
  ]) = _$EntitiesLimitIncreaseRequestNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(
    EntitiesLimitIncreaseRequestNotificationInfoBuilder b,
  ) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.EntitiesLimitIncreaseRequestNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<EntitiesLimitIncreaseRequestNotificationInfo>
  get serializer => _$EntitiesLimitIncreaseRequestNotificationInfoSerializer();
}

class _$EntitiesLimitIncreaseRequestNotificationInfoSerializer
    implements
        PrimitiveSerializer<EntitiesLimitIncreaseRequestNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    EntitiesLimitIncreaseRequestNotificationInfo,
    _$EntitiesLimitIncreaseRequestNotificationInfo,
  ];

  @override
  final String wireName = r'EntitiesLimitIncreaseRequestNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntitiesLimitIncreaseRequestNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.baseUrl != null) {
      yield r'baseUrl';
      yield serializers.serialize(
        object.baseUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.increaseLimitActionLabel != null) {
      yield r'increaseLimitActionLabel';
      yield serializers.serialize(
        object.increaseLimitActionLabel,
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
    if (object.entityType != null) {
      yield r'entityType';
      yield serializers.serialize(
        object.entityType,
        specifiedType: const FullType(EntityType),
      );
    }
    if (object.increaseLimitLink != null) {
      yield r'increaseLimitLink';
      yield serializers.serialize(
        object.increaseLimitLink,
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
    if (object.userEmail != null) {
      yield r'userEmail';
      yield serializers.serialize(
        object.userEmail,
        specifiedType: const FullType(String),
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
    EntitiesLimitIncreaseRequestNotificationInfo object, {
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
    required EntitiesLimitIncreaseRequestNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'baseUrl':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.baseUrl = valueDes;
          break;
        case r'increaseLimitActionLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.increaseLimitActionLabel = valueDes;
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
        case r'increaseLimitLink':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.increaseLimitLink = valueDes;
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
  EntitiesLimitIncreaseRequestNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntitiesLimitIncreaseRequestNotificationInfoBuilder();
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
