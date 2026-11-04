// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_pref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_notification_settings.g.dart';

/// UserNotificationSettings
///
/// Properties:
/// * [prefs]
@BuiltValue()
abstract class UserNotificationSettings
    implements
        Built<UserNotificationSettings, UserNotificationSettingsBuilder> {
  @BuiltValueField(wireName: r'prefs')
  BuiltMap<String, NotificationPref> get prefs;

  UserNotificationSettings._();

  factory UserNotificationSettings([
    void updates(UserNotificationSettingsBuilder b),
  ]) = _$UserNotificationSettings;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserNotificationSettingsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserNotificationSettings> get serializer =>
      _$UserNotificationSettingsSerializer();
}

class _$UserNotificationSettingsSerializer
    implements PrimitiveSerializer<UserNotificationSettings> {
  @override
  final Iterable<Type> types = const [
    UserNotificationSettings,
    _$UserNotificationSettings,
  ];

  @override
  final String wireName = r'UserNotificationSettings';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserNotificationSettings object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'prefs';
    yield serializers.serialize(
      object.prefs,
      specifiedType: const FullType(BuiltMap, [
        FullType(String),
        FullType(NotificationPref),
      ]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserNotificationSettings object, {
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
    required UserNotificationSettingsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'prefs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(BuiltMap, [
                      FullType(String),
                      FullType(NotificationPref),
                    ]),
                  )
                  as BuiltMap<String, NotificationPref>;
          result.prefs.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserNotificationSettings deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserNotificationSettingsBuilder();
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
