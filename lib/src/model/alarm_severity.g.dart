// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_severity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmSeverity _$CRITICAL = const AlarmSeverity._('CRITICAL');
const AlarmSeverity _$MAJOR = const AlarmSeverity._('MAJOR');
const AlarmSeverity _$MINOR = const AlarmSeverity._('MINOR');
const AlarmSeverity _$WARNING = const AlarmSeverity._('WARNING');
const AlarmSeverity _$INDETERMINATE = const AlarmSeverity._('INDETERMINATE');
const AlarmSeverity _$unknownDefaultOpenApi = const AlarmSeverity._(
  'unknownDefaultOpenApi',
);

AlarmSeverity _$valueOf(String name) {
  switch (name) {
    case 'CRITICAL':
      return _$CRITICAL;
    case 'MAJOR':
      return _$MAJOR;
    case 'MINOR':
      return _$MINOR;
    case 'WARNING':
      return _$WARNING;
    case 'INDETERMINATE':
      return _$INDETERMINATE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmSeverity> _$values =
    BuiltSet<AlarmSeverity>(const <AlarmSeverity>[
      _$CRITICAL,
      _$MAJOR,
      _$MINOR,
      _$WARNING,
      _$INDETERMINATE,
      _$unknownDefaultOpenApi,
    ]);

class _$AlarmSeverityMeta {
  const _$AlarmSeverityMeta();
  AlarmSeverity get CRITICAL => _$CRITICAL;
  AlarmSeverity get MAJOR => _$MAJOR;
  AlarmSeverity get MINOR => _$MINOR;
  AlarmSeverity get WARNING => _$WARNING;
  AlarmSeverity get INDETERMINATE => _$INDETERMINATE;
  AlarmSeverity get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AlarmSeverity valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmSeverity> get values => _$values;
}

mixin _$AlarmSeverityMixin {
  // ignore: non_constant_identifier_names
  _$AlarmSeverityMeta get AlarmSeverity => const _$AlarmSeverityMeta();
}

Serializer<AlarmSeverity> _$alarmSeveritySerializer =
    _$AlarmSeveritySerializer();

class _$AlarmSeveritySerializer implements PrimitiveSerializer<AlarmSeverity> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CRITICAL': 'CRITICAL',
    'MAJOR': 'MAJOR',
    'MINOR': 'MINOR',
    'WARNING': 'WARNING',
    'INDETERMINATE': 'INDETERMINATE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CRITICAL': 'CRITICAL',
    'MAJOR': 'MAJOR',
    'MINOR': 'MINOR',
    'WARNING': 'WARNING',
    'INDETERMINATE': 'INDETERMINATE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmSeverity];
  @override
  final String wireName = 'AlarmSeverity';

  @override
  Object serialize(
    Serializers serializers,
    AlarmSeverity object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmSeverity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmSeverity.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
