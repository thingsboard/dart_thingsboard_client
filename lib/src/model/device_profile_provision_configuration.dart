// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/allow_create_new_devices_device_profile_provision_configuration.dart';
import 'package:thingsboard_client/src/model/check_pre_provisioned_devices_device_profile_provision_configuration.dart';
import 'package:thingsboard_client/src/model/x509_certificate_chain_provision_configuration.dart';
import 'package:thingsboard_client/src/model/disabled_device_profile_provision_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_profile_provision_configuration.g.dart';

/// Device profile provision configuration
///
/// Properties:
/// * [provisionDeviceSecret] - Provision device secret
/// * [type]
@BuiltValue(instantiable: false)
abstract class DeviceProfileProvisionConfiguration {
  /// Provision device secret
  @BuiltValueField(wireName: r'provisionDeviceSecret')
  String? get provisionDeviceSecret;

  @BuiltValueField(wireName: r'type')
  String get type;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'ALLOW_CREATE_NEW_DEVICES':
        AllowCreateNewDevicesDeviceProfileProvisionConfiguration,
    r'CHECK_PRE_PROVISIONED_DEVICES':
        CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration,
    r'DISABLED': DisabledDeviceProfileProvisionConfiguration,
    r'X509_CERTIFICATE_CHAIN': X509CertificateChainProvisionConfiguration,
  };

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceProfileProvisionConfiguration> get serializer =>
      _$DeviceProfileProvisionConfigurationSerializer();
}

extension DeviceProfileProvisionConfigurationDiscriminatorExt
    on DeviceProfileProvisionConfiguration {
  String? get discriminatorValue {
    if (this is AllowCreateNewDevicesDeviceProfileProvisionConfiguration) {
      return r'ALLOW_CREATE_NEW_DEVICES';
    }
    if (this is CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration) {
      return r'CHECK_PRE_PROVISIONED_DEVICES';
    }
    if (this is DisabledDeviceProfileProvisionConfiguration) {
      return r'DISABLED';
    }
    if (this is X509CertificateChainProvisionConfiguration) {
      return r'X509_CERTIFICATE_CHAIN';
    }
    return null;
  }
}

extension DeviceProfileProvisionConfigurationBuilderDiscriminatorExt
    on DeviceProfileProvisionConfigurationBuilder {
  String? get discriminatorValue {
    if (this
        is AllowCreateNewDevicesDeviceProfileProvisionConfigurationBuilder) {
      return r'ALLOW_CREATE_NEW_DEVICES';
    }
    if (this
        is CheckPreProvisionedDevicesDeviceProfileProvisionConfigurationBuilder) {
      return r'CHECK_PRE_PROVISIONED_DEVICES';
    }
    if (this is DisabledDeviceProfileProvisionConfigurationBuilder) {
      return r'DISABLED';
    }
    if (this is X509CertificateChainProvisionConfigurationBuilder) {
      return r'X509_CERTIFICATE_CHAIN';
    }
    return null;
  }
}

class _$DeviceProfileProvisionConfigurationSerializer
    implements PrimitiveSerializer<DeviceProfileProvisionConfiguration> {
  @override
  final Iterable<Type> types = const [DeviceProfileProvisionConfiguration];

  @override
  final String wireName = r'DeviceProfileProvisionConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceProfileProvisionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.provisionDeviceSecret != null) {
      yield r'provisionDeviceSecret';
      yield serializers.serialize(
        object.provisionDeviceSecret,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceProfileProvisionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (object is AllowCreateNewDevicesDeviceProfileProvisionConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(
          AllowCreateNewDevicesDeviceProfileProvisionConfiguration,
        ),
      )!;
    }
    if (object
        is CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(
          CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration,
        ),
      )!;
    }
    if (object is DisabledDeviceProfileProvisionConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(DisabledDeviceProfileProvisionConfiguration),
      )!;
    }
    if (object is X509CertificateChainProvisionConfiguration) {
      return serializers.serialize(
        object,
        specifiedType: FullType(X509CertificateChainProvisionConfiguration),
      )!;
    }
    return _serializeProperties(
      serializers,
      object,
      specifiedType: specifiedType,
    ).toList();
  }

  @override
  DeviceProfileProvisionConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(
          DeviceProfileProvisionConfiguration.discriminatorFieldName,
        ) +
        1;
    final discValue =
        serializers.deserialize(
              serializedList[discIndex],
              specifiedType: FullType(String),
            )
            as String;
    switch (discValue) {
      case r'ALLOW_CREATE_NEW_DEVICES':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                AllowCreateNewDevicesDeviceProfileProvisionConfiguration,
              ),
            )
            as AllowCreateNewDevicesDeviceProfileProvisionConfiguration;
      case r'CHECK_PRE_PROVISIONED_DEVICES':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration,
              ),
            )
            as CheckPreProvisionedDevicesDeviceProfileProvisionConfiguration;
      case r'DISABLED':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                DisabledDeviceProfileProvisionConfiguration,
              ),
            )
            as DisabledDeviceProfileProvisionConfiguration;
      case r'X509_CERTIFICATE_CHAIN':
        return serializers.deserialize(
              serialized,
              specifiedType: FullType(
                X509CertificateChainProvisionConfiguration,
              ),
            )
            as X509CertificateChainProvisionConfiguration;
      default:
        return serializers.deserialize(
              serialized,
              specifiedType: FullType($DeviceProfileProvisionConfiguration),
            )
            as $DeviceProfileProvisionConfiguration;
    }
  }
}

/// a concrete implementation of [DeviceProfileProvisionConfiguration], since [DeviceProfileProvisionConfiguration] is not instantiable
@BuiltValue(instantiable: true)
abstract class $DeviceProfileProvisionConfiguration
    implements
        DeviceProfileProvisionConfiguration,
        Built<
          $DeviceProfileProvisionConfiguration,
          $DeviceProfileProvisionConfigurationBuilder
        > {
  $DeviceProfileProvisionConfiguration._();

  factory $DeviceProfileProvisionConfiguration([
    void Function($DeviceProfileProvisionConfigurationBuilder)? updates,
  ]) = _$$DeviceProfileProvisionConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($DeviceProfileProvisionConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$DeviceProfileProvisionConfiguration> get serializer =>
      _$$DeviceProfileProvisionConfigurationSerializer();
}

class _$$DeviceProfileProvisionConfigurationSerializer
    implements PrimitiveSerializer<$DeviceProfileProvisionConfiguration> {
  @override
  final Iterable<Type> types = const [
    $DeviceProfileProvisionConfiguration,
    _$$DeviceProfileProvisionConfiguration,
  ];

  @override
  final String wireName = r'$DeviceProfileProvisionConfiguration';

  @override
  Object serialize(
    Serializers serializers,
    $DeviceProfileProvisionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(
      object,
      specifiedType: FullType(DeviceProfileProvisionConfiguration),
    )!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviceProfileProvisionConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  $DeviceProfileProvisionConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $DeviceProfileProvisionConfigurationBuilder();
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
