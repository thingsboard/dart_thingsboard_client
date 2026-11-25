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

part 'snmp_protocol_version.g.dart';

class SnmpProtocolVersion extends EnumClass {
  @BuiltValueEnumConst(wireName: r'V1')
  static const SnmpProtocolVersion V1 = _$V1;
  @BuiltValueEnumConst(wireName: r'V2C')
  static const SnmpProtocolVersion V2C = _$V2C;
  @BuiltValueEnumConst(wireName: r'V3')
  static const SnmpProtocolVersion V3 = _$V3;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SnmpProtocolVersion unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<SnmpProtocolVersion> get serializer =>
      _$snmpProtocolVersionSerializer;

  const SnmpProtocolVersion._(String name) : super(name);

  static BuiltSet<SnmpProtocolVersion> get values => _$values;
  static SnmpProtocolVersion valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SnmpProtocolVersionMixin = Object
    with _$SnmpProtocolVersionMixin;
