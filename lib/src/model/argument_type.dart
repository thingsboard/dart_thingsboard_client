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

part 'argument_type.g.dart';

class ArgumentType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'TS_LATEST')
  static const ArgumentType TS_LATEST = _$TS_LATEST;
  @BuiltValueEnumConst(wireName: r'ATTRIBUTE')
  static const ArgumentType ATTRIBUTE = _$ATTRIBUTE;
  @BuiltValueEnumConst(wireName: r'TS_ROLLING')
  static const ArgumentType TS_ROLLING = _$TS_ROLLING;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ArgumentType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ArgumentType> get serializer => _$argumentTypeSerializer;

  const ArgumentType._(String name): super(name);

  static BuiltSet<ArgumentType> get values => _$values;
  static ArgumentType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ArgumentTypeMixin = Object with _$ArgumentTypeMixin;

