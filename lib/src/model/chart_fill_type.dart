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

part 'chart_fill_type.g.dart';

class ChartFillType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'none')
  static const ChartFillType none = _$none;
  @BuiltValueEnumConst(wireName: r'opacity')
  static const ChartFillType opacity = _$opacity;
  @BuiltValueEnumConst(wireName: r'gradient')
  static const ChartFillType gradient = _$gradient;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChartFillType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ChartFillType> get serializer => _$chartFillTypeSerializer;

  const ChartFillType._(String name): super(name);

  static BuiltSet<ChartFillType> get values => _$values;
  static ChartFillType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ChartFillTypeMixin = Object with _$ChartFillTypeMixin;

