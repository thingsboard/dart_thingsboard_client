// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agg_function.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AggFunction _$MIN = const AggFunction._('MIN');
const AggFunction _$MAX = const AggFunction._('MAX');
const AggFunction _$SUM = const AggFunction._('SUM');
const AggFunction _$AVG = const AggFunction._('AVG');
const AggFunction _$COUNT = const AggFunction._('COUNT');
const AggFunction _$COUNT_UNIQUE = const AggFunction._('COUNT_UNIQUE');
const AggFunction _$unknownDefaultOpenApi = const AggFunction._(
  'unknownDefaultOpenApi',
);

AggFunction _$valueOf(String name) {
  switch (name) {
    case 'MIN':
      return _$MIN;
    case 'MAX':
      return _$MAX;
    case 'SUM':
      return _$SUM;
    case 'AVG':
      return _$AVG;
    case 'COUNT':
      return _$COUNT;
    case 'COUNT_UNIQUE':
      return _$COUNT_UNIQUE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AggFunction> _$values = BuiltSet<AggFunction>(
  const <AggFunction>[
    _$MIN,
    _$MAX,
    _$SUM,
    _$AVG,
    _$COUNT,
    _$COUNT_UNIQUE,
    _$unknownDefaultOpenApi,
  ],
);

class _$AggFunctionMeta {
  const _$AggFunctionMeta();
  AggFunction get MIN => _$MIN;
  AggFunction get MAX => _$MAX;
  AggFunction get SUM => _$SUM;
  AggFunction get AVG => _$AVG;
  AggFunction get COUNT => _$COUNT;
  AggFunction get COUNT_UNIQUE => _$COUNT_UNIQUE;
  AggFunction get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AggFunction valueOf(String name) => _$valueOf(name);
  BuiltSet<AggFunction> get values => _$values;
}

mixin _$AggFunctionMixin {
  // ignore: non_constant_identifier_names
  _$AggFunctionMeta get AggFunction => const _$AggFunctionMeta();
}

Serializer<AggFunction> _$aggFunctionSerializer = _$AggFunctionSerializer();

class _$AggFunctionSerializer implements PrimitiveSerializer<AggFunction> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MIN': 'MIN',
    'MAX': 'MAX',
    'SUM': 'SUM',
    'AVG': 'AVG',
    'COUNT': 'COUNT',
    'COUNT_UNIQUE': 'COUNT_UNIQUE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MIN': 'MIN',
    'MAX': 'MAX',
    'SUM': 'SUM',
    'AVG': 'AVG',
    'COUNT': 'COUNT',
    'COUNT_UNIQUE': 'COUNT_UNIQUE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AggFunction];
  @override
  final String wireName = 'AggFunction';

  @override
  Object serialize(
    Serializers serializers,
    AggFunction object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AggFunction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AggFunction.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
