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
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_info.g.dart';

/// IntegrationInfo
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
/// * [status] 
/// * [stats] 
@BuiltValue()
abstract class IntegrationInfo implements Built<IntegrationInfo, IntegrationInfoBuilder> {
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

  @BuiltValueField(wireName: r'status')
  JsonObject? get status;

  @BuiltValueField(wireName: r'stats')
  JsonObject? get stats;

  IntegrationInfo._();

  factory IntegrationInfo([void updates(IntegrationInfoBuilder b)]) = _$IntegrationInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IntegrationInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IntegrationInfo> get serializer => _$IntegrationInfoSerializer();
}

class _$IntegrationInfoSerializer implements PrimitiveSerializer<IntegrationInfo> {
  @override
  final Iterable<Type> types = const [IntegrationInfo, _$IntegrationInfo];

  @override
  final String wireName = r'IntegrationInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IntegrationInfo object, {
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
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.stats != null) {
      yield r'stats';
      yield serializers.serialize(
        object.stats,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IntegrationInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IntegrationInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IntegrationId),
          ) as IntegrationId?;
          if (valueDes == null) continue;
          result.id.replace(valueDes);
          break;
        case r'createdTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.createdTime = valueDes;
          break;
        case r'tenantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(TenantId),
          ) as TenantId?;
          if (valueDes == null) continue;
          result.tenantId.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IntegrationType),
          ) as IntegrationType;
          result.type = valueDes;
          break;
        case r'debugMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.debugMode = valueDes;
          break;
        case r'debugSettings':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DebugSettings),
          ) as DebugSettings?;
          if (valueDes == null) continue;
          result.debugSettings.replace(valueDes);
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.enabled = valueDes;
          break;
        case r'remote':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.remote = valueDes;
          break;
        case r'allowCreateDevicesOrAssets':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.allowCreateDevicesOrAssets = valueDes;
          break;
        case r'edgeTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.edgeTemplate = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'stats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.stats = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IntegrationInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IntegrationInfoBuilder();
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


