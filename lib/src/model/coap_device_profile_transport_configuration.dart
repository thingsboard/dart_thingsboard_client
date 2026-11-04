// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_profile_transport_configuration.dart';
import 'package:thingsboard_client/src/model/coap_device_type_configuration.dart';
import 'package:thingsboard_client/src/model/power_saving_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'coap_device_profile_transport_configuration.g.dart';

/// CoapDeviceProfileTransportConfiguration
///
/// Properties:
/// * [type]
/// * [coapDeviceTypeConfiguration]
/// * [clientSettings]
@BuiltValue()
abstract class CoapDeviceProfileTransportConfiguration
    implements
        DeviceProfileTransportConfiguration,
        Built<
          CoapDeviceProfileTransportConfiguration,
          CoapDeviceProfileTransportConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'coapDeviceTypeConfiguration')
  CoapDeviceTypeConfiguration? get coapDeviceTypeConfiguration;

  @BuiltValueField(wireName: r'clientSettings')
  PowerSavingConfiguration? get clientSettings;

  CoapDeviceProfileTransportConfiguration._();

  factory CoapDeviceProfileTransportConfiguration([
    void updates(CoapDeviceProfileTransportConfigurationBuilder b),
  ]) = _$CoapDeviceProfileTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CoapDeviceProfileTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CoapDeviceProfileTransportConfiguration> get serializer =>
      _$CoapDeviceProfileTransportConfigurationSerializer();
}

class _$CoapDeviceProfileTransportConfigurationSerializer
    implements PrimitiveSerializer<CoapDeviceProfileTransportConfiguration> {
  @override
  final Iterable<Type> types = const [
    CoapDeviceProfileTransportConfiguration,
    _$CoapDeviceProfileTransportConfiguration,
  ];

  @override
  final String wireName = r'CoapDeviceProfileTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CoapDeviceProfileTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.coapDeviceTypeConfiguration != null) {
      yield r'coapDeviceTypeConfiguration';
      yield serializers.serialize(
        object.coapDeviceTypeConfiguration,
        specifiedType: const FullType(CoapDeviceTypeConfiguration),
      );
    }
    if (object.clientSettings != null) {
      yield r'clientSettings';
      yield serializers.serialize(
        object.clientSettings,
        specifiedType: const FullType(PowerSavingConfiguration),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CoapDeviceProfileTransportConfiguration object, {
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
    required CoapDeviceProfileTransportConfigurationBuilder result,
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
        case r'coapDeviceTypeConfiguration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      CoapDeviceTypeConfiguration,
                    ),
                  )
                  as CoapDeviceTypeConfiguration?;
          if (valueDes == null) continue;
          result.coapDeviceTypeConfiguration = valueDes;
          break;
        case r'clientSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      PowerSavingConfiguration,
                    ),
                  )
                  as PowerSavingConfiguration?;
          if (valueDes == null) continue;
          result.clientSettings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CoapDeviceProfileTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CoapDeviceProfileTransportConfigurationBuilder();
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
