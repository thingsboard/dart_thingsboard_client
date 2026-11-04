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

part 'time_series_chart_state_source_type.g.dart';

class TimeSeriesChartStateSourceType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'constant')
  static const TimeSeriesChartStateSourceType constant = _$constant;
  @BuiltValueEnumConst(wireName: r'range')
  static const TimeSeriesChartStateSourceType range = _$range;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TimeSeriesChartStateSourceType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TimeSeriesChartStateSourceType> get serializer => _$timeSeriesChartStateSourceTypeSerializer;

  const TimeSeriesChartStateSourceType._(String name): super(name);

  static BuiltSet<TimeSeriesChartStateSourceType> get values => _$values;
  static TimeSeriesChartStateSourceType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TimeSeriesChartStateSourceTypeMixin = Object with _$TimeSeriesChartStateSourceTypeMixin;

