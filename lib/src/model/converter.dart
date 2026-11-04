// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:thingsboard_client/src/model/converter_type.dart';
import 'package:thingsboard_client/src/model/debug_settings.dart';
import 'package:thingsboard_client/src/model/integration_type.dart';
import 'package:thingsboard_client/src/model/tenant_id.dart';
import 'package:thingsboard_client/src/model/converter_id.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'converter.g.dart';

/// Converter
///
/// Properties:
/// * [id] - JSON object with the Converter Id. Specify this field to update the Converter. Referencing non-existing Converter Id will cause error. Omit this field to create new Converter.
/// * [createdTime] - Timestamp of the converter creation, in milliseconds
/// * [tenantId] - JSON object with Tenant Id
/// * [name] - Unique Converter Name in scope of Tenant
/// * [type] - The type of the converter to process incoming or outgoing messages
/// * [integrationType] - The type of the integration to which the converter is dedicated
/// * [debugMode] - Enable/disable debug. 
/// * [debugSettings] - Debug settings object.
/// * [configuration] - JSON object representing converter configuration. It should contain one of two possible fields: 'decoder' or 'encoder'. The former is used when the converter has UPLINK type, the latter is used - when DOWNLINK type. It can contain both 'decoder' and 'encoder' fields, when the correct one is specified for the appropriate converter type, another one can be set to 'null'
/// * [additionalInfo] - Additional parameters of the converter
/// * [edgeTemplate] - Boolean flag that specifies that is regular or edge template converter
/// * [converterVersion] 
/// * [version] 
@BuiltValue()
abstract class Converter implements Built<Converter, ConverterBuilder> {
  /// JSON object with the Converter Id. Specify this field to update the Converter. Referencing non-existing Converter Id will cause error. Omit this field to create new Converter.
  @BuiltValueField(wireName: r'id')
  ConverterId? get id;

  /// Timestamp of the converter creation, in milliseconds
  @BuiltValueField(wireName: r'createdTime')
  int? get createdTime;

  /// JSON object with Tenant Id
  @BuiltValueField(wireName: r'tenantId')
  TenantId? get tenantId;

  /// Unique Converter Name in scope of Tenant
  @BuiltValueField(wireName: r'name')
  String get name;

  /// The type of the converter to process incoming or outgoing messages
  @BuiltValueField(wireName: r'type')
  ConverterType get type;
  // enum typeEnum {  UPLINK,  DOWNLINK,  };

  /// The type of the integration to which the converter is dedicated
  @BuiltValueField(wireName: r'integrationType')
  IntegrationType? get integrationType;
  // enum integrationTypeEnum {  OCEANCONNECT,  SIGFOX,  THINGPARK,  TPE,  CHIRPSTACK,  PARTICLE,  TMOBILE_IOT_CDP,  HTTP,  MQTT,  PUB_SUB,  AWS_IOT,  AWS_SQS,  AWS_KINESIS,  TTN,  TTI,  AZURE_EVENT_HUB,  OPC_UA,  CUSTOM,  UDP,  TCP,  KAFKA,  AZURE_IOT_HUB,  APACHE_PULSAR,  RABBITMQ,  LORIOT,  COAP,  TUYA,  AZURE_SERVICE_BUS,  KPN,  };

  /// Enable/disable debug. 
  @Deprecated('debugMode has been deprecated')
  @BuiltValueField(wireName: r'debugMode')
  bool? get debugMode;

  /// Debug settings object.
  @BuiltValueField(wireName: r'debugSettings')
  DebugSettings? get debugSettings;

  /// JSON object representing converter configuration. It should contain one of two possible fields: 'decoder' or 'encoder'. The former is used when the converter has UPLINK type, the latter is used - when DOWNLINK type. It can contain both 'decoder' and 'encoder' fields, when the correct one is specified for the appropriate converter type, another one can be set to 'null'
  @BuiltValueField(wireName: r'configuration')
  JsonObject? get configuration;

  /// Additional parameters of the converter
  @BuiltValueField(wireName: r'additionalInfo')
  JsonObject? get additionalInfo;

  /// Boolean flag that specifies that is regular or edge template converter
  @BuiltValueField(wireName: r'edgeTemplate')
  bool? get edgeTemplate;

  @BuiltValueField(wireName: r'converterVersion')
  int? get converterVersion;

  @BuiltValueField(wireName: r'version')
  int? get version;

  Converter._();

  factory Converter([void updates(ConverterBuilder b)]) = _$Converter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConverterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Converter> get serializer => _$ConverterSerializer();
}

class _$ConverterSerializer implements PrimitiveSerializer<Converter> {
  @override
  final Iterable<Type> types = const [Converter, _$Converter];

  @override
  final String wireName = r'Converter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Converter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(ConverterId),
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
      specifiedType: const FullType(ConverterType),
    );
    if (object.integrationType != null) {
      yield r'integrationType';
      yield serializers.serialize(
        object.integrationType,
        specifiedType: const FullType(IntegrationType),
      );
    }
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
    if (object.configuration != null) {
      yield r'configuration';
      yield serializers.serialize(
        object.configuration,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.additionalInfo != null) {
      yield r'additionalInfo';
      yield serializers.serialize(
        object.additionalInfo,
        specifiedType: const FullType.nullable(JsonObject),
      );
    }
    if (object.edgeTemplate != null) {
      yield r'edgeTemplate';
      yield serializers.serialize(
        object.edgeTemplate,
        specifiedType: const FullType(bool),
      );
    }
    if (object.converterVersion != null) {
      yield r'converterVersion';
      yield serializers.serialize(
        object.converterVersion,
        specifiedType: const FullType(int),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Converter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConverterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ConverterId),
          ) as ConverterId?;
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
            specifiedType: const FullType(ConverterType),
          ) as ConverterType;
          result.type = valueDes;
          break;
        case r'integrationType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(IntegrationType),
          ) as IntegrationType?;
          if (valueDes == null) continue;
          result.integrationType = valueDes;
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
        case r'configuration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.configuration = valueDes;
          break;
        case r'additionalInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(JsonObject),
          ) as JsonObject?;
          if (valueDes == null) continue;
          result.additionalInfo = valueDes;
          break;
        case r'edgeTemplate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.edgeTemplate = valueDes;
          break;
        case r'converterVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.converterVersion = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Converter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConverterBuilder();
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


