// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_provision_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'disabled_device_profile_provision_configuration.g.dart';

/// DisabledDeviceProfileProvisionConfiguration
///
/// Properties:
/// * [provisionDeviceSecret] - Provision device secret
/// * [type]
@BuiltValue()
abstract class DisabledDeviceProfileProvisionConfiguration
    implements
        DeviceProfileProvisionConfiguration,
        Built<
          DisabledDeviceProfileProvisionConfiguration,
          DisabledDeviceProfileProvisionConfigurationBuilder
        > {
  DisabledDeviceProfileProvisionConfiguration._();

  factory DisabledDeviceProfileProvisionConfiguration([
    void updates(DisabledDeviceProfileProvisionConfigurationBuilder b),
  ]) = _$DisabledDeviceProfileProvisionConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DisabledDeviceProfileProvisionConfigurationBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DisabledDeviceProfileProvisionConfiguration>
  get serializer => _$DisabledDeviceProfileProvisionConfigurationSerializer();
}

class _$DisabledDeviceProfileProvisionConfigurationSerializer
    implements
        PrimitiveSerializer<DisabledDeviceProfileProvisionConfiguration> {
  @override
  final Iterable<Type> types = const [
    DisabledDeviceProfileProvisionConfiguration,
    _$DisabledDeviceProfileProvisionConfiguration,
  ];

  @override
  final String wireName = r'DisabledDeviceProfileProvisionConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DisabledDeviceProfileProvisionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.provisionDeviceSecret != null) {
      yield r'provisionDeviceSecret';
      yield serializers.serialize(
        object.provisionDeviceSecret,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DisabledDeviceProfileProvisionConfiguration object, {
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
    required DisabledDeviceProfileProvisionConfigurationBuilder result,
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
        case r'provisionDeviceSecret':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.provisionDeviceSecret = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DisabledDeviceProfileProvisionConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DisabledDeviceProfileProvisionConfigurationBuilder();
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
