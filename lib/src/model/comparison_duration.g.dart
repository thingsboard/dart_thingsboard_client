// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comparison_duration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ComparisonDuration _$previousInterval = const ComparisonDuration._(
  'previousInterval',
);
const ComparisonDuration _$days = const ComparisonDuration._('days');
const ComparisonDuration _$weeks = const ComparisonDuration._('weeks');
const ComparisonDuration _$months = const ComparisonDuration._('months');
const ComparisonDuration _$years = const ComparisonDuration._('years');
const ComparisonDuration _$customInterval = const ComparisonDuration._(
  'customInterval',
);
const ComparisonDuration _$unknownDefaultOpenApi = const ComparisonDuration._(
  'unknownDefaultOpenApi',
);

ComparisonDuration _$valueOf(String name) {
  switch (name) {
    case 'previousInterval':
      return _$previousInterval;
    case 'days':
      return _$days;
    case 'weeks':
      return _$weeks;
    case 'months':
      return _$months;
    case 'years':
      return _$years;
    case 'customInterval':
      return _$customInterval;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ComparisonDuration> _$values =
    BuiltSet<ComparisonDuration>(const <ComparisonDuration>[
      _$previousInterval,
      _$days,
      _$weeks,
      _$months,
      _$years,
      _$customInterval,
      _$unknownDefaultOpenApi,
    ]);

class _$ComparisonDurationMeta {
  const _$ComparisonDurationMeta();
  ComparisonDuration get previousInterval => _$previousInterval;
  ComparisonDuration get days => _$days;
  ComparisonDuration get weeks => _$weeks;
  ComparisonDuration get months => _$months;
  ComparisonDuration get years => _$years;
  ComparisonDuration get customInterval => _$customInterval;
  ComparisonDuration get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ComparisonDuration valueOf(String name) => _$valueOf(name);
  BuiltSet<ComparisonDuration> get values => _$values;
}

mixin _$ComparisonDurationMixin {
  // ignore: non_constant_identifier_names
  _$ComparisonDurationMeta get ComparisonDuration =>
      const _$ComparisonDurationMeta();
}

Serializer<ComparisonDuration> _$comparisonDurationSerializer =
    _$ComparisonDurationSerializer();

class _$ComparisonDurationSerializer
    implements PrimitiveSerializer<ComparisonDuration> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'previousInterval': 'previousInterval',
    'days': 'days',
    'weeks': 'weeks',
    'months': 'months',
    'years': 'years',
    'customInterval': 'customInterval',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'previousInterval': 'previousInterval',
    'days': 'days',
    'weeks': 'weeks',
    'months': 'months',
    'years': 'years',
    'customInterval': 'customInterval',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ComparisonDuration];
  @override
  final String wireName = 'ComparisonDuration';

  @override
  Object serialize(
    Serializers serializers,
    ComparisonDuration object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ComparisonDuration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ComparisonDuration.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
