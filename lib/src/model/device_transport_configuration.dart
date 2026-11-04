// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/coap_device_transport_configuration.dart';
import 'package:thingsboard_client/src/model/snmp_device_transport_configuration.dart';
import 'package:thingsboard_client/src/model/mqtt_device_transport_configuration.dart';
import 'package:thingsboard_client/src/model/default_device_transport_configuration.dart';
import 'package:thingsboard_client/src/model/lwm2m_device_transport_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_transport_configuration.g.dart';

/// Configuration for device transport
///
/// Properties:
/// * [type] 
@BuiltValue(instantiable: false)
abstract class DeviceTransportConfiguration  {
  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'COAP': CoapDeviceTransportConfiguration,
    r'DEFAULT': DefaultDeviceTransportConfiguration,
    r'LWM2M': Lwm2mDeviceTransportConfiguration,
    r'MQTT': MqttDeviceTransportConfiguration,
    r'SNMP': SnmpDeviceTransportConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceTransportConfiguration> get serializer => _$DeviceTransportConfigurationSerializer();
}

extension DeviceTransportConfigurationDiscriminatorExt on DeviceTransportConfiguration {
    String? get discriminatorValue {
        if (this is CoapDeviceTransportConfiguration) {
            return r'COAP';
        }
        if (this is DefaultDeviceTransportConfiguration) {
            return r'DEFAULT';
        }
        if (this is Lwm2mDeviceTransportConfiguration) {
            return r'LWM2M';
        }
        if (this is MqttDeviceTransportConfiguration) {
            return r'MQTT';
        }
        if (this is SnmpDeviceTransportConfiguration) {
            return r'SNMP';
        }
        return null;
    }
}
extension DeviceTransportConfigurationBuilderDiscriminatorExt on DeviceTransportConfigurationBuilder {
    String? get discriminatorValue {
        if (this is CoapDeviceTransportConfigurationBuilder) {
            return r'COAP';
        }
        if (this is DefaultDeviceTransportConfigurationBuilder) {
            return r'DEFAULT';
        }
        if (this is Lwm2mDeviceTransportConfigurationBuilder) {
            return r'LWM2M';
        }
        if (this is MqttDeviceTransportConfigurationBuilder) {
            return r'MQTT';
        }
        if (this is SnmpDeviceTransportConfigurationBuilder) {
            return r'SNMP';
        }
        return null;
    }
}

class _$DeviceTransportConfigurationSerializer implements PrimitiveSerializer<DeviceTransportConfiguration> {
  @override
  final Iterable<Type> types = const [DeviceTransportConfiguration];

  @override
  final String wireName = r'DeviceTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceTransportConfiguration object, {
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
    DeviceTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is CoapDeviceTransportConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(CoapDeviceTransportConfiguration))!;
    }
    if (object is DefaultDeviceTransportConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(DefaultDeviceTransportConfiguration))!;
    }
    if (object is Lwm2mDeviceTransportConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(Lwm2mDeviceTransportConfiguration))!;
    }
    if (object is MqttDeviceTransportConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(MqttDeviceTransportConfiguration))!;
    }
    if (object is SnmpDeviceTransportConfiguration) {
      return serializers.serialize(object, specifiedType: FullType(SnmpDeviceTransportConfiguration))!;
    }
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  DeviceTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(DeviceTransportConfiguration.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex], specifiedType: FullType(String)) as String;
    switch (discValue) {
      case r'COAP':
        return serializers.deserialize(serialized, specifiedType: FullType(CoapDeviceTransportConfiguration)) as CoapDeviceTransportConfiguration;
      case r'DEFAULT':
        return serializers.deserialize(serialized, specifiedType: FullType(DefaultDeviceTransportConfiguration)) as DefaultDeviceTransportConfiguration;
      case r'LWM2M':
        return serializers.deserialize(serialized, specifiedType: FullType(Lwm2mDeviceTransportConfiguration)) as Lwm2mDeviceTransportConfiguration;
      case r'MQTT':
        return serializers.deserialize(serialized, specifiedType: FullType(MqttDeviceTransportConfiguration)) as MqttDeviceTransportConfiguration;
      case r'SNMP':
        return serializers.deserialize(serialized, specifiedType: FullType(SnmpDeviceTransportConfiguration)) as SnmpDeviceTransportConfiguration;
      default:
        return serializers.deserialize(serialized, specifiedType: FullType($DeviceTransportConfiguration)) as $DeviceTransportConfiguration;
    }
  }
}


/// a concrete implementation of [DeviceTransportConfiguration], since [DeviceTransportConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DeviceTransportConfiguration implements DeviceTransportConfiguration, Built<$DeviceTransportConfiguration, $DeviceTransportConfigurationBuilder> {
  $DeviceTransportConfiguration._();

  factory $DeviceTransportConfiguration([void Function($DeviceTransportConfigurationBuilder)? updates]) = _$$DeviceTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DeviceTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DeviceTransportConfiguration> get serializer => _$$DeviceTransportConfigurationSerializer();
}

class _$$DeviceTransportConfigurationSerializer implements PrimitiveSerializer<$DeviceTransportConfiguration> {
  @override
  final Iterable<Type> types = const [$DeviceTransportConfiguration, _$$DeviceTransportConfiguration];

  @override
  final String wireName = r'$DeviceTransportConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $DeviceTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(DeviceTransportConfiguration))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceTransportConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  $DeviceTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DeviceTransportConfigurationBuilder();
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

