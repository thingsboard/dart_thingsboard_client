// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_config.dart';
import 'package:thingsboard_client/src/model/notification_rule_trigger_type.dart';
import 'package:thingsboard_client/src/model/device_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_activity_notification_rule_trigger_config.g.dart';

/// DeviceActivityNotificationRuleTriggerConfig
///
/// Properties:
/// * [triggerType] 
/// * [devices] 
/// * [deviceProfiles] 
/// * [notifyOn] 
@BuiltValue()
abstract class DeviceActivityNotificationRuleTriggerConfig implements NotificationRuleTriggerConfig, Built<DeviceActivityNotificationRuleTriggerConfig, DeviceActivityNotificationRuleTriggerConfigBuilder> {
  @BuiltValueField(wireName: r'devices')
  BuiltSet<String>? get devices;

  @BuiltValueField(wireName: r'notifyOn')
  BuiltSet<DeviceEvent> get notifyOn;

  @BuiltValueField(wireName: r'deviceProfiles')
  BuiltSet<String>? get deviceProfiles;

  DeviceActivityNotificationRuleTriggerConfig._();

  factory DeviceActivityNotificationRuleTriggerConfig([void updates(DeviceActivityNotificationRuleTriggerConfigBuilder b)]) = _$DeviceActivityNotificationRuleTriggerConfig;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceActivityNotificationRuleTriggerConfigBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceActivityNotificationRuleTriggerConfig> get serializer => _$DeviceActivityNotificationRuleTriggerConfigSerializer();
}

class _$DeviceActivityNotificationRuleTriggerConfigSerializer implements PrimitiveSerializer<DeviceActivityNotificationRuleTriggerConfig> {
  @override
  final Iterable<Type> types = const [DeviceActivityNotificationRuleTriggerConfig, _$DeviceActivityNotificationRuleTriggerConfig];

  @override
  final String wireName = r'DeviceActivityNotificationRuleTriggerConfig';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceActivityNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'triggerType';
    yield serializers.serialize(
      object.triggerType,
      specifiedType: const FullType(NotificationRuleTriggerType),
    );
    if (object.devices != null) {
      yield r'devices';
      yield serializers.serialize(
        object.devices,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    yield r'notifyOn';
    yield serializers.serialize(
      object.notifyOn,
      specifiedType: const FullType(BuiltSet, [FullType(DeviceEvent)]),
    );
    if (object.deviceProfiles != null) {
      yield r'deviceProfiles';
      yield serializers.serialize(
        object.deviceProfiles,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceActivityNotificationRuleTriggerConfig object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceActivityNotificationRuleTriggerConfigBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'triggerType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NotificationRuleTriggerType),
          ) as NotificationRuleTriggerType;
          result.triggerType = valueDes;
          break;
        case r'devices':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.devices.replace(valueDes);
          break;
        case r'notifyOn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltSet, [FullType(DeviceEvent)]),
          ) as BuiltSet<DeviceEvent>;
          result.notifyOn.replace(valueDes);
          break;
        case r'deviceProfiles':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltSet, [FullType(String)]),
          ) as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.deviceProfiles.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceActivityNotificationRuleTriggerConfig deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceActivityNotificationRuleTriggerConfigBuilder();
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


