// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pie_chart_label_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PieChartLabelPosition _$inside = const PieChartLabelPosition._('inside');
const PieChartLabelPosition _$outside = const PieChartLabelPosition._(
  'outside',
);
const PieChartLabelPosition _$unknownDefaultOpenApi =
    const PieChartLabelPosition._('unknownDefaultOpenApi');

PieChartLabelPosition _$valueOf(String name) {
  switch (name) {
    case 'inside':
      return _$inside;
    case 'outside':
      return _$outside;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PieChartLabelPosition> _$values =
    BuiltSet<PieChartLabelPosition>(const <PieChartLabelPosition>[
      _$inside,
      _$outside,
      _$unknownDefaultOpenApi,
    ]);

class _$PieChartLabelPositionMeta {
  const _$PieChartLabelPositionMeta();
  PieChartLabelPosition get inside => _$inside;
  PieChartLabelPosition get outside => _$outside;
  PieChartLabelPosition get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PieChartLabelPosition valueOf(String name) => _$valueOf(name);
  BuiltSet<PieChartLabelPosition> get values => _$values;
}

mixin _$PieChartLabelPositionMixin {
  // ignore: non_constant_identifier_names
  _$PieChartLabelPositionMeta get PieChartLabelPosition =>
      const _$PieChartLabelPositionMeta();
}

Serializer<PieChartLabelPosition> _$pieChartLabelPositionSerializer =
    _$PieChartLabelPositionSerializer();

class _$PieChartLabelPositionSerializer
    implements PrimitiveSerializer<PieChartLabelPosition> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'inside': 'inside',
    'outside': 'outside',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'inside': 'inside',
    'outside': 'outside',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PieChartLabelPosition];
  @override
  final String wireName = 'PieChartLabelPosition';

  @override
  Object serialize(
    Serializers serializers,
    PieChartLabelPosition object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PieChartLabelPosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PieChartLabelPosition.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
