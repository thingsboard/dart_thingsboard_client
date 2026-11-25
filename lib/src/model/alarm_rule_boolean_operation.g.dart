// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_boolean_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmRuleBooleanOperation _$EQUAL = const AlarmRuleBooleanOperation._(
  'EQUAL',
);
const AlarmRuleBooleanOperation _$NOT_EQUAL = const AlarmRuleBooleanOperation._(
  'NOT_EQUAL',
);
const AlarmRuleBooleanOperation _$unknownDefaultOpenApi =
    const AlarmRuleBooleanOperation._('unknownDefaultOpenApi');

AlarmRuleBooleanOperation _$valueOf(String name) {
  switch (name) {
    case 'EQUAL':
      return _$EQUAL;
    case 'NOT_EQUAL':
      return _$NOT_EQUAL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmRuleBooleanOperation> _$values =
    BuiltSet<AlarmRuleBooleanOperation>(const <AlarmRuleBooleanOperation>[
      _$EQUAL,
      _$NOT_EQUAL,
      _$unknownDefaultOpenApi,
    ]);

class _$AlarmRuleBooleanOperationMeta {
  const _$AlarmRuleBooleanOperationMeta();
  AlarmRuleBooleanOperation get EQUAL => _$EQUAL;
  AlarmRuleBooleanOperation get NOT_EQUAL => _$NOT_EQUAL;
  AlarmRuleBooleanOperation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  AlarmRuleBooleanOperation valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmRuleBooleanOperation> get values => _$values;
}

mixin _$AlarmRuleBooleanOperationMixin {
  // ignore: non_constant_identifier_names
  _$AlarmRuleBooleanOperationMeta get AlarmRuleBooleanOperation =>
      const _$AlarmRuleBooleanOperationMeta();
}

Serializer<AlarmRuleBooleanOperation> _$alarmRuleBooleanOperationSerializer =
    _$AlarmRuleBooleanOperationSerializer();

class _$AlarmRuleBooleanOperationSerializer
    implements PrimitiveSerializer<AlarmRuleBooleanOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmRuleBooleanOperation];
  @override
  final String wireName = 'AlarmRuleBooleanOperation';

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleBooleanOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmRuleBooleanOperation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmRuleBooleanOperation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
