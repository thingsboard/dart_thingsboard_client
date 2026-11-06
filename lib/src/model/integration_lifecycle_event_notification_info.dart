// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/integration_id.dart';
import 'package:thingsboard_client/src/model/component_lifecycle_event.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_lifecycle_event_notification_info.g.dart';

/// IntegrationLifecycleEventNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [integrationId]
/// * [integrationType]
/// * [integrationName]
/// * [action]
/// * [eventType]
/// * [error]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class IntegrationLifecycleEventNotificationInfo
    implements
        NotificationInfo,
        Built<
          IntegrationLifecycleEventNotificationInfo,
          IntegrationLifecycleEventNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'integrationType')
  String? get integrationType;

  @BuiltValueField(wireName: r'integrationName')
  String? get integrationName;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'integrationId')
  IntegrationId? get integrationId;

  @BuiltValueField(wireName: r'action')
  String? get action;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'eventType')
  ComponentLifecycleEvent? get eventType;
  // enum eventTypeEnum {  CREATED,  STARTED,  ACTIVATED,  SUSPENDED,  UPDATED,  STOPPED,  DELETED,  FAILED,  DEACTIVATED,  RELATION_UPDATED,  RELATION_DELETED,  };

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  @BuiltValueField(wireName: r'error')
  String? get error;

  IntegrationLifecycleEventNotificationInfo._();

  factory IntegrationLifecycleEventNotificationInfo([
    void updates(IntegrationLifecycleEventNotificationInfoBuilder b),
  ]) = _$IntegrationLifecycleEventNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationLifecycleEventNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.IntegrationLifecycleEventNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationLifecycleEventNotificationInfo> get serializer =>
      _$IntegrationLifecycleEventNotificationInfoSerializer();
}

class _$IntegrationLifecycleEventNotificationInfoSerializer
    implements PrimitiveSerializer<IntegrationLifecycleEventNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    IntegrationLifecycleEventNotificationInfo,
    _$IntegrationLifecycleEventNotificationInfo,
  ];

  @override
  final String wireName = r'IntegrationLifecycleEventNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationLifecycleEventNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.integrationType != null) {
      yield r'integrationType';
      yield serializers.serialize(
        object.integrationType,
        specifiedType: const FullType(String),
      );
    }
    if (object.integrationName != null) {
      yield r'integrationName';
      yield serializers.serialize(
        object.integrationName,
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
    if (object.stateEntityId != null) {
      yield r'stateEntityId';
      yield serializers.serialize(
        object.stateEntityId,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.integrationId != null) {
      yield r'integrationId';
      yield serializers.serialize(
        object.integrationId,
        specifiedType: const FullType(IntegrationId),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
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
    if (object.eventType != null) {
      yield r'eventType';
      yield serializers.serialize(
        object.eventType,
        specifiedType: const FullType(ComponentLifecycleEvent),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IntegrationLifecycleEventNotificationInfo object, {
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
    required IntegrationLifecycleEventNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'integrationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.integrationType = valueDes;
          break;
        case r'integrationName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.integrationName = valueDes;
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
        case r'integrationId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IntegrationId),
                  )
                  as IntegrationId?;
          if (valueDes == null) continue;
          result.integrationId.replace(valueDes);
          break;
        case r'action':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.action = valueDes;
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
        case r'eventType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      ComponentLifecycleEvent,
                    ),
                  )
                  as ComponentLifecycleEvent?;
          if (valueDes == null) continue;
          result.eventType = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntegrationLifecycleEventNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationLifecycleEventNotificationInfoBuilder();
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
