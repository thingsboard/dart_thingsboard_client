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

part 'report_component_sub_type.g.dart';

class ReportComponentSubType extends EnumClass {

  @BuiltValueEnumConst(wireName: r'doughnutChart')
  static const ReportComponentSubType doughnutChart = _$doughnutChart;
  @BuiltValueEnumConst(wireName: r'horizontalDoughnutChart')
  static const ReportComponentSubType horizontalDoughnutChart = _$horizontalDoughnutChart;
  @BuiltValueEnumConst(wireName: r'pointChart')
  static const ReportComponentSubType pointChart = _$pointChart;
  @BuiltValueEnumConst(wireName: r'barChart')
  static const ReportComponentSubType barChart = _$barChart;
  @BuiltValueEnumConst(wireName: r'pieChart')
  static const ReportComponentSubType pieChart = _$pieChart;
  @BuiltValueEnumConst(wireName: r'lineChart')
  static const ReportComponentSubType lineChart = _$lineChart;
  @BuiltValueEnumConst(wireName: r'latestBarChart')
  static const ReportComponentSubType latestBarChart = _$latestBarChart;
  @BuiltValueEnumConst(wireName: r'rangeChart')
  static const ReportComponentSubType rangeChart = _$rangeChart;
  @BuiltValueEnumConst(wireName: r'barChartWithLabels')
  static const ReportComponentSubType barChartWithLabels = _$barChartWithLabels;
  @BuiltValueEnumConst(wireName: r'stateChart')
  static const ReportComponentSubType stateChart = _$stateChart;
  @BuiltValueEnumConst(wireName: r'default')
  static const ReportComponentSubType default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReportComponentSubType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ReportComponentSubType> get serializer => _$reportComponentSubTypeSerializer;

  const ReportComponentSubType._(String name): super(name);

  static BuiltSet<ReportComponentSubType> get values => _$values;
  static ReportComponentSubType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ReportComponentSubTypeMixin = Object with _$ReportComponentSubTypeMixin;

