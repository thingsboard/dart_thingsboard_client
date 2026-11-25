// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aggregation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Aggregation _$MIN = const Aggregation._('MIN');
const Aggregation _$MAX = const Aggregation._('MAX');
const Aggregation _$AVG = const Aggregation._('AVG');
const Aggregation _$SUM = const Aggregation._('SUM');
const Aggregation _$COUNT = const Aggregation._('COUNT');
const Aggregation _$NONE = const Aggregation._('NONE');
const Aggregation _$unknownDefaultOpenApi = const Aggregation._(
  'unknownDefaultOpenApi',
);

Aggregation _$valueOf(String name) {
  switch (name) {
    case 'MIN':
      return _$MIN;
    case 'MAX':
      return _$MAX;
    case 'AVG':
      return _$AVG;
    case 'SUM':
      return _$SUM;
    case 'COUNT':
      return _$COUNT;
    case 'NONE':
      return _$NONE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<Aggregation> _$values = BuiltSet<Aggregation>(
  const <Aggregation>[
    _$MIN,
    _$MAX,
    _$AVG,
    _$SUM,
    _$COUNT,
    _$NONE,
    _$unknownDefaultOpenApi,
  ],
);

class _$AggregationMeta {
  const _$AggregationMeta();
  Aggregation get MIN => _$MIN;
  Aggregation get MAX => _$MAX;
  Aggregation get AVG => _$AVG;
  Aggregation get SUM => _$SUM;
  Aggregation get COUNT => _$COUNT;
  Aggregation get NONE => _$NONE;
  Aggregation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  Aggregation valueOf(String name) => _$valueOf(name);
  BuiltSet<Aggregation> get values => _$values;
}

mixin _$AggregationMixin {
  // ignore: non_constant_identifier_names
  _$AggregationMeta get Aggregation => const _$AggregationMeta();
}

Serializer<Aggregation> _$aggregationSerializer = _$AggregationSerializer();

class _$AggregationSerializer implements PrimitiveSerializer<Aggregation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MIN': 'MIN',
    'MAX': 'MAX',
    'AVG': 'AVG',
    'SUM': 'SUM',
    'COUNT': 'COUNT',
    'NONE': 'NONE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MIN': 'MIN',
    'MAX': 'MAX',
    'AVG': 'AVG',
    'SUM': 'SUM',
    'COUNT': 'COUNT',
    'NONE': 'NONE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[Aggregation];
  @override
  final String wireName = 'Aggregation';

  @override
  Object serialize(
    Serializers serializers,
    Aggregation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  Aggregation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => Aggregation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
