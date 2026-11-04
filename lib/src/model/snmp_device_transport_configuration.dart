// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/device_transport_configuration.dart';
import 'package:thingsboard_client/src/model/privacy_protocol.dart';
import 'package:thingsboard_client/src/model/authentication_protocol.dart';
import 'package:thingsboard_client/src/model/snmp_protocol_version.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'snmp_device_transport_configuration.g.dart';

/// SnmpDeviceTransportConfiguration
///
/// Properties:
/// * [type] 
/// * [host] 
/// * [port] 
/// * [protocolVersion] 
/// * [community] 
/// * [username] 
/// * [securityName] 
/// * [contextName] 
/// * [authenticationProtocol] 
/// * [authenticationPassphrase] 
/// * [privacyProtocol] 
/// * [privacyPassphrase] 
/// * [engineId] 
@BuiltValue()
abstract class SnmpDeviceTransportConfiguration implements DeviceTransportConfiguration, Built<SnmpDeviceTransportConfiguration, SnmpDeviceTransportConfigurationBuilder> {
  @BuiltValueField(wireName: r'contextName')
  String? get contextName;

  @BuiltValueField(wireName: r'privacyPassphrase')
  String? get privacyPassphrase;

  @BuiltValueField(wireName: r'securityName')
  String? get securityName;

  @BuiltValueField(wireName: r'port')
  int? get port;

  @BuiltValueField(wireName: r'host')
  String? get host;

  @BuiltValueField(wireName: r'authenticationPassphrase')
  String? get authenticationPassphrase;

  @BuiltValueField(wireName: r'protocolVersion')
  SnmpProtocolVersion? get protocolVersion;
  // enum protocolVersionEnum {  V1,  V2C,  V3,  };

  @BuiltValueField(wireName: r'community')
  String? get community;

  @BuiltValueField(wireName: r'authenticationProtocol')
  AuthenticationProtocol? get authenticationProtocol;
  // enum authenticationProtocolEnum {  SHA_1,  SHA_224,  SHA_256,  SHA_384,  SHA_512,  MD5,  };

  @BuiltValueField(wireName: r'privacyProtocol')
  PrivacyProtocol? get privacyProtocol;
  // enum privacyProtocolEnum {  DES,  AES_128,  AES_192,  AES_256,  };

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'engineId')
  String? get engineId;

  SnmpDeviceTransportConfiguration._();

  factory SnmpDeviceTransportConfiguration([void updates(SnmpDeviceTransportConfigurationBuilder b)]) = _$SnmpDeviceTransportConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SnmpDeviceTransportConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SnmpDeviceTransportConfiguration> get serializer => _$SnmpDeviceTransportConfigurationSerializer();
}

class _$SnmpDeviceTransportConfigurationSerializer implements PrimitiveSerializer<SnmpDeviceTransportConfiguration> {
  @override
  final Iterable<Type> types = const [SnmpDeviceTransportConfiguration, _$SnmpDeviceTransportConfiguration];

  @override
  final String wireName = r'SnmpDeviceTransportConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SnmpDeviceTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.contextName != null) {
      yield r'contextName';
      yield serializers.serialize(
        object.contextName,
        specifiedType: const FullType(String),
      );
    }
    if (object.privacyPassphrase != null) {
      yield r'privacyPassphrase';
      yield serializers.serialize(
        object.privacyPassphrase,
        specifiedType: const FullType(String),
      );
    }
    if (object.securityName != null) {
      yield r'securityName';
      yield serializers.serialize(
        object.securityName,
        specifiedType: const FullType(String),
      );
    }
    if (object.authenticationPassphrase != null) {
      yield r'authenticationPassphrase';
      yield serializers.serialize(
        object.authenticationPassphrase,
        specifiedType: const FullType(String),
      );
    }
    if (object.community != null) {
      yield r'community';
      yield serializers.serialize(
        object.community,
        specifiedType: const FullType(String),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    if (object.authenticationProtocol != null) {
      yield r'authenticationProtocol';
      yield serializers.serialize(
        object.authenticationProtocol,
        specifiedType: const FullType(AuthenticationProtocol),
      );
    }
    if (object.privacyProtocol != null) {
      yield r'privacyProtocol';
      yield serializers.serialize(
        object.privacyProtocol,
        specifiedType: const FullType(PrivacyProtocol),
      );
    }
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType(int),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.protocolVersion != null) {
      yield r'protocolVersion';
      yield serializers.serialize(
        object.protocolVersion,
        specifiedType: const FullType(SnmpProtocolVersion),
      );
    }
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      );
    }
    if (object.engineId != null) {
      yield r'engineId';
      yield serializers.serialize(
        object.engineId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SnmpDeviceTransportConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SnmpDeviceTransportConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'contextName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.contextName = valueDes;
          break;
        case r'privacyPassphrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.privacyPassphrase = valueDes;
          break;
        case r'securityName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.securityName = valueDes;
          break;
        case r'authenticationPassphrase':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.authenticationPassphrase = valueDes;
          break;
        case r'community':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.community = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'authenticationProtocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(AuthenticationProtocol),
          ) as AuthenticationProtocol?;
          if (valueDes == null) continue;
          result.authenticationProtocol = valueDes;
          break;
        case r'privacyProtocol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PrivacyProtocol),
          ) as PrivacyProtocol?;
          if (valueDes == null) continue;
          result.privacyProtocol = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.port = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'protocolVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(SnmpProtocolVersion),
          ) as SnmpProtocolVersion?;
          if (valueDes == null) continue;
          result.protocolVersion = valueDes;
          break;
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.username = valueDes;
          break;
        case r'engineId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.engineId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SnmpDeviceTransportConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SnmpDeviceTransportConfigurationBuilder();
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


