// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/notification_status.dart';
import 'package:thingsboard_client/src/model/notification_request_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/notification_delivery_method.dart';
import 'package:thingsboard_client/src/model/notification_id.dart';
import 'package:built_value/json_object.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:thingsboard_client/src/model/notification_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'notification.g.dart';

/// Notification
///
/// Properties:
/// * [id]
/// * [createdTime] - Entity creation timestamp in milliseconds since Unix epoch
/// * [requestId]
/// * [recipientId]
/// * [type]
/// * [deliveryMethod]
/// * [subject]
/// * [text]
/// * [additionalConfig] - A value representing the any type (object or primitive)
/// * [info]
/// * [status]
@BuiltValue()
abstract class Notification
    implements Built<Notification, NotificationBuilder> {
  @BuiltValueField(wireName: r'id')
  NotificationId? get id;

  /// Entity creation timestamp in milliseconds since Unix epoch
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  @BuiltValueField(wireName: r'requestId')
  NotificationRequestId? get requestId;

  @BuiltValueField(wireName: r'recipientId')
  UserId? get recipientId;

  @BuiltValueField(wireName: r'type')
  NotificationType? get type;
  // enum typeEnum {  GENERAL,  ALARM,  DEVICE_ACTIVITY,  ENTITY_ACTION,  ALARM_COMMENT,  RULE_ENGINE_COMPONENT_LIFECYCLE_EVENT,  ALARM_ASSIGNMENT,  NEW_PLATFORM_VERSION,  ENTITIES_LIMIT,  ENTITIES_LIMIT_INCREASE_REQUEST,  ADDON_ACCESS_REQUEST,  ADDON_ACCESS_ERROR,  PLAN_UPGRADE_REQUEST,  API_USAGE_LIMIT,  RULE_NODE,  INTEGRATION_LIFECYCLE_EVENT,  RATE_LIMITS,  EDGE_CONNECTION,  EDGE_COMMUNICATION_FAILURE,  TASK_PROCESSING_FAILURE,  RESOURCES_SHORTAGE,  USER_ACTIVATED,  USER_REGISTERED,  REPORT_GENERATED,  };

  @BuiltValueField(wireName: r'deliveryMethod')
  NotificationDeliveryMethod? get deliveryMethod;
  // enum deliveryMethodEnum {  WEB,  EMAIL,  SMS,  SLACK,  MICROSOFT_TEAMS,  MOBILE_APP,  };

  @BuiltValueField(wireName: r'subject')
  String? get subject;

  @BuiltValueField(wireName: r'text')
  String? get text;

  /// A value representing the any type (object or primitive)
  @BuiltValueField(wireName: r'additionalConfig')
  JsonObject? get additionalConfig;

  @BuiltValueField(wireName: r'info')
  NotificationInfo? get info;

  @BuiltValueField(wireName: r'status')
  NotificationStatus? get status;
  // enum statusEnum {  SENT,  READ,  };

  Notification._();

  factory Notification([void updates(NotificationBuilder b)]) = _$Notification;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NotificationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Notification> get serializer => _$NotificationSerializer();
}

class _$NotificationSerializer implements PrimitiveSerializer<Notification> {
  @override
  final Iterable<Type> types = const [Notification, _$Notification];

  @override
  final String wireName = r'Notification';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Notification object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(NotificationId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.requestId != null) {
      yield r'requestId';
      yield serializers.serialize(
        object.requestId,
        specifiedType: const FullType(NotificationRequestId),
      );
    }
    if (object.recipientId != null) {
      yield r'recipientId';
      yield serializers.serialize(
        object.recipientId,
        specifiedType: const FullType(UserId),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NotificationType),
      );
    }
    if (object.deliveryMethod != null) {
      yield r'deliveryMethod';
      yield serializers.serialize(
        object.deliveryMethod,
        specifiedType: const FullType(NotificationDeliveryMethod),
      );
    }
    if (object.subject != null) {
      yield r'subject';
      yield serializers.serialize(
        object.subject,
        specifiedType: const FullType(String),
      );
    }
    if (object.text != null) {
      yield r'text';
      yield serializers.serialize(
        object.text,
        specifiedType: const FullType(String),
      );
    }
    if (object.additionalConfig != null) {
      yield r'additionalConfig';
      yield serializers.serialize(
        object.additionalConfig,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.info != null) {
      yield r'info';
      yield serializers.serialize(
        object.info,
        specifiedType: const FullType(NotificationInfo),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(NotificationStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Notification object, {
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
    required NotificationBuilder result,
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
                    specifiedType: const FullType.nullable(NotificationId),
                  )
                  as NotificationId?;
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
        case r'requestId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationRequestId,
                    ),
                  )
                  as NotificationRequestId?;
          if (valueDes == null) continue;
          result.requestId.replace(valueDes);
          break;
        case r'recipientId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(UserId),
                  )
                  as UserId?;
          if (valueDes == null) continue;
          result.recipientId.replace(valueDes);
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(NotificationType),
                  )
                  as NotificationType?;
          if (valueDes == null) continue;
          result.type = valueDes;
          break;
        case r'deliveryMethod':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      NotificationDeliveryMethod,
                    ),
                  )
                  as NotificationDeliveryMethod?;
          if (valueDes == null) continue;
          result.deliveryMethod = valueDes;
          break;
        case r'subject':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.subject = valueDes;
          break;
        case r'text':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.text = valueDes;
          break;
        case r'additionalConfig':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalConfig = valueDes;
          break;
        case r'info':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(NotificationInfo),
                  )
                  as NotificationInfo?;
          if (valueDes == null) continue;
          result.info = valueDes;
          break;
        case r'status':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(NotificationStatus),
                  )
                  as NotificationStatus?;
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
  Notification deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NotificationBuilder();
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
