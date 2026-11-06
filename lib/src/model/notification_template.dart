// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_template_id.dart';
import 'package:thingsboard_client/src/model/notification_template_config.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/notification_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification_template.g.dart';

/// NotificationTemplate
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [tenantId]
/// * [name]
/// * [notificationType]
/// * [configuration]
@BuiltValue()
abstract class NotificationTemplate
    implements Built<NotificationTemplate, NotificationTemplateBuilder> {
  @BuiltValueField(wireName: r'id')
  NotificationTemplateId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'notificationType')
  NotificationType get notificationType;
  // enum notificationTypeEnum {  GENERAL,  ALARM,  DEVICE_ACTIVITY,  ENTITY_ACTION,  ALARM_COMMENT,  RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,  ALARM_ASSIGNMENT,  NEW_PLATFORM_VERSION,  ENTITIES_LIMIT,  ENTITIES_LIMIT_INCREASE_REQUEST,  ADDON_ACCESS_REQUEST,  ADDON_ACCESS_ERROR,  PLAN_UPGRADE_REQUEST,  API_USAGE_LIMIT,  RULE_NODE,  INTEGRATION_LIFECYCLE_EVENT,  RATE_LIMITS,  EDGE_CONNECTION,  EDGE_COMMUNICATION_FAILURE,  TASK_PROCESSING_FAILURE,  RESOURCES_SHORTAGE,  USER_ACTIVATED,  USER_REGISTERED,  REPORT_GENERATED,  };

  @BuiltValueField(wireName: r'configuration')
  NotificationTemplateConfig get configuration;

  NotificationTemplate._();

  factory NotificationTemplate([void updates(NotificationTemplateBuilder b)]) =
      _$NotificationTemplate;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationTemplateBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NotificationTemplate> get serializer =>
      _$NotificationTemplateSerializer();
}

class _$NotificationTemplateSerializer
    implements PrimitiveSerializer<NotificationTemplate> {
  @override
  final Iterable<Type> types = const [
    NotificationTemplate,
    _$NotificationTemplate,
  ];

  @override
  final String wireName = r'NotificationTemplate';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NotificationTemplate object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(NotificationTemplateId),
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'notificationType';
    yield serializers.serialize(
      object.notificationType,
      specifiedType: const FullType(NotificationType),
    );
    yield r'configuration';
    yield serializers.serialize(
      object.configuration,
      specifiedType: const FullType(NotificationTemplateConfig),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NotificationTemplate object, {
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
    required NotificationTemplateBuilder result,
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
                    specifiedType: const FullType.nullable(
                      NotificationTemplateId,
                    ),
                  )
                  as NotificationTemplateId?;
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
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'notificationType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationType),
                  )
                  as NotificationType;
          result.notificationType = valueDes;
          break;
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(NotificationTemplateConfig),
                  )
                  as NotificationTemplateConfig;
          result.configuration.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NotificationTemplate deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationTemplateBuilder();
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
