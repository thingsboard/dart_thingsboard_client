// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_provision_configuration.dart';
import 'package:thingsboard_client/src/model/device_profile_configuration.dart';
import 'package:thingsboard_client/src/model/device_profile_transport_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_profile_data.g.dart';

/// DeviceProfileData
///
/// Properties:
/// * [configuration] - JSON object of device profile configuration
/// * [transportConfiguration] - JSON object of device profile transport configuration
/// * [provisionConfiguration] - JSON object of provisioning strategy type per device profile
@BuiltValue()
abstract class DeviceProfileData
    implements Built<DeviceProfileData, DeviceProfileDataBuilder> {
  /// JSON object of device profile configuration
  @BuiltValueField(wireName: r'configuration')
  DeviceProfileConfiguration? get configuration;

  /// JSON object of device profile transport configuration
  @BuiltValueField(wireName: r'transportConfiguration')
  DeviceProfileTransportConfiguration? get transportConfiguration;

  /// JSON object of provisioning strategy type per device profile
  @BuiltValueField(wireName: r'provisionConfiguration')
  DeviceProfileProvisionConfiguration? get provisionConfiguration;

  DeviceProfileData._();

  factory DeviceProfileData([void updates(DeviceProfileDataBuilder b)]) =
      _$DeviceProfileData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceProfileDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceProfileData> get serializer =>
      _$DeviceProfileDataSerializer();
}

class _$DeviceProfileDataSerializer
    implements PrimitiveSerializer<DeviceProfileData> {
  @override
  final Iterable<Type> types = const [DeviceProfileData, _$DeviceProfileData];

  @override
  final String wireName = r'DeviceProfileData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceProfileData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType(DeviceProfileConfiguration),
      );
    }
    if (object.transportConfiguration != null) {
      yield r'transportConfiguration';
      yield serializers.serialize(
        object.transportConfiguration,
        specifiedType: const FullType(DeviceProfileTransportConfiguration),
      );
    }
    if (object.provisionConfiguration != null) {
      yield r'provisionConfiguration';
      yield serializers.serialize(
        object.provisionConfiguration,
        specifiedType: const FullType(DeviceProfileProvisionConfiguration),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceProfileData object, {
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
    required DeviceProfileDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DeviceProfileConfiguration,
                    ),
                  )
                  as DeviceProfileConfiguration?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'transportConfiguration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DeviceProfileTransportConfiguration,
                    ),
                  )
                  as DeviceProfileTransportConfiguration?;
          if (valueDes == null) continue;
          result.transportConfiguration = valueDes;
          break;
        case r'provisionConfiguration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      DeviceProfileProvisionConfiguration,
                    ),
                  )
                  as DeviceProfileProvisionConfiguration?;
          if (valueDes == null) continue;
          result.provisionConfiguration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceProfileData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceProfileDataBuilder();
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
