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

part 'threshold_label_position.g.dart';

class ThresholdLabelPosition extends EnumClass {
  @BuiltValueEnumConst(wireName: r'start')
  static const ThresholdLabelPosition start = _$start;
  @BuiltValueEnumConst(wireName: r'middle')
  static const ThresholdLabelPosition middle = _$middle;
  @BuiltValueEnumConst(wireName: r'end')
  static const ThresholdLabelPosition end = _$end;
  @BuiltValueEnumConst(wireName: r'insideStart')
  static const ThresholdLabelPosition insideStart = _$insideStart;
  @BuiltValueEnumConst(wireName: r'insideStartTop')
  static const ThresholdLabelPosition insideStartTop = _$insideStartTop;
  @BuiltValueEnumConst(wireName: r'insideStartBottom')
  static const ThresholdLabelPosition insideStartBottom = _$insideStartBottom;
  @BuiltValueEnumConst(wireName: r'insideMiddle')
  static const ThresholdLabelPosition insideMiddle = _$insideMiddle;
  @BuiltValueEnumConst(wireName: r'insideMiddleTop')
  static const ThresholdLabelPosition insideMiddleTop = _$insideMiddleTop;
  @BuiltValueEnumConst(wireName: r'insideMiddleBottom')
  static const ThresholdLabelPosition insideMiddleBottom = _$insideMiddleBottom;
  @BuiltValueEnumConst(wireName: r'insideEnd')
  static const ThresholdLabelPosition insideEnd = _$insideEnd;
  @BuiltValueEnumConst(wireName: r'insideEndTop')
  static const ThresholdLabelPosition insideEndTop = _$insideEndTop;
  @BuiltValueEnumConst(wireName: r'insideEndBottom')
  static const ThresholdLabelPosition insideEndBottom = _$insideEndBottom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ThresholdLabelPosition unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<ThresholdLabelPosition> get serializer =>
      _$thresholdLabelPositionSerializer;

  const ThresholdLabelPosition._(String name) : super(name);

  static BuiltSet<ThresholdLabelPosition> get values => _$values;
  static ThresholdLabelPosition valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ThresholdLabelPositionMixin = Object
    with _$ThresholdLabelPositionMixin;
