// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/users_filter.dart';
import 'package:thingsboard_client/src/model/notification_target_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'platform_users_notification_target_config.g.dart';

/// PlatformUsersNotificationTargetConfig
///
/// Properties:
/// * [description]
/// * [type]
/// * [usersFilter]
@BuiltValue()
abstract class PlatformUsersNotificationTargetConfig
    implements
        NotificationTargetConfig,
        Built<
          PlatformUsersNotificationTargetConfig,
          PlatformUsersNotificationTargetConfigBuilder
        > {
  @BuiltValueField(wireName: r'usersFilter')
  UsersFilter get usersFilter;

  PlatformUsersNotificationTargetConfig._();

  factory PlatformUsersNotificationTargetConfig([
    void updates(PlatformUsersNotificationTargetConfigBuilder b),
  ]) = _$PlatformUsersNotificationTargetConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PlatformUsersNotificationTargetConfigBuilder b) =>
      b..type = r'PLATFORM_USERS';

  @BuiltValueSerializer(custom: true)
  static Serializer<PlatformUsersNotificationTargetConfig> get serializer =>
      _$PlatformUsersNotificationTargetConfigSerializer();
}

class _$PlatformUsersNotificationTargetConfigSerializer
    implements PrimitiveSerializer<PlatformUsersNotificationTargetConfig> {
  @override
  final Iterable<Type> types = const [
    PlatformUsersNotificationTargetConfig,
    _$PlatformUsersNotificationTargetConfig,
  ];

  @override
  final String wireName = r'PlatformUsersNotificationTargetConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PlatformUsersNotificationTargetConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'usersFilter';
    yield serializers.serialize(
      object.usersFilter,
      specifiedType: const FullType(UsersFilter),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PlatformUsersNotificationTargetConfig object, {
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
    required PlatformUsersNotificationTargetConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.type = valueDes;
          break;
        case r'description':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.description = valueDes;
          break;
        case r'usersFilter':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(UsersFilter),
                  )
                  as UsersFilter;
          result.usersFilter = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PlatformUsersNotificationTargetConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PlatformUsersNotificationTargetConfigBuilder();
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
