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

part 'x509_certificate_chain_provision_configuration.g.dart';

/// X509CertificateChainProvisionConfiguration
///
/// Properties:
/// * [provisionDeviceSecret] - Provision device secret
/// * [type]
/// * [certificateRegExPattern]
/// * [allowCreateNewDevicesByX509Certificate]
@BuiltValue()
abstract class X509CertificateChainProvisionConfiguration
    implements
        DeviceProfileProvisionConfiguration,
        Built<
          X509CertificateChainProvisionConfiguration,
          X509CertificateChainProvisionConfigurationBuilder
        > {
  @BuiltValueField(wireName: r'allowCreateNewDevicesByX509Certificate')
  bool? get allowCreateNewDevicesByX509Certificate;

  @BuiltValueField(wireName: r'certificateRegExPattern')
  String? get certificateRegExPattern;

  X509CertificateChainProvisionConfiguration._();

  factory X509CertificateChainProvisionConfiguration([
    void updates(X509CertificateChainProvisionConfigurationBuilder b),
  ]) = _$X509CertificateChainProvisionConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(X509CertificateChainProvisionConfigurationBuilder b) =>
      b;

  @BuiltValueSerializer(custom: true)
  static Serializer<X509CertificateChainProvisionConfiguration>
  get serializer => _$X509CertificateChainProvisionConfigurationSerializer();
}

class _$X509CertificateChainProvisionConfigurationSerializer
    implements PrimitiveSerializer<X509CertificateChainProvisionConfiguration> {
  @override
  final Iterable<Type> types = const [
    X509CertificateChainProvisionConfiguration,
    _$X509CertificateChainProvisionConfiguration,
  ];

  @override
  final String wireName = r'X509CertificateChainProvisionConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    X509CertificateChainProvisionConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allowCreateNewDevicesByX509Certificate != null) {
      yield r'allowCreateNewDevicesByX509Certificate';
      yield serializers.serialize(
        object.allowCreateNewDevicesByX509Certificate,
        specifiedType: const FullType(bool),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.certificateRegExPattern != null) {
      yield r'certificateRegExPattern';
      yield serializers.serialize(
        object.certificateRegExPattern,
        specifiedType: const FullType(String),
      );
    }
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
    X509CertificateChainProvisionConfiguration object, {
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
    required X509CertificateChainProvisionConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allowCreateNewDevicesByX509Certificate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowCreateNewDevicesByX509Certificate = valueDes;
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
        case r'certificateRegExPattern':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.certificateRegExPattern = valueDes;
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
  X509CertificateChainProvisionConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = X509CertificateChainProvisionConfigurationBuilder();
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
