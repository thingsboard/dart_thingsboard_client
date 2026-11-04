// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lw_m2_m_server_security_config_default.g.dart';

/// LwM2MServerSecurityConfigDefault
///
/// Properties:
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
/// * [securityHost] - Host for 'Security' mode (DTLS)
/// * [securityPort] - Port for 'Security' mode (DTLS): Lwm2m Server or Bootstrap Server
@BuiltValue()
abstract class LwM2MServerSecurityConfigDefault implements Built<LwM2MServerSecurityConfigDefault, LwM2MServerSecurityConfigDefaultBuilder> {
  /// Server short Id. Used as link to associate server Object Instance. This identifier uniquely identifies each LwM2M Server configured for the LwM2M Client. This Resource MUST be set when the Bootstrap-Server Resource has a value of 'false' and MUST be null when Bootstrap-Server is 'true'. The values 0 and 65535 MUST NOT be used for identifying the LwM2M Server.
  @BuiltValueField(wireName: r'shortServerId')
  int? get shortServerId;

  /// Is Bootstrap Server or Lwm2m Server. The LwM2M Client MAY be configured to use one or more LwM2M Server Account(s). The LwM2M Client MUST have at most one LwM2M Bootstrap-Server Account. (*) The LwM2M client MUST have at least one LwM2M server account after completing the boot sequence specified.
  @BuiltValueField(wireName: r'bootstrapServerIs')
  bool? get bootstrapServerIs;

  /// Host for 'No Security' mode
  @BuiltValueField(wireName: r'host')
  String? get host;

  /// Port for  Lwm2m Server: 'No Security' mode: Lwm2m Server or Bootstrap Server
  @BuiltValueField(wireName: r'port')
  int? get port;

  /// Client Hold Off Time. The number of seconds to wait before initiating a Client Initiated Bootstrap once the LwM2M Client has determined it should initiate this bootstrap mode. (This information is relevant for use with a Bootstrap-Server only.)
  @BuiltValueField(wireName: r'clientHoldOffTime')
  int? get clientHoldOffTime;

  /// Server Public Key for 'Security' mode (DTLS): RPK or X509. Format: base64 encoded
  @BuiltValueField(wireName: r'serverPublicKey')
  String? get serverPublicKey;

  /// Server Public Key for 'Security' mode (DTLS): X509. Format: base64 encoded
  @BuiltValueField(wireName: r'serverCertificate')
  String? get serverCertificate;

  /// Bootstrap Server Account Timeout (If the value is set to 0, or if this resource is not instantiated, the Bootstrap-Server Account lifetime is infinite.)
  @BuiltValueField(wireName: r'bootstrapServerAccountTimeout')
  int? get bootstrapServerAccountTimeout;

  /// Specify the lifetime of the registration in seconds.
  @BuiltValueField(wireName: r'lifetime')
  int? get lifetime;

  /// The default value the LwM2M Client should use for the Minimum Period of an Observation in the absence of this parameter being included in an Observation. If this Resource doesn’t exist, the default value is 0.
  @BuiltValueField(wireName: r'defaultMinPeriod')
  int? get defaultMinPeriod;

  /// If true, the LwM2M Client stores “Notify” operations to the LwM2M Server while the LwM2M Server account is disabled or the LwM2M Client is offline. After the LwM2M Server account is enabled or the LwM2M Client is online, the LwM2M Client reports the stored “Notify” operations to the Server. If false, the LwM2M Client discards all the “Notify” operations or temporarily disables the Observe function while the LwM2M Server is disabled or the LwM2M Client is offline. The default value is true.
  @BuiltValueField(wireName: r'notifIfDisabled')
  bool? get notifIfDisabled;

  /// This Resource defines the transport binding configured for the LwM2M Client. If the LwM2M Client supports the binding specified in this Resource, the LwM2M Client MUST use that transport for the Current Binding Mode.
  @BuiltValueField(wireName: r'binding')
  String? get binding;

  /// Host for 'Security' mode (DTLS)
  @BuiltValueField(wireName: r'securityHost')
  String? get securityHost;

  /// Port for 'Security' mode (DTLS): Lwm2m Server or Bootstrap Server
  @BuiltValueField(wireName: r'securityPort')
  int? get securityPort;

  LwM2MServerSecurityConfigDefault._();

  factory LwM2MServerSecurityConfigDefault([void updates(LwM2MServerSecurityConfigDefaultBuilder b)]) = _$LwM2MServerSecurityConfigDefault;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LwM2MServerSecurityConfigDefaultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LwM2MServerSecurityConfigDefault> get serializer => _$LwM2MServerSecurityConfigDefaultSerializer();
}

class _$LwM2MServerSecurityConfigDefaultSerializer implements PrimitiveSerializer<LwM2MServerSecurityConfigDefault> {
  @override
  final Iterable<Type> types = const [LwM2MServerSecurityConfigDefault, _$LwM2MServerSecurityConfigDefault];

  @override
  final String wireName = r'LwM2MServerSecurityConfigDefault';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LwM2MServerSecurityConfigDefault object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.shortServerId != null) {
      yield r'shortServerId';
      yield serializers.serialize(
        object.shortServerId,
        specifiedType: const FullType(int),
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
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
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
    if (object.serverPublicKey != null) {
      yield r'serverPublicKey';
      yield serializers.serialize(
        object.serverPublicKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.serverCertificate != null) {
      yield r'serverCertificate';
      yield serializers.serialize(
        object.serverCertificate,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.defaultMinPeriod != null) {
      yield r'defaultMinPeriod';
      yield serializers.serialize(
        object.defaultMinPeriod,
        specifiedType: const FullType(int),
      );
    }
    if (object.notifIfDisabled != null) {
      yield r'notifIfDisabled';
      yield serializers.serialize(
        object.notifIfDisabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.binding != null) {
      yield r'binding';
      yield serializers.serialize(
        object.binding,
        specifiedType: const FullType(String),
      );
    }
    if (object.securityHost != null) {
      yield r'securityHost';
      yield serializers.serialize(
        object.securityHost,
        specifiedType: const FullType(String),
      );
    }
    if (object.securityPort != null) {
      yield r'securityPort';
      yield serializers.serialize(
        object.securityPort,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LwM2MServerSecurityConfigDefault object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LwM2MServerSecurityConfigDefaultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shortServerId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.shortServerId = valueDes;
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
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.port = valueDes;
          break;
        case r'clientHoldOffTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.clientHoldOffTime = valueDes;
          break;
        case r'serverPublicKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serverPublicKey = valueDes;
          break;
        case r'serverCertificate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.serverCertificate = valueDes;
          break;
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
        case r'defaultMinPeriod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.defaultMinPeriod = valueDes;
          break;
        case r'notifIfDisabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.notifIfDisabled = valueDes;
          break;
        case r'binding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.binding = valueDes;
          break;
        case r'securityHost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.securityHost = valueDes;
          break;
        case r'securityPort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.securityPort = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LwM2MServerSecurityConfigDefault deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LwM2MServerSecurityConfigDefaultBuilder();
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


