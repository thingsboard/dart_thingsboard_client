// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_label_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChartLabelPosition _$top = const ChartLabelPosition._('top');
const ChartLabelPosition _$bottom = const ChartLabelPosition._('bottom');
const ChartLabelPosition _$unknownDefaultOpenApi = const ChartLabelPosition._(
  'unknownDefaultOpenApi',
);

ChartLabelPosition _$valueOf(String name) {
  switch (name) {
    case 'top':
      return _$top;
    case 'bottom':
      return _$bottom;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ChartLabelPosition> _$values = BuiltSet<ChartLabelPosition>(
  const <ChartLabelPosition>[_$top, _$bottom, _$unknownDefaultOpenApi],
);

class _$ChartLabelPositionMeta {
  const _$ChartLabelPositionMeta();
  ChartLabelPosition get top => _$top;
  ChartLabelPosition get bottom => _$bottom;
  ChartLabelPosition get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ChartLabelPosition valueOf(String name) => _$valueOf(name);
  BuiltSet<ChartLabelPosition> get values => _$values;
}

mixin _$ChartLabelPositionMixin {
  // ignore: non_constant_identifier_names
  _$ChartLabelPositionMeta get ChartLabelPosition =>
      const _$ChartLabelPositionMeta();
}

Serializer<ChartLabelPosition> _$chartLabelPositionSerializer =
    _$ChartLabelPositionSerializer();

class _$ChartLabelPositionSerializer
    implements PrimitiveSerializer<ChartLabelPosition> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'top': 'top',
    'bottom': 'bottom',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'top': 'top',
    'bottom': 'bottom',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChartLabelPosition];
  @override
  final String wireName = 'ChartLabelPosition';

  @override
  Object serialize(
    Serializers serializers,
    ChartLabelPosition object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChartLabelPosition deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChartLabelPosition.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
