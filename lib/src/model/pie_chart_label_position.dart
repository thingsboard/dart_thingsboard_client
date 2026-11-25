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

part 'pie_chart_label_position.g.dart';

class PieChartLabelPosition extends EnumClass {
  @BuiltValueEnumConst(wireName: r'inside')
  static const PieChartLabelPosition inside = _$inside;
  @BuiltValueEnumConst(wireName: r'outside')
  static const PieChartLabelPosition outside = _$outside;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PieChartLabelPosition unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<PieChartLabelPosition> get serializer =>
      _$pieChartLabelPositionSerializer;

  const PieChartLabelPosition._(String name) : super(name);

  static BuiltSet<PieChartLabelPosition> get values => _$values;
  static PieChartLabelPosition valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PieChartLabelPositionMixin = Object
    with _$PieChartLabelPositionMixin;
