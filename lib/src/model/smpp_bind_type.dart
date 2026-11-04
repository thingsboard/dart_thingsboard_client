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

part 'smpp_bind_type.g.dart';

class SmppBindType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'TX')
  static const SmppBindType TX = _$TX;
  @BuiltValueEnumConst(wireName: r'RX')
  static const SmppBindType RX = _$RX;
  @BuiltValueEnumConst(wireName: r'TRX')
  static const SmppBindType TRX = _$TRX;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SmppBindType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SmppBindType> get serializer => _$smppBindTypeSerializer;

  const SmppBindType._(String name): super(name);

  static BuiltSet<SmppBindType> get values => _$values;
  static SmppBindType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SmppBindTypeMixin = Object with _$SmppBindTypeMixin;

