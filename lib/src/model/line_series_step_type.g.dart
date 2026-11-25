// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_series_step_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LineSeriesStepType _$start = const LineSeriesStepType._('start');
const LineSeriesStepType _$middle = const LineSeriesStepType._('middle');
const LineSeriesStepType _$end = const LineSeriesStepType._('end');
const LineSeriesStepType _$unknownDefaultOpenApi = const LineSeriesStepType._(
  'unknownDefaultOpenApi',
);

LineSeriesStepType _$valueOf(String name) {
  switch (name) {
    case 'start':
      return _$start;
    case 'middle':
      return _$middle;
    case 'end':
      return _$end;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<LineSeriesStepType> _$values = BuiltSet<LineSeriesStepType>(
  const <LineSeriesStepType>[_$start, _$middle, _$end, _$unknownDefaultOpenApi],
);

class _$LineSeriesStepTypeMeta {
  const _$LineSeriesStepTypeMeta();
  LineSeriesStepType get start => _$start;
  LineSeriesStepType get middle => _$middle;
  LineSeriesStepType get end => _$end;
  LineSeriesStepType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  LineSeriesStepType valueOf(String name) => _$valueOf(name);
  BuiltSet<LineSeriesStepType> get values => _$values;
}

mixin _$LineSeriesStepTypeMixin {
  // ignore: non_constant_identifier_names
  _$LineSeriesStepTypeMeta get LineSeriesStepType =>
      const _$LineSeriesStepTypeMeta();
}

Serializer<LineSeriesStepType> _$lineSeriesStepTypeSerializer =
    _$LineSeriesStepTypeSerializer();

class _$LineSeriesStepTypeSerializer
    implements PrimitiveSerializer<LineSeriesStepType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'start': 'start',
    'middle': 'middle',
    'end': 'end',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'start': 'start',
    'middle': 'middle',
    'end': 'end',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[LineSeriesStepType];
  @override
  final String wireName = 'LineSeriesStepType';

  @override
  Object serialize(
    Serializers serializers,
    LineSeriesStepType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  LineSeriesStepType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => LineSeriesStepType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
