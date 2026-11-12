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

part 'thingsboard_error_code.g.dart';

/// Platform error code
class ThingsboardErrorCode extends EnumClass {
  @BuiltValueEnumConst(wireNumber: 2)
  static const ThingsboardErrorCode number2 = _$number2;
  @BuiltValueEnumConst(wireNumber: 10)
  static const ThingsboardErrorCode number10 = _$number10;
  @BuiltValueEnumConst(wireNumber: 11)
  static const ThingsboardErrorCode number11 = _$number11;
  @BuiltValueEnumConst(wireNumber: 15)
  static const ThingsboardErrorCode number15 = _$number15;
  @BuiltValueEnumConst(wireNumber: 20)
  static const ThingsboardErrorCode number20 = _$number20;
  @BuiltValueEnumConst(wireNumber: 30)
  static const ThingsboardErrorCode number30 = _$number30;
  @BuiltValueEnumConst(wireNumber: 31)
  static const ThingsboardErrorCode number31 = _$number31;
  @BuiltValueEnumConst(wireNumber: 32)
  static const ThingsboardErrorCode number32 = _$number32;
  @BuiltValueEnumConst(wireNumber: 33)
  static const ThingsboardErrorCode number33 = _$number33;
  @BuiltValueEnumConst(wireNumber: 34)
  static const ThingsboardErrorCode number34 = _$number34;
  @BuiltValueEnumConst(wireNumber: 35)
  static const ThingsboardErrorCode number35 = _$number35;
  @BuiltValueEnumConst(wireNumber: 40)
  static const ThingsboardErrorCode number40 = _$number40;
  @BuiltValueEnumConst(wireNumber: 41)
  static const ThingsboardErrorCode number41 = _$number41;
  @BuiltValueEnumConst(wireNumber: 45)
  static const ThingsboardErrorCode number45 = _$number45;
  @BuiltValueEnumConst(wireNumber: 46)
  static const ThingsboardErrorCode number46 = _$number46;
  @BuiltValueEnumConst(wireNumber: 47)
  static const ThingsboardErrorCode number47 = _$number47;
  @BuiltValueEnumConst(wireNumber: 11184809, fallback: true)
  static const ThingsboardErrorCode unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<ThingsboardErrorCode> get serializer =>
      _$thingsboardErrorCodeSerializer;

  const ThingsboardErrorCode._(String name) : super(name);

  static BuiltSet<ThingsboardErrorCode> get values => _$values;
  static ThingsboardErrorCode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ThingsboardErrorCodeMixin = Object
    with _$ThingsboardErrorCodeMixin;
