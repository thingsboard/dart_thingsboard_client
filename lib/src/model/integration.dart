// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/integration_id.dart';
import 'package:thingsboard_client/src/model/debug_settings.dart';
import 'package:thingsboard_client/src/model/integration_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/converter_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration.g.dart';

/// A JSON value representing the integration.
///
/// Properties:
/// * [id] - JSON object with the Integration Id. Specify this field to update the Integration. Referencing non-existing Integration Id will cause error. Omit this field to create new Integration.
/// * [createdTime] - Timestamp of the integration creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id
/// * [name] - Integration Name
/// * [type] - The type of the integration
/// * [debugMode] - Enable/disable debug.
/// * [debugSettings] - Debug settings object.
/// * [enabled] - Boolean flag to enable/disable the integration
/// * [remote] - Boolean flag to enable/disable the integration to be executed remotely. Remote integration is launched in a separate microservice. Local integration is executed by the platform core
/// * [allowCreateDevicesOrAssets] - Boolean flag to allow/disallow the integration to create devices or assets that send message and do not exist in the system yet
/// * [edgeTemplate] - Boolean flag that specifies that is regular or edge template integration
/// * [version]
/// * [defaultConverterId] - JSON object with the Uplink Converter Id
/// * [downlinkConverterId] - JSON object with the Downlink Converter Id
/// * [routingKey] - String value used by HTTP based integrations for the base URL construction and by the remote integrations. Remote integration uses this value along with the 'secret' for kind of security and validation to be able to connect to the platform using Grpc
/// * [secret] - String value used by the remote integrations. Remote integration uses this value along with the 'routingKey' for kind of security and validation to be able to connect to the platform using Grpc
/// * [configuration] - JSON object representing integration configuration. Each integration type has specific configuration with the connectivity parameters (like 'host' and 'port' for MQTT type or 'baseUrl' for HTTP based type, etc.) and other important parameters dependent on the integration type
/// * [additionalInfo] - Additional parameters of the integration
@BuiltValue()
abstract class Integration implements Built<Integration, IntegrationBuilder> {
  /// JSON object with the Integration Id. Specify this field to update the Integration. Referencing non-existing Integration Id will cause error. Omit this field to create new Integration.
  @BuiltValueField(wireName: r'id')
  IntegrationId? get id;

  /// Timestamp of the integration creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Integration Name
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The type of the integration
  @BuiltValueField(wireName: r'type')
  IntegrationType get type;
  // enum typeEnum {  OCEANCONNECT,  SIGFOX,  THINGPARK,  TPE,  CHIRPSTACK,  PARTICLE,  TMOBILE_IOT_CDP,  HTTP,  MQTT,  PUB_SUB,  AWS_IOT,  AWS_SQS,  AWS_KINESIS,  TTN,  TTI,  AZURE_EVENT_HUB,  OPC_UA,  CUSTOM,  UDP,  TCP,  KAFKA,  AZURE_IOT_HUB,  APACHE_PULSAR,  RABBITMQ,  LORIOT,  COAP,  TUYA,  AZURE_SERVICE_BUS,  KPN,  };

  /// Enable/disable debug.
  @Deprecated('debugMode has been deprecated')
  @BuiltValueField(wireName: r'debugMode')
  bool? get debugMode;

  /// Debug settings object.
  @BuiltValueField(wireName: r'debugSettings')
  DebugSettings? get debugSettings;

  /// Boolean flag to enable/disable the integration
  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  /// Boolean flag to enable/disable the integration to be executed remotely. Remote integration is launched in a separate microservice. Local integration is executed by the platform core
  @BuiltValueField(wireName: r'remote')
  bool? get remote;

  /// Boolean flag to allow/disallow the integration to create devices or assets that send message and do not exist in the system yet
  @BuiltValueField(wireName: r'allowCreateDevicesOrAssets')
  bool? get allowCreateDevicesOrAssets;

  /// Boolean flag that specifies that is regular or edge template integration
  @BuiltValueField(wireName: r'edgeTemplate')
  bool? get edgeTemplate;

  @BuiltValueField(wireName: r'version')
  int? get version;

  /// JSON object with the Uplink Converter Id
  @BuiltValueField(wireName: r'defaultConverterId')
  ConverterId get defaultConverterId;

  /// JSON object with the Downlink Converter Id
  @BuiltValueField(wireName: r'downlinkConverterId')
  ConverterId? get downlinkConverterId;

  /// String value used by HTTP based integrations for the base URL construction and by the remote integrations. Remote integration uses this value along with the 'secret' for kind of security and validation to be able to connect to the platform using Grpc
  @BuiltValueField(wireName: r'routingKey')
  String get routingKey;

