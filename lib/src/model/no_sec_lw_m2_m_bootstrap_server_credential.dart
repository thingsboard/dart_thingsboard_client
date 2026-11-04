// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/lw_m2_m_bootstrap_server_credential.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'no_sec_lw_m2_m_bootstrap_server_credential.g.dart';

/// NoSecLwM2MBootstrapServerCredential
///
/// Properties:
/// * [securityMode] 
/// * [shortServerId] - Server short Id. Used as link to associate server Object Instance. This identifier uniquely identifies each LwM2M Server configured for the LwM2M Client. This Resource MUST be set when the Bootstrap-Server Resource has a value of 'false' and MUST be null when Bootstrap-Server is 'true'. The values 0 and 65535 MUST NOT be used for identifying the LwM2M Server.
/// * [bootstrapServerIs] - Is Bootstrap Server or Lwm2m Server. The LwM2M Client MAY be configured to use one or more LwM2M Server Account(s). The LwM2M Client MUST have at most one LwM2M Bootstrap-Server Account. (*) The LwM2M client MUST have at least one LwM2M server account after completing the boot sequence specified.
/// * [host] - Host for 'No Security' mode
/// * [port] - Port for  Lwm2m Server: 'No Security' mode: Lwm2m Server or Bootstrap Server
/// * [clientHoldOffTime] - Client Hold Off Time. The number of seconds to wait before initiating a Client Initiated Bootstrap once the LwM2M Client has determined it should initiate this bootstrap mode. (This information is relevant for use with a Bootstrap-Server only.)
/// * [serverPublicKey] - Server Public Key for 'Security' mode (DTLS): RPK or X509. Format: base64 encoded
/// * [serverCertificate] - Server Public Key for 'Security' mode (DTLS): X509. Format: base64 encoded
/// * [bootstrapServerAccountTimeout] - Bootstrap Server Account Timeout (If the value is set to 0, or if this resource is not instantiated, the Bootstrap-Server Account lifetime is infinite.)
/// * [lifetime] - Specify the lifetime of the registration in seconds.
/// * [defaultMinPeriod] - The default value the LwM2M Client should use for the Minimum Period of an Observation in the absence of this parameter being included in an Observation. If this Resource doesn’t exist, the default value is 0.
/// * [notifIfDisabled] - If true, the LwM2M Client stores “Notify” operations to the LwM2M Server while the LwM2M Server account is disabled or the LwM2M Client is offline. After the LwM2M Server account is enabled or the LwM2M Client is online, the LwM2M Client reports the stored “Notify” operations to the Server. If false, the LwM2M Client discards all the “Notify” operations or temporarily disables the Observe function while the LwM2M Server is disabled or the LwM2M Client is offline. The default value is true.
/// * [binding] - This Resource defines the transport binding configured for the LwM2M Client. If the LwM2M Client supports the binding specified in this Resource, the LwM2M Client MUST use that transport for the Current Binding Mode.
@BuiltValue()
abstract class NoSecLwM2MBootstrapServerCredential implements LwM2MBootstrapServerCredential, Built<NoSecLwM2MBootstrapServerCredential, NoSecLwM2MBootstrapServerCredentialBuilder> {
  /// Client Hold Off Time. The number of seconds to wait before initiating a Client Initiated Bootstrap once the LwM2M Client has determined it should initiate this bootstrap mode. (This information is relevant for use with a Bootstrap-Server only.)
  @BuiltValueField(wireName: r'clientHoldOffTime')
  int? get clientHoldOffTime;

  /// Port for  Lwm2m Server: 'No Security' mode: Lwm2m Server or Bootstrap Server
  @BuiltValueField(wireName: r'port')
  int? get port;

  /// Server Public Key for 'Security' mode (DTLS): X509. Format: base64 encoded
  @BuiltValueField(wireName: r'serverCertificate')
  String? get serverCertificate;

  /// Is Bootstrap Server or Lwm2m Server. The LwM2M Client MAY be configured to use one or more LwM2M Server Account(s). The LwM2M Client MUST have at most one LwM2M Bootstrap-Server Account. (*) The LwM2M client MUST have at least one LwM2M server account after completing the boot sequence specified.
  @BuiltValueField(wireName: r'bootstrapServerIs')
  bool? get bootstrapServerIs;

  /// Bootstrap Server Account Timeout (If the value is set to 0, or if this resource is not instantiated, the Bootstrap-Server Account lifetime is infinite.)
  @BuiltValueField(wireName: r'bootstrapServerAccountTimeout')
  int? get bootstrapServerAccountTimeout;

  /// Host for 'No Security' mode
  @BuiltValueField(wireName: r'host')
  String? get host;

  /// Server Public Key for 'Security' mode (DTLS): RPK or X509. Format: base64 encoded
  @BuiltValueField(wireName: r'serverPublicKey')
  String? get serverPublicKey;

  /// Specify the lifetime of the registration in seconds.
  @BuiltValueField(wireName: r'lifetime')
  int? get lifetime;

  /// This Resource defines the transport binding configured for the LwM2M Client. If the LwM2M Client supports the binding specified in this Resource, the LwM2M Client MUST use that transport for the Current Binding Mode.
  @BuiltValueField(wireName: r'binding')
  String? get binding;

