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

part 'line_series_step_type.g.dart';

class LineSeriesStepType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'start')
  static const LineSeriesStepType start = _$start;
  @BuiltValueEnumConst(wireName: r'middle')
  static const LineSeriesStepType middle = _$middle;
  @BuiltValueEnumConst(wireName: r'end')
  static const LineSeriesStepType end = _$end;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LineSeriesStepType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<LineSeriesStepType> get serializer =>
      _$lineSeriesStepTypeSerializer;

  const LineSeriesStepType._(String name) : super(name);

  static BuiltSet<LineSeriesStepType> get values => _$values;
  static LineSeriesStepType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LineSeriesStepTypeMixin = Object with _$LineSeriesStepTypeMixin;
