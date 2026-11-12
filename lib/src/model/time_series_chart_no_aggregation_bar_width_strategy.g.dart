// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_no_aggregation_bar_width_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimeSeriesChartNoAggregationBarWidthStrategy _$group =
    const TimeSeriesChartNoAggregationBarWidthStrategy._('group');
const TimeSeriesChartNoAggregationBarWidthStrategy _$separate =
    const TimeSeriesChartNoAggregationBarWidthStrategy._('separate');
const TimeSeriesChartNoAggregationBarWidthStrategy _$unknownDefaultOpenApi =
    const TimeSeriesChartNoAggregationBarWidthStrategy._(
      'unknownDefaultOpenApi',
    );

TimeSeriesChartNoAggregationBarWidthStrategy _$valueOf(String name) {
  switch (name) {
    case 'group':
      return _$group;
    case 'separate':
      return _$separate;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TimeSeriesChartNoAggregationBarWidthStrategy> _$values =
    BuiltSet<TimeSeriesChartNoAggregationBarWidthStrategy>(
      const <TimeSeriesChartNoAggregationBarWidthStrategy>[
        _$group,
        _$separate,
        _$unknownDefaultOpenApi,
      ],
    );

class _$TimeSeriesChartNoAggregationBarWidthStrategyMeta {
  const _$TimeSeriesChartNoAggregationBarWidthStrategyMeta();
  TimeSeriesChartNoAggregationBarWidthStrategy get group => _$group;
  TimeSeriesChartNoAggregationBarWidthStrategy get separate => _$separate;
  TimeSeriesChartNoAggregationBarWidthStrategy get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  TimeSeriesChartNoAggregationBarWidthStrategy valueOf(String name) =>
      _$valueOf(name);
  BuiltSet<TimeSeriesChartNoAggregationBarWidthStrategy> get values => _$values;
}

mixin _$TimeSeriesChartNoAggregationBarWidthStrategyMixin {
  // ignore: non_constant_identifier_names
  _$TimeSeriesChartNoAggregationBarWidthStrategyMeta
  get TimeSeriesChartNoAggregationBarWidthStrategy =>
      const _$TimeSeriesChartNoAggregationBarWidthStrategyMeta();
}

Serializer<TimeSeriesChartNoAggregationBarWidthStrategy>
_$timeSeriesChartNoAggregationBarWidthStrategySerializer =
    _$TimeSeriesChartNoAggregationBarWidthStrategySerializer();

class _$TimeSeriesChartNoAggregationBarWidthStrategySerializer
    implements
        PrimitiveSerializer<TimeSeriesChartNoAggregationBarWidthStrategy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'group': 'group',
    'separate': 'separate',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'group': 'group',
    'separate': 'separate',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[
    TimeSeriesChartNoAggregationBarWidthStrategy,
  ];
  @override
  final String wireName = 'TimeSeriesChartNoAggregationBarWidthStrategy';

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartNoAggregationBarWidthStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TimeSeriesChartNoAggregationBarWidthStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TimeSeriesChartNoAggregationBarWidthStrategy.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