  /// If true, the LwM2M Client stores “Notify” operations to the LwM2M Server while the LwM2M Server account is disabled or the LwM2M Client is offline. After the LwM2M Server account is enabled or the LwM2M Client is online, the LwM2M Client reports the stored “Notify” operations to the Server. If false, the LwM2M Client discards all the “Notify” operations or temporarily disables the Observe function while the LwM2M Server is disabled or the LwM2M Client is offline. The default value is true.
  @BuiltValueField(wireName: r'notifIfDisabled')
  bool? get notifIfDisabled;

  /// The default value the LwM2M Client should use for the Minimum Period of an Observation in the absence of this parameter being included in an Observation. If this Resource doesn’t exist, the default value is 0.
  @BuiltValueField(wireName: r'defaultMinPeriod')
  int? get defaultMinPeriod;

  /// Server short Id. Used as link to associate server Object Instance. This identifier uniquely identifies each LwM2M Server configured for the LwM2M Client. This Resource MUST be set when the Bootstrap-Server Resource has a value of 'false' and MUST be null when Bootstrap-Server is 'true'. The values 0 and 65535 MUST NOT be used for identifying the LwM2M Server.
  @BuiltValueField(wireName: r'shortServerId')
  int? get shortServerId;

  NoSecLwM2MBootstrapServerCredential._();

  factory NoSecLwM2MBootstrapServerCredential([void updates(NoSecLwM2MBootstrapServerCredentialBuilder b)]) = _$NoSecLwM2MBootstrapServerCredential;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NoSecLwM2MBootstrapServerCredentialBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NoSecLwM2MBootstrapServerCredential> get serializer => _$NoSecLwM2MBootstrapServerCredentialSerializer();
}

class _$NoSecLwM2MBootstrapServerCredentialSerializer implements PrimitiveSerializer<NoSecLwM2MBootstrapServerCredential> {
  @override
  final Iterable<Type> types = const [NoSecLwM2MBootstrapServerCredential, _$NoSecLwM2MBootstrapServerCredential];

  @override
  final String wireName = r'NoSecLwM2MBootstrapServerCredential';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NoSecLwM2MBootstrapServerCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.bootstrapServerAccountTimeout != null) {
      yield r'bootstrapServerAccountTimeout';
      yield serializers.serialize(
        object.bootstrapServerAccountTimeout,
        specifiedType: const FullType(int),
      );
    }
    if (object.lifetime != null) {
      yield r'lifetime';
      yield serializers.serialize(
        object.lifetime,
        specifiedType: const FullType(int),
      );
    }
    if (object.binding != null) {
      yield r'binding';
      yield serializers.serialize(
        object.binding,
        specifiedType: const FullType(String),
      );
    }
    if (object.notifIfDisabled != null) {
      yield r'notifIfDisabled';
      yield serializers.serialize(
        object.notifIfDisabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'securityMode';
    yield serializers.serialize(
      object.securityMode,
      specifiedType: const FullType(String),
    );
    if (object.shortServerId != null) {
      yield r'shortServerId';
      yield serializers.serialize(
        object.shortServerId,
        specifiedType: const FullType(int),
      );
    }
    if (object.clientHoldOffTime != null) {
      yield r'clientHoldOffTime';
      yield serializers.serialize(
        object.clientHoldOffTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType(int),
      );
    }
    if (object.serverCertificate != null) {
      yield r'serverCertificate';
      yield serializers.serialize(
        object.serverCertificate,
        specifiedType: const FullType(String),
      );
    }
    if (object.bootstrapServerIs != null) {
      yield r'bootstrapServerIs';
      yield serializers.serialize(
        object.bootstrapServerIs,
        specifiedType: const FullType(bool),
      );
    }
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.serverPublicKey != null) {
      yield r'serverPublicKey';
      yield serializers.serialize(
        object.serverPublicKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultMinPeriod != null) {
      yield r'defaultMinPeriod';
      yield serializers.serialize(
        object.defaultMinPeriod,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NoSecLwM2MBootstrapServerCredential object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NoSecLwM2MBootstrapServerCredentialBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'bootstrapServerAccountTimeout':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.bootstrapServerAccountTimeout = valueDes;
          break;
        case r'lifetime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lifetime = valueDes;
          break;
        case r'binding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.binding = valueDes;
          break;
        case r'notifIfDisabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.notifIfDisabled = valueDes;
          break;
        case r'securityMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.securityMode = valueDes;
          break;
        case r'shortServerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.shortServerId = valueDes;
          break;
        case r'clientHoldOffTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.clientHoldOffTime = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.port = valueDes;
          break;
        case r'serverCertificate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serverCertificate = valueDes;
          break;
        case r'bootstrapServerIs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.bootstrapServerIs = valueDes;
          break;
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.host = valueDes;
          break;
        case r'serverPublicKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serverPublicKey = valueDes;
          break;
        case r'defaultMinPeriod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.defaultMinPeriod = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NoSecLwM2MBootstrapServerCredential deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NoSecLwM2MBootstrapServerCredentialBuilder();
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


