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

part 'chart_shape.g.dart';

class ChartShape extends EnumClass {
  @BuiltValueEnumConst(wireName: r'emptyCircle')
  static const ChartShape emptyCircle = _$emptyCircle;
  @BuiltValueEnumConst(wireName: r'circle')
  static const ChartShape circle = _$circle;
  @BuiltValueEnumConst(wireName: r'rect')
  static const ChartShape rect = _$rect;
  @BuiltValueEnumConst(wireName: r'roundRect')
  static const ChartShape roundRect = _$roundRect;
  @BuiltValueEnumConst(wireName: r'triangle')
  static const ChartShape triangle = _$triangle;
  @BuiltValueEnumConst(wireName: r'diamond')
  static const ChartShape diamond = _$diamond;
  @BuiltValueEnumConst(wireName: r'pin')
  static const ChartShape pin = _$pin;
  @BuiltValueEnumConst(wireName: r'arrow')
  static const ChartShape arrow = _$arrow;
  @BuiltValueEnumConst(wireName: r'none')
  static const ChartShape none = _$none;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ChartShape unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ChartShape> get serializer => _$chartShapeSerializer;

  const ChartShape._(String name) : super(name);

  static BuiltSet<ChartShape> get values => _$values;
  static ChartShape valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ChartShapeMixin = Object with _$ChartShapeMixin;
