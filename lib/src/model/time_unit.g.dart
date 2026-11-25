// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TimeUnit _$NANOSECONDS = const TimeUnit._('NANOSECONDS');
const TimeUnit _$MICROSECONDS = const TimeUnit._('MICROSECONDS');
const TimeUnit _$MILLISECONDS = const TimeUnit._('MILLISECONDS');
const TimeUnit _$SECONDS = const TimeUnit._('SECONDS');
const TimeUnit _$MINUTES = const TimeUnit._('MINUTES');
const TimeUnit _$HOURS = const TimeUnit._('HOURS');
const TimeUnit _$DAYS = const TimeUnit._('DAYS');
const TimeUnit _$unknownDefaultOpenApi = const TimeUnit._(
  'unknownDefaultOpenApi',
);

TimeUnit _$valueOf(String name) {
  switch (name) {
    case 'NANOSECONDS':
      return _$NANOSECONDS;
    case 'MICROSECONDS':
      return _$MICROSECONDS;
    case 'MILLISECONDS':
      return _$MILLISECONDS;
    case 'SECONDS':
      return _$SECONDS;
    case 'MINUTES':
      return _$MINUTES;
    case 'HOURS':
      return _$HOURS;
    case 'DAYS':
      return _$DAYS;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TimeUnit> _$values = BuiltSet<TimeUnit>(const <TimeUnit>[
  _$NANOSECONDS,
  _$MICROSECONDS,
  _$MILLISECONDS,
  _$SECONDS,
  _$MINUTES,
  _$HOURS,
  _$DAYS,
  _$unknownDefaultOpenApi,
]);

class _$TimeUnitMeta {
  const _$TimeUnitMeta();
  TimeUnit get NANOSECONDS => _$NANOSECONDS;
  TimeUnit get MICROSECONDS => _$MICROSECONDS;
  TimeUnit get MILLISECONDS => _$MILLISECONDS;
  TimeUnit get SECONDS => _$SECONDS;
  TimeUnit get MINUTES => _$MINUTES;
  TimeUnit get HOURS => _$HOURS;
  TimeUnit get DAYS => _$DAYS;
  TimeUnit get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TimeUnit valueOf(String name) => _$valueOf(name);
  BuiltSet<TimeUnit> get values => _$values;
}

mixin _$TimeUnitMixin {
  // ignore: non_constant_identifier_names
  _$TimeUnitMeta get TimeUnit => const _$TimeUnitMeta();
}

Serializer<TimeUnit> _$timeUnitSerializer = _$TimeUnitSerializer();

class _$TimeUnitSerializer implements PrimitiveSerializer<TimeUnit> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NANOSECONDS': 'NANOSECONDS',
    'MICROSECONDS': 'MICROSECONDS',
    'MILLISECONDS': 'MILLISECONDS',
    'SECONDS': 'SECONDS',
    'MINUTES': 'MINUTES',
    'HOURS': 'HOURS',
    'DAYS': 'DAYS',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NANOSECONDS': 'NANOSECONDS',
    'MICROSECONDS': 'MICROSECONDS',
    'MILLISECONDS': 'MILLISECONDS',
    'SECONDS': 'SECONDS',
    'MINUTES': 'MINUTES',
    'HOURS': 'HOURS',
    'DAYS': 'DAYS',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TimeUnit];
  @override
  final String wireName = 'TimeUnit';

  @override
  Object serialize(
    Serializers serializers,
    TimeUnit object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TimeUnit deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TimeUnit.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