  /// String value used by the remote integrations. Remote integration uses this value along with the 'routingKey' for kind of security and validation to be able to connect to the platform using Grpc
  @BuiltValueField(wireName: r'secret')
  String? get secret;

  /// JSON object representing integration configuration. Each integration type has specific configuration with the connectivity parameters (like 'host' and 'port' for MQTT type or 'baseUrl' for HTTP based type, etc.) and other important parameters dependent on the integration type
  @BuiltValueField(wireName: r'configuration')
  JsonObject? get configuration;

  /// Additional parameters of the integration
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  Integration._();

  factory Integration([void updates(IntegrationBuilder b)]) = _$Integration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Integration> get serializer => _$IntegrationSerializer();
}

class _$IntegrationSerializer implements PrimitiveSerializer<Integration> {
  @override
  final Iterable<Type> types = const [Integration, _$Integration];

  @override
  final String wireName = r'Integration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Integration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(IntegrationId),
      );
    }
    if (object.createdTime != null) {
      yield r'createdTime';
      yield serializers.serialize(
        object.createdTime,
        specifiedType: const FullType(int),
      );
    }
    if (object.tenantId != null) {
      yield r'tenantId';
      yield serializers.serialize(
        object.tenantId,
        specifiedType: const FullType(TenantId),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(IntegrationType),
    );
    if (object.debugMode != null) {
      yield r'debugMode';
      yield serializers.serialize(
        object.debugMode,
        specifiedType: const FullType(bool),
      );
    }
    if (object.debugSettings != null) {
      yield r'debugSettings';
      yield serializers.serialize(
        object.debugSettings,
        specifiedType: const FullType(DebugSettings),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.remote != null) {
      yield r'remote';
      yield serializers.serialize(
        object.remote,
        specifiedType: const FullType(bool),
      );
    }
    if (object.allowCreateDevicesOrAssets != null) {
      yield r'allowCreateDevicesOrAssets';
      yield serializers.serialize(
        object.allowCreateDevicesOrAssets,
        specifiedType: const FullType(bool),
      );
    }
    if (object.edgeTemplate != null) {
      yield r'edgeTemplate';
      yield serializers.serialize(
        object.edgeTemplate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
    yield r'defaultConverterId';
    yield serializers.serialize(
      object.defaultConverterId,
      specifiedType: const FullType(ConverterId),
    );
    if (object.downlinkConverterId != null) {
      yield r'downlinkConverterId';
      yield serializers.serialize(
        object.downlinkConverterId,
        specifiedType: const FullType(ConverterId),
      );
    }
    yield r'routingKey';
    yield serializers.serialize(
      object.routingKey,
      specifiedType: const FullType(String),
    );
    if (object.secret != null) {
      yield r'secret';
      yield serializers.serialize(
        object.secret,
        specifiedType: const FullType(String),
      );
    }
    yield r'configuration';
    yield object.configuration == null
        ? null
        : serializers.serialize(
            object.configuration,
            specifiedType: const FullType.nullable(JsonObject),
          );
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Integration object, {
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
    required IntegrationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(IntegrationId),
                  )
                  as IntegrationId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(TenantId),
                  )
                  as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'name':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(IntegrationType),
                  )
                  as IntegrationType;
          result.type = valueDes;
          break;
        case r'debugMode':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.debugMode = valueDes;
          break;
        case r'debugSettings':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(DebugSettings),
                  )
                  as DebugSettings?;
          if (valueDes == null) continue;
          result.debugSettings.replace(valueDes);
          break;
        case r'enabled':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'remote':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.remote = valueDes;
          break;
        case r'allowCreateDevicesOrAssets':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.allowCreateDevicesOrAssets = valueDes;
          break;
        case r'edgeTemplate':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(bool),
                  )
                  as bool?;
          if (valueDes == null) continue;
          result.edgeTemplate = valueDes;
          break;
        case r'version':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(int),
                  )
                  as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'defaultConverterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(ConverterId),
                  )
                  as ConverterId;
          result.defaultConverterId.replace(valueDes);
          break;
        case r'downlinkConverterId':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(ConverterId),
                  )
                  as ConverterId?;
          if (valueDes == null) continue;
          result.downlinkConverterId.replace(valueDes);
          break;
        case r'routingKey':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String;
          result.routingKey = valueDes;
          break;
        case r'secret':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(String),
                  )
                  as String?;
          if (valueDes == null) continue;
          result.secret = valueDes;
          break;
        case r'configuration':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'additionalInfo':
          final valueDes =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType.nullable(JsonObject),
                  )
                  as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Integration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationBuilder();
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
