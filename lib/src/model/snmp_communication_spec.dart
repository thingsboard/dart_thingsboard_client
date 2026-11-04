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

part 'snmp_communication_spec.g.dart';

class SnmpCommunicationSpec extends EnumClass {

  @BuiltValueEnumConst(wireName: r'TELEMETRY_QUERYING')
  static const SnmpCommunicationSpec TELEMETRY_QUERYING = _$TELEMETRY_QUERYING;
  @BuiltValueEnumConst(wireName: r'CLIENT_ATTRIBUTES_QUERYING')
  static const SnmpCommunicationSpec CLIENT_ATTRIBUTES_QUERYING = _$CLIENT_ATTRIBUTES_QUERYING;
  @BuiltValueEnumConst(wireName: r'SHARED_ATTRIBUTES_SETTING')
  static const SnmpCommunicationSpec SHARED_ATTRIBUTES_SETTING = _$SHARED_ATTRIBUTES_SETTING;
  @BuiltValueEnumConst(wireName: r'TO_DEVICE_RPC_REQUEST')
  static const SnmpCommunicationSpec TO_DEVICE_RPC_REQUEST = _$TO_DEVICE_RPC_REQUEST;
  @BuiltValueEnumConst(wireName: r'TO_SERVER_RPC_REQUEST')
  static const SnmpCommunicationSpec TO_SERVER_RPC_REQUEST = _$TO_SERVER_RPC_REQUEST;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SnmpCommunicationSpec unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SnmpCommunicationSpec> get serializer => _$snmpCommunicationSpecSerializer;

  const SnmpCommunicationSpec._(String name): super(name);

  static BuiltSet<SnmpCommunicationSpec> get values => _$values;
  static SnmpCommunicationSpec valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SnmpCommunicationSpecMixin = Object with _$SnmpCommunicationSpecMixin;

