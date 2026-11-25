// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/alarm_severity.dart';
import 'package:thingsboard_client/src/model/alarm_status.dart';
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/user_id.dart';
import 'package:thingsboard_client/src/model/customer_id.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alarm_comment_notification_info.g.dart';

/// AlarmCommentNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [comment]
/// * [action]
/// * [userEmail]
/// * [userFirstName]
/// * [userLastName]
/// * [alarmType]
/// * [alarmId]
/// * [alarmOriginator]
/// * [alarmOriginatorName]
/// * [alarmOriginatorLabel]
/// * [alarmSeverity]
/// * [alarmStatus]
/// * [alarmCustomerId]
/// * [affectedCustomerId]
/// * [affectedTenantId]
/// * [affectedUserId]
@BuiltValue()
abstract class AlarmCommentNotificationInfo
    implements
        NotificationInfo,
        Built<
          AlarmCommentNotificationInfo,
          AlarmCommentNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'alarmSeverity')
  AlarmSeverity? get alarmSeverity;
  // enum alarmSeverityEnum {  CRITICAL,  MAJOR,  MINOR,  WARNING,  INDETERMINATE,  };

  @BuiltValueField(wireName: r'alarmCustomerId')
  CustomerId? get alarmCustomerId;

  @BuiltValueField(wireName: r'affectedUserId')
  UserId? get affectedUserId;

  @BuiltValueField(wireName: r'affectedCustomerId')
  CustomerId? get affectedCustomerId;

  @BuiltValueField(wireName: r'userFirstName')
  String? get userFirstName;

  @BuiltValueField(wireName: r'alarmOriginatorLabel')
  String? get alarmOriginatorLabel;

  @BuiltValueField(wireName: r'alarmType')
  String? get alarmType;

  @BuiltValueField(wireName: r'alarmStatus')
  AlarmStatus? get alarmStatus;
  // enum alarmStatusEnum {  ACTIVE_UNACK,  ACTIVE_ACK,  CLEARED_UNACK,  CLEARED_ACK,  };

  @BuiltValueField(wireName: r'alarmOriginator')
  EntityId? get alarmOriginator;

  @BuiltValueField(wireName: r'userLastName')
  String? get userLastName;

  @BuiltValueField(wireName: r'alarmId')
  String? get alarmId;

  @BuiltValueField(wireName: r'action')
  String? get action;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  @BuiltValueField(wireName: r'affectedTenantId')
  TenantId? get affectedTenantId;

  @BuiltValueField(wireName: r'alarmOriginatorName')
  String? get alarmOriginatorName;

  AlarmCommentNotificationInfo._();

  factory AlarmCommentNotificationInfo([
    void updates(AlarmCommentNotificationInfoBuilder b),
  ]) = _$AlarmCommentNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlarmCommentNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.AlarmCommentNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<AlarmCommentNotificationInfo> get serializer =>
      _$AlarmCommentNotificationInfoSerializer();
}

class _$AlarmCommentNotificationInfoSerializer
    implements PrimitiveSerializer<AlarmCommentNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    AlarmCommentNotificationInfo,
    _$AlarmCommentNotificationInfo,
  ];

  @override
  final String wireName = r'AlarmCommentNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlarmCommentNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.alarmSeverity != null) {
      yield r'alarmSeverity';
      yield serializers.serialize(
        object.alarmSeverity,
        specifiedType: const FullType(AlarmSeverity),
      );
    }
    if (object.alarmCustomerId != null) {
      yield r'alarmCustomerId';
      yield serializers.serialize(
        object.alarmCustomerId,
        specifiedType: const FullType(CustomerId),
      );
    }
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
    if (object.alarmOriginatorLabel != null) {
      yield r'alarmOriginatorLabel';
      yield serializers.serialize(
        object.alarmOriginatorLabel,
        specifiedType: const FullType(String),
      );
    }
    if (object.alarmType != null) {
      yield r'alarmType';
      yield serializers.serialize(
        object.alarmType,
        specifiedType: const FullType(String),
      );
    }
    if (object.alarmStatus != null) {
      yield r'alarmStatus';
      yield serializers.serialize(
        object.alarmStatus,
        specifiedType: const FullType(AlarmStatus),
      );
    }
    if (object.alarmOriginator != null) {
      yield r'alarmOriginator';
      yield serializers.serialize(
        object.alarmOriginator,
        specifiedType: const FullType(EntityId),
      );
    }
    if (object.dashboardId != null) {
      yield r'dashboardId';
      yield serializers.serialize(
        object.dashboardId,
        specifiedType: const FullType(DashboardId),
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
    if (object.alarmId != null) {
      yield r'alarmId';
      yield serializers.serialize(
        object.alarmId,
        specifiedType: const FullType(String),
      );
    }
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType(String),
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
    if (object.alarmOriginatorName != null) {
      yield r'alarmOriginatorName';
      yield serializers.serialize(
        object.alarmOriginatorName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlarmCommentNotificationInfo object, {
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
    required AlarmCommentNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'alarmSeverity':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmSeverity),
                  )
                  as AlarmSeverity?;
          if (valueDes == null) continue;
          result.alarmSeverity = valueDes;
          break;
        case r'alarmCustomerId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(CustomerId),
                  )
                  as CustomerId?;
          if (valueDes == null) continue;
          result.alarmCustomerId.replace(valueDes);
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
        case r'alarmOriginatorLabel':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.alarmOriginatorLabel = valueDes;
          break;
        case r'alarmType':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.alarmType = valueDes;
          break;
        case r'alarmStatus':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(AlarmStatus),
                  )
                  as AlarmStatus?;
          if (valueDes == null) continue;
          result.alarmStatus = valueDes;
          break;
        case r'alarmOriginator':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(EntityId),
                  )
                  as EntityId?;
          if (valueDes == null) continue;
          result.alarmOriginator = valueDes;
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
        case r'alarmId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.alarmId = valueDes;
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
        case r'comment':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
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
        case r'alarmOriginatorName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.alarmOriginatorName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlarmCommentNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlarmCommentNotificationInfoBuilder();
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
