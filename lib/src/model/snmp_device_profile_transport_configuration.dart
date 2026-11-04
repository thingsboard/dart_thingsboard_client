// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/snmp_communication_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/device_profile_transport_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'snmp_device_profile_transport_configuration.g.dart';

/// SnmpDeviceProfileTransportConfiguration
///
/// Properties:
/// * [type]
/// * [timeoutMs]
/// * [retries]
/// * [communicationConfigs]
@BuiltValue()
abstract class SnmpDeviceProfileTransportConfiguration
    implements
        DeviceProfileTransportConfiguration,
        Built<
          SnmpDeviceProfileTransportConfiguration,
          SnmpDeviceProfileTransportConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'retries')
  int? get retries;

  @BuiltValueField(wireName: r'timeoutMs')
  int? get timeoutMs;

  @BuiltValueField(wireName: r'communicationConfigs')
  BuiltList<SnmpCommunicationConfig>? get communicationConfigs;

  SnmpDeviceProfileTransportConfiguration._();

  factory SnmpDeviceProfileTransportConfiguration([
    void updates(SnmpDeviceProfileTransportConfigurationBuilder b),
  ]) = _$SnmpDeviceProfileTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SnmpDeviceProfileTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SnmpDeviceProfileTransportConfiguration> get serializer =>
      _$SnmpDeviceProfileTransportConfigurationSerializer();
}

class _$SnmpDeviceProfileTransportConfigurationSerializer
    implements PrimitiveSerializer<SnmpDeviceProfileTransportConfiguration> {
  @override
  final Iterable<Type> types = const [
    SnmpDeviceProfileTransportConfiguration,
    _$SnmpDeviceProfileTransportConfiguration,
  ];

  @override
  final String wireName = r'SnmpDeviceProfileTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SnmpDeviceProfileTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.communicationConfigs != null) {
      yield r'communicationConfigs';
      yield serializers.serialize(
        object.communicationConfigs,
        specifiedType: const FullType(BuiltList, [
          FullType(SnmpCommunicationConfig),
        ]),
      );
    }
    if (object.retries != null) {
      yield r'retries';
      yield serializers.serialize(
        object.retries,
        specifiedType: const FullType(int),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.timeoutMs != null) {
      yield r'timeoutMs';
      yield serializers.serialize(
        object.timeoutMs,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SnmpDeviceProfileTransportConfiguration object, {
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
    required SnmpDeviceProfileTransportConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'communicationConfigs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(SnmpCommunicationConfig),
                    ]),
                  )
                  as BuiltList<SnmpCommunicationConfig>?;
          if (valueDes == null) continue;
          result.communicationConfigs.replace(valueDes);
          break;
        case r'retries':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.retries = valueDes;
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
        case r'timeoutMs':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.timeoutMs = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SnmpDeviceProfileTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnmpDeviceProfileTransportConfigurationBuilder();
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
