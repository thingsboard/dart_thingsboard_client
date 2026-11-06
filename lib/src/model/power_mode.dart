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

part 'power_mode.g.dart';

class PowerMode extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PSM')
  static const PowerMode PSM = _$PSM;
  @BuiltValueEnumConst(wireName: r'DRX')
  static const PowerMode DRX = _$DRX;
  @BuiltValueEnumConst(wireName: r'E_DRX')
  static const PowerMode E_DRX = _$E_DRX;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PowerMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PowerMode> get serializer => _$powerModeSerializer;

  const PowerMode._(String name) : super(name);

  static BuiltSet<PowerMode> get values => _$values;
  static PowerMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PowerModeMixin = Object with _$PowerModeMixin;
