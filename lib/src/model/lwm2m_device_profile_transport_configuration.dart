// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/lw_m2_m_bootstrap_server_credential.dart';
import 'package:built_collection/built_collection.dart';
import 'package:thingsboard_client/src/model/other_configuration.dart';
import 'package:thingsboard_client/src/model/device_profile_transport_configuration.dart';
import 'package:thingsboard_client/src/model/telemetry_mapping_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lwm2m_device_profile_transport_configuration.g.dart';

/// Lwm2mDeviceProfileTransportConfiguration
///
/// Properties:
/// * [type]
/// * [observeAttr] - Configuration for mapping LwM2M resources to telemetry and attributes
/// * [bootstrapServerUpdateEnable] - Flag indicating whether LwM2M bootstrap server update is enabled
/// * [bootstrap]
/// * [clientLwM2mSettings] - Other LwM2M client settings
@BuiltValue()
abstract class Lwm2mDeviceProfileTransportConfiguration
    implements
        DeviceProfileTransportConfiguration,
        Built<
          Lwm2mDeviceProfileTransportConfiguration,
          Lwm2mDeviceProfileTransportConfigurationBuilder
        > {
  /// Configuration for mapping LwM2M resources to telemetry and attributes
  @BuiltValueField(wireName: r'observeAttr')
  TelemetryMappingConfiguration? get observeAttr;

  /// Flag indicating whether LwM2M bootstrap server update is enabled
  @BuiltValueField(wireName: r'bootstrapServerUpdateEnable')
  bool? get bootstrapServerUpdateEnable;

  @BuiltValueField(wireName: r'bootstrap')
  BuiltList<LwM2MBootstrapServerCredential>? get bootstrap;

  /// Other LwM2M client settings
  @BuiltValueField(wireName: r'clientLwM2mSettings')
  OtherConfiguration? get clientLwM2mSettings;

  Lwm2mDeviceProfileTransportConfiguration._();

  factory Lwm2mDeviceProfileTransportConfiguration([
    void updates(Lwm2mDeviceProfileTransportConfigurationBuilder b),
  ]) = _$Lwm2mDeviceProfileTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Lwm2mDeviceProfileTransportConfigurationBuilder b) =>
      b..type = r'LWM2M';

  @BuiltValueSerializer(custom: true)
  static Serializer<Lwm2mDeviceProfileTransportConfiguration> get serializer =>
      _$Lwm2mDeviceProfileTransportConfigurationSerializer();
}

class _$Lwm2mDeviceProfileTransportConfigurationSerializer
    implements PrimitiveSerializer<Lwm2mDeviceProfileTransportConfiguration> {
  @override
  final Iterable<Type> types = const [
    Lwm2mDeviceProfileTransportConfiguration,
    _$Lwm2mDeviceProfileTransportConfiguration,
  ];

  @override
  final String wireName = r'Lwm2mDeviceProfileTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Lwm2mDeviceProfileTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.observeAttr != null) {
      yield r'observeAttr';
      yield serializers.serialize(
        object.observeAttr,
        specifiedType: const FullType(TelemetryMappingConfiguration),
      );
    }
    if (object.bootstrapServerUpdateEnable != null) {
      yield r'bootstrapServerUpdateEnable';
      yield serializers.serialize(
        object.bootstrapServerUpdateEnable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.bootstrap != null) {
      yield r'bootstrap';
      yield serializers.serialize(
        object.bootstrap,
        specifiedType: const FullType(BuiltList, [
          FullType(LwM2MBootstrapServerCredential),
        ]),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.clientLwM2mSettings != null) {
      yield r'clientLwM2mSettings';
      yield serializers.serialize(
        object.clientLwM2mSettings,
        specifiedType: const FullType(OtherConfiguration),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Lwm2mDeviceProfileTransportConfiguration object, {
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
    required Lwm2mDeviceProfileTransportConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'observeAttr':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(
                      TelemetryMappingConfiguration,
                    ),
                  )
                  as TelemetryMappingConfiguration?;
          if (valueDes == null) continue;
          result.observeAttr.replace(valueDes);
          break;
        case r'bootstrapServerUpdateEnable':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.bootstrapServerUpdateEnable = valueDes;
          break;
        case r'bootstrap':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(BuiltList, [
                      FullType(LwM2MBootstrapServerCredential),
                    ]),
                  )
                  as BuiltList<LwM2MBootstrapServerCredential>?;
          if (valueDes == null) continue;
          result.bootstrap.replace(valueDes);
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
        case r'clientLwM2mSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(OtherConfiguration),
                  )
                  as OtherConfiguration?;
          if (valueDes == null) continue;
          result.clientLwM2mSettings.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Lwm2mDeviceProfileTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Lwm2mDeviceProfileTransportConfigurationBuilder();
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
