// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_component_sub_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportComponentSubType _$doughnutChart = const ReportComponentSubType._(
  'doughnutChart',
);
const ReportComponentSubType _$horizontalDoughnutChart =
    const ReportComponentSubType._('horizontalDoughnutChart');
const ReportComponentSubType _$pointChart = const ReportComponentSubType._(
  'pointChart',
);
const ReportComponentSubType _$barChart = const ReportComponentSubType._(
  'barChart',
);
const ReportComponentSubType _$pieChart = const ReportComponentSubType._(
  'pieChart',
);
const ReportComponentSubType _$lineChart = const ReportComponentSubType._(
  'lineChart',
);
const ReportComponentSubType _$latestBarChart = const ReportComponentSubType._(
  'latestBarChart',
);
const ReportComponentSubType _$rangeChart = const ReportComponentSubType._(
  'rangeChart',
);
const ReportComponentSubType _$barChartWithLabels =
    const ReportComponentSubType._('barChartWithLabels');
const ReportComponentSubType _$stateChart = const ReportComponentSubType._(
  'stateChart',
);
const ReportComponentSubType _$default_ = const ReportComponentSubType._(
  'default_',
);
const ReportComponentSubType _$unknownDefaultOpenApi =
    const ReportComponentSubType._('unknownDefaultOpenApi');

ReportComponentSubType _$valueOf(String name) {
  switch (name) {
    case 'doughnutChart':
      return _$doughnutChart;
    case 'horizontalDoughnutChart':
      return _$horizontalDoughnutChart;
    case 'pointChart':
      return _$pointChart;
    case 'barChart':
      return _$barChart;
    case 'pieChart':
      return _$pieChart;
    case 'lineChart':
      return _$lineChart;
    case 'latestBarChart':
      return _$latestBarChart;
    case 'rangeChart':
      return _$rangeChart;
    case 'barChartWithLabels':
      return _$barChartWithLabels;
    case 'stateChart':
      return _$stateChart;
    case 'default_':
      return _$default_;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ReportComponentSubType> _$values =
    BuiltSet<ReportComponentSubType>(const <ReportComponentSubType>[
      _$doughnutChart,
      _$horizontalDoughnutChart,
      _$pointChart,
      _$barChart,
      _$pieChart,
      _$lineChart,
      _$latestBarChart,
      _$rangeChart,
      _$barChartWithLabels,
      _$stateChart,
      _$default_,
      _$unknownDefaultOpenApi,
    ]);

class _$ReportComponentSubTypeMeta {
  const _$ReportComponentSubTypeMeta();
  ReportComponentSubType get doughnutChart => _$doughnutChart;
  ReportComponentSubType get horizontalDoughnutChart =>
      _$horizontalDoughnutChart;
  ReportComponentSubType get pointChart => _$pointChart;
  ReportComponentSubType get barChart => _$barChart;
  ReportComponentSubType get pieChart => _$pieChart;
  ReportComponentSubType get lineChart => _$lineChart;
  ReportComponentSubType get latestBarChart => _$latestBarChart;
  ReportComponentSubType get rangeChart => _$rangeChart;
  ReportComponentSubType get barChartWithLabels => _$barChartWithLabels;
  ReportComponentSubType get stateChart => _$stateChart;
  ReportComponentSubType get default_ => _$default_;
  ReportComponentSubType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ReportComponentSubType valueOf(String name) => _$valueOf(name);
  BuiltSet<ReportComponentSubType> get values => _$values;
}

mixin _$ReportComponentSubTypeMixin {
  // ignore: non_constant_identifier_names
  _$ReportComponentSubTypeMeta get ReportComponentSubType =>
      const _$ReportComponentSubTypeMeta();
}

Serializer<ReportComponentSubType> _$reportComponentSubTypeSerializer =
    _$ReportComponentSubTypeSerializer();

class _$ReportComponentSubTypeSerializer
    implements PrimitiveSerializer<ReportComponentSubType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'doughnutChart': 'doughnutChart',
    'horizontalDoughnutChart': 'horizontalDoughnutChart',
    'pointChart': 'pointChart',
    'barChart': 'barChart',
    'pieChart': 'pieChart',
    'lineChart': 'lineChart',
    'latestBarChart': 'latestBarChart',
    'rangeChart': 'rangeChart',
    'barChartWithLabels': 'barChartWithLabels',
    'stateChart': 'stateChart',
    'default_': 'default',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'doughnutChart': 'doughnutChart',
    'horizontalDoughnutChart': 'horizontalDoughnutChart',
    'pointChart': 'pointChart',
    'barChart': 'barChart',
    'pieChart': 'pieChart',
    'lineChart': 'lineChart',
    'latestBarChart': 'latestBarChart',
    'rangeChart': 'rangeChart',
    'barChartWithLabels': 'barChartWithLabels',
    'stateChart': 'stateChart',
    'default': 'default_',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportComponentSubType];
  @override
  final String wireName = 'ReportComponentSubType';

  @override
  Object serialize(
    Serializers serializers,
    ReportComponentSubType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportComponentSubType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportComponentSubType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
