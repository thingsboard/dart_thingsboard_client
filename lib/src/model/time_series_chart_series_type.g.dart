// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_series_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimeSeriesChartSeriesType _$line = const TimeSeriesChartSeriesType._(
  'line',
);
const TimeSeriesChartSeriesType _$bar = const TimeSeriesChartSeriesType._(
  'bar',
);
const TimeSeriesChartSeriesType _$unknownDefaultOpenApi =
    const TimeSeriesChartSeriesType._('unknownDefaultOpenApi');

TimeSeriesChartSeriesType _$valueOf(String name) {
  switch (name) {
    case 'line':
      return _$line;
    case 'bar':
      return _$bar;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TimeSeriesChartSeriesType> _$values =
    BuiltSet<TimeSeriesChartSeriesType>(const <TimeSeriesChartSeriesType>[
      _$line,
      _$bar,
      _$unknownDefaultOpenApi,
    ]);

class _$TimeSeriesChartSeriesTypeMeta {
  const _$TimeSeriesChartSeriesTypeMeta();
  TimeSeriesChartSeriesType get line => _$line;
  TimeSeriesChartSeriesType get bar => _$bar;
  TimeSeriesChartSeriesType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  TimeSeriesChartSeriesType valueOf(String name) => _$valueOf(name);
  BuiltSet<TimeSeriesChartSeriesType> get values => _$values;
}

mixin _$TimeSeriesChartSeriesTypeMixin {
  // ignore: non_constant_identifier_names
  _$TimeSeriesChartSeriesTypeMeta get TimeSeriesChartSeriesType =>
      const _$TimeSeriesChartSeriesTypeMeta();
}

Serializer<TimeSeriesChartSeriesType> _$timeSeriesChartSeriesTypeSerializer =
    _$TimeSeriesChartSeriesTypeSerializer();

class _$TimeSeriesChartSeriesTypeSerializer
    implements PrimitiveSerializer<TimeSeriesChartSeriesType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'line': 'line',
    'bar': 'bar',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'line': 'line',
    'bar': 'bar',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TimeSeriesChartSeriesType];
  @override
  final String wireName = 'TimeSeriesChartSeriesType';

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartSeriesType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TimeSeriesChartSeriesType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TimeSeriesChartSeriesType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
