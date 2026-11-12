// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/dashboard_id.dart';
import 'package:thingsboard_client/src/model/entity_id.dart';
import 'package:thingsboard_client/src/model/notification_info.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_registered_notification_info.g.dart';

/// UserRegisteredNotificationInfo
///
/// Properties:
/// * [dashboardId]
/// * [stateEntityId]
/// * [type]
/// * [userFullName]
/// * [userEmail]
@BuiltValue()
abstract class UserRegisteredNotificationInfo
    implements
        NotificationInfo,
        Built<
          UserRegisteredNotificationInfo,
          UserRegisteredNotificationInfoBuilder
        > {
  @BuiltValueField(wireName: r'userFullName')
  String? get userFullName;

  @BuiltValueField(wireName: r'userEmail')
  String? get userEmail;

  UserRegisteredNotificationInfo._();

  factory UserRegisteredNotificationInfo([
    void updates(UserRegisteredNotificationInfoBuilder b),
  ]) = _$UserRegisteredNotificationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserRegisteredNotificationInfoBuilder b) => b
    ..type =
        r'org.thingsboard.server.common.data.notification.info.UserRegisteredNotificationInfo';

  @BuiltValueSerializer(custom: true)
  static Serializer<UserRegisteredNotificationInfo> get serializer =>
      _$UserRegisteredNotificationInfoSerializer();
}

class _$UserRegisteredNotificationInfoSerializer
    implements PrimitiveSerializer<UserRegisteredNotificationInfo> {
  @override
  final Iterable<Type> types = const [
    UserRegisteredNotificationInfo,
    _$UserRegisteredNotificationInfo,
  ];

  @override
  final String wireName = r'UserRegisteredNotificationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserRegisteredNotificationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userFullName != null) {
      yield r'userFullName';
      yield serializers.serialize(
        object.userFullName,
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
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UserRegisteredNotificationInfo object, {
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
    required UserRegisteredNotificationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userFullName':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.userFullName = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserRegisteredNotificationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserRegisteredNotificationInfoBuilder();
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
