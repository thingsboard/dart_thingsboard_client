// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration_type.g.dart';

class IntegrationType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'OCEANCONNECT')
  static const IntegrationType OCEANCONNECT = _$OCEANCONNECT;
  @BuiltValueEnumConst(wireName: r'SIGFOX')
  static const IntegrationType SIGFOX = _$SIGFOX;
  @BuiltValueEnumConst(wireName: r'THINGPARK')
  static const IntegrationType THINGPARK = _$THINGPARK;
  @BuiltValueEnumConst(wireName: r'TPE')
  static const IntegrationType TPE = _$TPE;
  @BuiltValueEnumConst(wireName: r'CHIRPSTACK')
  static const IntegrationType CHIRPSTACK = _$CHIRPSTACK;
  @BuiltValueEnumConst(wireName: r'PARTICLE')
  static const IntegrationType PARTICLE = _$PARTICLE;
  @BuiltValueEnumConst(wireName: r'TMOBILE_IOT_CDP')
  static const IntegrationType TMOBILE_IOT_CDP = _$TMOBILE_IOT_CDP;
  @BuiltValueEnumConst(wireName: r'HTTP')
  static const IntegrationType HTTP = _$HTTP;
  @BuiltValueEnumConst(wireName: r'MQTT')
  static const IntegrationType MQTT = _$MQTT;
  @BuiltValueEnumConst(wireName: r'PUB_SUB')
  static const IntegrationType PUB_SUB = _$PUB_SUB;
  @BuiltValueEnumConst(wireName: r'AWS_IOT')
  static const IntegrationType AWS_IOT = _$AWS_IOT;
  @BuiltValueEnumConst(wireName: r'AWS_SQS')
  static const IntegrationType AWS_SQS = _$AWS_SQS;
  @BuiltValueEnumConst(wireName: r'AWS_KINESIS')
  static const IntegrationType AWS_KINESIS = _$AWS_KINESIS;
  @BuiltValueEnumConst(wireName: r'TTN')
  static const IntegrationType TTN = _$TTN;
  @BuiltValueEnumConst(wireName: r'TTI')
  static const IntegrationType TTI = _$TTI;
  @BuiltValueEnumConst(wireName: r'AZURE_EVENT_HUB')
  static const IntegrationType AZURE_EVENT_HUB = _$AZURE_EVENT_HUB;
  @BuiltValueEnumConst(wireName: r'OPC_UA')
  static const IntegrationType OPC_UA = _$OPC_UA;
  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const IntegrationType CUSTOM = _$CUSTOM;
  @BuiltValueEnumConst(wireName: r'UDP')
  static const IntegrationType UDP = _$UDP;
  @BuiltValueEnumConst(wireName: r'TCP')
  static const IntegrationType TCP = _$TCP;
  @BuiltValueEnumConst(wireName: r'KAFKA')
  static const IntegrationType KAFKA = _$KAFKA;
  @BuiltValueEnumConst(wireName: r'AZURE_IOT_HUB')
  static const IntegrationType AZURE_IOT_HUB = _$AZURE_IOT_HUB;
  @BuiltValueEnumConst(wireName: r'APACHE_PULSAR')
  static const IntegrationType APACHE_PULSAR = _$APACHE_PULSAR;
  @BuiltValueEnumConst(wireName: r'RABBITMQ')
  static const IntegrationType RABBITMQ = _$RABBITMQ;
  @BuiltValueEnumConst(wireName: r'LORIOT')
  static const IntegrationType LORIOT = _$LORIOT;
  @BuiltValueEnumConst(wireName: r'COAP')
  static const IntegrationType COAP = _$COAP;
  @BuiltValueEnumConst(wireName: r'TUYA')
  static const IntegrationType TUYA = _$TUYA;
  @BuiltValueEnumConst(wireName: r'AZURE_SERVICE_BUS')
  static const IntegrationType AZURE_SERVICE_BUS = _$AZURE_SERVICE_BUS;
  @BuiltValueEnumConst(wireName: r'KPN')
  static const IntegrationType KPN = _$KPN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const IntegrationType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<IntegrationType> get serializer => _$integrationTypeSerializer;

  const IntegrationType._(String name): super(name);

  static BuiltSet<IntegrationType> get values => _$values;
  static IntegrationType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class IntegrationTypeMixin = Object with _$IntegrationTypeMixin;

