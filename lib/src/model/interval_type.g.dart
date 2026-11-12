// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const IntervalType _$MILLISECONDS = const IntervalType._('MILLISECONDS');
const IntervalType _$WEEK = const IntervalType._('WEEK');
const IntervalType _$WEEK_ISO = const IntervalType._('WEEK_ISO');
const IntervalType _$MONTH = const IntervalType._('MONTH');
const IntervalType _$QUARTER = const IntervalType._('QUARTER');
const IntervalType _$unknownDefaultOpenApi = const IntervalType._(
  'unknownDefaultOpenApi',
);

IntervalType _$valueOf(String name) {
  switch (name) {
    case 'MILLISECONDS':
      return _$MILLISECONDS;
    case 'WEEK':
      return _$WEEK;
    case 'WEEK_ISO':
      return _$WEEK_ISO;
    case 'MONTH':
      return _$MONTH;
    case 'QUARTER':
      return _$QUARTER;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<IntervalType> _$values =
    BuiltSet<IntervalType>(const <IntervalType>[
      _$MILLISECONDS,
      _$WEEK,
      _$WEEK_ISO,
      _$MONTH,
      _$QUARTER,
      _$unknownDefaultOpenApi,
    ]);

class _$IntervalTypeMeta {
  const _$IntervalTypeMeta();
  IntervalType get MILLISECONDS => _$MILLISECONDS;
  IntervalType get WEEK => _$WEEK;
  IntervalType get WEEK_ISO => _$WEEK_ISO;
  IntervalType get MONTH => _$MONTH;
  IntervalType get QUARTER => _$QUARTER;
  IntervalType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  IntervalType valueOf(String name) => _$valueOf(name);
  BuiltSet<IntervalType> get values => _$values;
}

mixin _$IntervalTypeMixin {
  // ignore: non_constant_identifier_names
  _$IntervalTypeMeta get IntervalType => const _$IntervalTypeMeta();
}

Serializer<IntervalType> _$intervalTypeSerializer = _$IntervalTypeSerializer();

class _$IntervalTypeSerializer implements PrimitiveSerializer<IntervalType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MILLISECONDS': 'MILLISECONDS',
    'WEEK': 'WEEK',
    'WEEK_ISO': 'WEEK_ISO',
    'MONTH': 'MONTH',
    'QUARTER': 'QUARTER',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MILLISECONDS': 'MILLISECONDS',
    'WEEK': 'WEEK',
    'WEEK_ISO': 'WEEK_ISO',
    'MONTH': 'MONTH',
    'QUARTER': 'QUARTER',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[IntervalType];
  @override
  final String wireName = 'IntervalType';

  @override
  Object serialize(
    Serializers serializers,
    IntervalType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  IntervalType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => IntervalType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
