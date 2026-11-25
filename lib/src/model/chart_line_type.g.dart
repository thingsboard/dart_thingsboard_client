// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_line_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChartLineType _$solid = const ChartLineType._('solid');
const ChartLineType _$dashed = const ChartLineType._('dashed');
const ChartLineType _$dotted = const ChartLineType._('dotted');
const ChartLineType _$unknownDefaultOpenApi = const ChartLineType._(
  'unknownDefaultOpenApi',
);

ChartLineType _$valueOf(String name) {
  switch (name) {
    case 'solid':
      return _$solid;
    case 'dashed':
      return _$dashed;
    case 'dotted':
      return _$dotted;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ChartLineType> _$values = BuiltSet<ChartLineType>(
  const <ChartLineType>[_$solid, _$dashed, _$dotted, _$unknownDefaultOpenApi],
);

class _$ChartLineTypeMeta {
  const _$ChartLineTypeMeta();
  ChartLineType get solid => _$solid;
  ChartLineType get dashed => _$dashed;
  ChartLineType get dotted => _$dotted;
  ChartLineType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ChartLineType valueOf(String name) => _$valueOf(name);
  BuiltSet<ChartLineType> get values => _$values;
}

mixin _$ChartLineTypeMixin {
  // ignore: non_constant_identifier_names
  _$ChartLineTypeMeta get ChartLineType => const _$ChartLineTypeMeta();
}

Serializer<ChartLineType> _$chartLineTypeSerializer =
    _$ChartLineTypeSerializer();

class _$ChartLineTypeSerializer implements PrimitiveSerializer<ChartLineType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'solid': 'solid',
    'dashed': 'dashed',
    'dotted': 'dotted',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'solid': 'solid',
    'dashed': 'dashed',
    'dotted': 'dotted',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChartLineType];
  @override
  final String wireName = 'ChartLineType';

  @override
  Object serialize(
    Serializers serializers,
    ChartLineType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChartLineType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChartLineType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
