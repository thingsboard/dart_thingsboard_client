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

part 'device_transport_type.g.dart';

class DeviceTransportType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'DEFAULT')
  static const DeviceTransportType DEFAULT = _$DEFAULT;
  @BuiltValueEnumConst(wireName: r'MQTT')
  static const DeviceTransportType MQTT = _$MQTT;
  @BuiltValueEnumConst(wireName: r'COAP')
  static const DeviceTransportType COAP = _$COAP;
  @BuiltValueEnumConst(wireName: r'LWM2M')
  static const DeviceTransportType LWM2M = _$LWM2M;
  @BuiltValueEnumConst(wireName: r'SNMP')
  static const DeviceTransportType SNMP = _$SNMP;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DeviceTransportType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<DeviceTransportType> get serializer => _$deviceTransportTypeSerializer;

  const DeviceTransportType._(String name): super(name);

  static BuiltSet<DeviceTransportType> get values => _$values;
  static DeviceTransportType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DeviceTransportTypeMixin = Object with _$DeviceTransportTypeMixin;

