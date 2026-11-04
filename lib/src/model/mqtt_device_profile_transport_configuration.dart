// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/device_profile_transport_configuration.dart';
import 'package:thingsboard_client/src/model/transport_payload_type_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mqtt_device_profile_transport_configuration.g.dart';

/// MqttDeviceProfileTransportConfiguration
///
/// Properties:
/// * [type]
/// * [deviceTelemetryTopic]
/// * [deviceAttributesTopic]
/// * [deviceAttributesSubscribeTopic]
/// * [transportPayloadTypeConfiguration]
/// * [sparkplug]
/// * [sparkplugAttributesMetricNames]
/// * [sendAckOnValidationException]
@BuiltValue()
abstract class MqttDeviceProfileTransportConfiguration
    implements
        DeviceProfileTransportConfiguration,
        Built<
          MqttDeviceProfileTransportConfiguration,
          MqttDeviceProfileTransportConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'transportPayloadTypeConfiguration')
  TransportPayloadTypeConfiguration? get transportPayloadTypeConfiguration;

  @BuiltValueField(wireName: r'sparkplug')
  bool? get sparkplug;

  @BuiltValueField(wireName: r'deviceTelemetryTopic')
  String? get deviceTelemetryTopic;

  @BuiltValueField(wireName: r'deviceAttributesTopic')
  String? get deviceAttributesTopic;

  @BuiltValueField(wireName: r'sendAckOnValidationException')
  bool? get sendAckOnValidationException;

  @BuiltValueField(wireName: r'sparkplugAttributesMetricNames')
  BuiltSet<String>? get sparkplugAttributesMetricNames;

  @BuiltValueField(wireName: r'deviceAttributesSubscribeTopic')
  String? get deviceAttributesSubscribeTopic;

  MqttDeviceProfileTransportConfiguration._();

  factory MqttDeviceProfileTransportConfiguration([
    void updates(MqttDeviceProfileTransportConfigurationBuilder b),
  ]) = _$MqttDeviceProfileTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MqttDeviceProfileTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MqttDeviceProfileTransportConfiguration> get serializer =>
      _$MqttDeviceProfileTransportConfigurationSerializer();
}

class _$MqttDeviceProfileTransportConfigurationSerializer
    implements PrimitiveSerializer<MqttDeviceProfileTransportConfiguration> {
  @override
  final Iterable<Type> types = const [
    MqttDeviceProfileTransportConfiguration,
    _$MqttDeviceProfileTransportConfiguration,
  ];

  @override
  final String wireName = r'MqttDeviceProfileTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    MqttDeviceProfileTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.transportPayloadTypeConfiguration != null) {
      yield r'transportPayloadTypeConfiguration';
      yield serializers.serialize(
        object.transportPayloadTypeConfiguration,
        specifiedType: const FullType(TransportPayloadTypeConfiguration),
      );
    }
    if (object.sparkplug != null) {
      yield r'sparkplug';
      yield serializers.serialize(
        object.sparkplug,
        specifiedType: const FullType(bool),
      );
    }
    if (object.deviceTelemetryTopic != null) {
      yield r'deviceTelemetryTopic';
      yield serializers.serialize(
        object.deviceTelemetryTopic,
        specifiedType: const FullType(String),
      );
    }
    if (object.deviceAttributesTopic != null) {
      yield r'deviceAttributesTopic';
      yield serializers.serialize(
        object.deviceAttributesTopic,
        specifiedType: const FullType(String),
      );
    }
    if (object.sendAckOnValidationException != null) {
      yield r'sendAckOnValidationException';
      yield serializers.serialize(
        object.sendAckOnValidationException,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sparkplugAttributesMetricNames != null) {
      yield r'sparkplugAttributesMetricNames';
      yield serializers.serialize(
        object.sparkplugAttributesMetricNames,
        specifiedType: const FullType(BuiltSet, [FullType(String)]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.deviceAttributesSubscribeTopic != null) {
      yield r'deviceAttributesSubscribeTopic';
      yield serializers.serialize(
        object.deviceAttributesSubscribeTopic,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    MqttDeviceProfileTransportConfiguration object, {
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
    required MqttDeviceProfileTransportConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'transportPayloadTypeConfiguration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TransportPayloadTypeConfiguration,
                    ),
                  )
                  as TransportPayloadTypeConfiguration?;
          if (valueDes == null) continue;
          result.transportPayloadTypeConfiguration = valueDes;
          break;
        case r'sparkplug':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sparkplug = valueDes;
          break;
        case r'deviceTelemetryTopic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceTelemetryTopic = valueDes;
          break;
        case r'deviceAttributesTopic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceAttributesTopic = valueDes;
          break;
        case r'sendAckOnValidationException':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.sendAckOnValidationException = valueDes;
          break;
        case r'sparkplugAttributesMetricNames':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltSet, [
                      FullType(String),
                    ]),
                  )
                  as BuiltSet<String>?;
          if (valueDes == null) continue;
          result.sparkplugAttributesMetricNames.replace(valueDes);
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
        case r'deviceAttributesSubscribeTopic':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.deviceAttributesSubscribeTopic = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MqttDeviceProfileTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MqttDeviceProfileTransportConfigurationBuilder();
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
