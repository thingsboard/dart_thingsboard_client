// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_series_chart_state_source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimeSeriesChartStateSourceType _$constant =
    const TimeSeriesChartStateSourceType._('constant');
const TimeSeriesChartStateSourceType _$range =
    const TimeSeriesChartStateSourceType._('range');
const TimeSeriesChartStateSourceType _$unknownDefaultOpenApi =
    const TimeSeriesChartStateSourceType._('unknownDefaultOpenApi');

TimeSeriesChartStateSourceType _$valueOf(String name) {
  switch (name) {
    case 'constant':
      return _$constant;
    case 'range':
      return _$range;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TimeSeriesChartStateSourceType> _$values =
    BuiltSet<TimeSeriesChartStateSourceType>(
      const <TimeSeriesChartStateSourceType>[
        _$constant,
        _$range,
        _$unknownDefaultOpenApi,
      ],
    );

class _$TimeSeriesChartStateSourceTypeMeta {
  const _$TimeSeriesChartStateSourceTypeMeta();
  TimeSeriesChartStateSourceType get constant => _$constant;
  TimeSeriesChartStateSourceType get range => _$range;
  TimeSeriesChartStateSourceType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  TimeSeriesChartStateSourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<TimeSeriesChartStateSourceType> get values => _$values;
}

mixin _$TimeSeriesChartStateSourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$TimeSeriesChartStateSourceTypeMeta get TimeSeriesChartStateSourceType =>
      const _$TimeSeriesChartStateSourceTypeMeta();
}

Serializer<TimeSeriesChartStateSourceType>
_$timeSeriesChartStateSourceTypeSerializer =
    _$TimeSeriesChartStateSourceTypeSerializer();

class _$TimeSeriesChartStateSourceTypeSerializer
    implements PrimitiveSerializer<TimeSeriesChartStateSourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'constant': 'constant',
    'range': 'range',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'constant': 'constant',
    'range': 'range',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TimeSeriesChartStateSourceType];
  @override
  final String wireName = 'TimeSeriesChartStateSourceType';

  @override
  Object serialize(
    Serializers serializers,
    TimeSeriesChartStateSourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TimeSeriesChartStateSourceType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TimeSeriesChartStateSourceType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
