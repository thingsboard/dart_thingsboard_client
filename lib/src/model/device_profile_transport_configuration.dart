// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/default_device_profile_transport_configuration.dart';
import 'package:thingsboard_client/src/model/coap_device_profile_transport_configuration.dart';
import 'package:thingsboard_client/src/model/snmp_device_profile_transport_configuration.dart';
import 'package:thingsboard_client/src/model/mqtt_device_profile_transport_configuration.dart';
import 'package:thingsboard_client/src/model/lwm2m_device_profile_transport_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_profile_transport_configuration.g.dart';

/// Configuration for device profile transport
///
/// Properties:
/// * [type]
@BuiltValue(instantiable: false)
abstract class DeviceProfileTransportConfiguration {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'COAP': CoapDeviceProfileTransportConfiguration,
    r'DEFAULT': DefaultDeviceProfileTransportConfiguration,
    r'LWM2M': Lwm2mDeviceProfileTransportConfiguration,
    r'MQTT': MqttDeviceProfileTransportConfiguration,
    r'SNMP': SnmpDeviceProfileTransportConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceProfileTransportConfiguration> get serializer =>
      _$DeviceProfileTransportConfigurationSerializer();
}

extension DeviceProfileTransportConfigurationDiscriminatorExt
    on DeviceProfileTransportConfiguration {
  String? get discriminatorValue {
    if (this is CoapDeviceProfileTransportConfiguration) {
      return r'COAP';
    }
    if (this is DefaultDeviceProfileTransportConfiguration) {
      return r'DEFAULT';
    }
    if (this is Lwm2mDeviceProfileTransportConfiguration) {
      return r'LWM2M';
    }
    if (this is MqttDeviceProfileTransportConfiguration) {
      return r'MQTT';
    }
    if (this is SnmpDeviceProfileTransportConfiguration) {
      return r'SNMP';
    }
    return null;
  }
}

extension DeviceProfileTransportConfigurationBuilderDiscriminatorExt
    on DeviceProfileTransportConfigurationBuilder {
  String? get discriminatorValue {
    if (this is CoapDeviceProfileTransportConfigurationBuilder) {
      return r'COAP';
    }
    if (this is DefaultDeviceProfileTransportConfigurationBuilder) {
      return r'DEFAULT';
    }
    if (this is Lwm2mDeviceProfileTransportConfigurationBuilder) {
      return r'LWM2M';
    }
    if (this is MqttDeviceProfileTransportConfigurationBuilder) {
      return r'MQTT';
    }
    if (this is SnmpDeviceProfileTransportConfigurationBuilder) {
      return r'SNMP';
    }
    return null;
  }
}

class _$DeviceProfileTransportConfigurationSerializer
    implements PrimitiveSerializer<DeviceProfileTransportConfiguration> {
  @override
  final Iterable<Type> types = const [DeviceProfileTransportConfiguration];

  @override
  final String wireName = r'DeviceProfileTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceProfileTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceProfileTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CoapDeviceProfileTransportConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(CoapDeviceProfileTransportConfiguration),
      )!;
    }
    if (object is DefaultDeviceProfileTransportConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DefaultDeviceProfileTransportConfiguration),
      )!;
    }
    if (object is Lwm2mDeviceProfileTransportConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(Lwm2mDeviceProfileTransportConfiguration),
      )!;
    }
    if (object is MqttDeviceProfileTransportConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(MqttDeviceProfileTransportConfiguration),
      )!;
    }
    if (object is SnmpDeviceProfileTransportConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(SnmpDeviceProfileTransportConfiguration),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  DeviceProfileTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          DeviceProfileTransportConfiguration.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'COAP':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(CoapDeviceProfileTransportConfiguration),
            )
            as CoapDeviceProfileTransportConfiguration;
      case r'DEFAULT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                DefaultDeviceProfileTransportConfiguration,
              ),
            )
            as DefaultDeviceProfileTransportConfiguration;
      case r'LWM2M':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(Lwm2mDeviceProfileTransportConfiguration),
            )
            as Lwm2mDeviceProfileTransportConfiguration;
      case r'MQTT':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(MqttDeviceProfileTransportConfiguration),
            )
            as MqttDeviceProfileTransportConfiguration;
      case r'SNMP':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(SnmpDeviceProfileTransportConfiguration),
            )
            as SnmpDeviceProfileTransportConfiguration;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($DeviceProfileTransportConfiguration),
            )
            as $DeviceProfileTransportConfiguration;
    }
  }
}

/// a concrete implementation of [DeviceProfileTransportConfiguration], since [DeviceProfileTransportConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DeviceProfileTransportConfiguration
    implements
        DeviceProfileTransportConfiguration,
        Built<
          $DeviceProfileTransportConfiguration,
          $DeviceProfileTransportConfigurationBuilder
        > {
  $DeviceProfileTransportConfiguration._();

  factory $DeviceProfileTransportConfiguration([
    void Function($DeviceProfileTransportConfigurationBuilder)? updates,
  ]) = _$$DeviceProfileTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DeviceProfileTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DeviceProfileTransportConfiguration> get serializer =>
      _$$DeviceProfileTransportConfigurationSerializer();
}

class _$$DeviceProfileTransportConfigurationSerializer
    implements PrimitiveSerializer<$DeviceProfileTransportConfiguration> {
  @override
  final Iterable<Type> types = const [
    $DeviceProfileTransportConfiguration,
    _$$DeviceProfileTransportConfiguration,
  ];

  @override
  final String wireName = r'$DeviceProfileTransportConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $DeviceProfileTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(DeviceProfileTransportConfiguration),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceProfileTransportConfigurationBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $DeviceProfileTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DeviceProfileTransportConfigurationBuilder();
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
