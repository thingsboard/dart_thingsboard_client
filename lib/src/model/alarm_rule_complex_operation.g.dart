// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_complex_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmRuleComplexOperation _$AND = const AlarmRuleComplexOperation._(
  'AND',
);
const AlarmRuleComplexOperation _$OR = const AlarmRuleComplexOperation._('OR');
const AlarmRuleComplexOperation _$unknownDefaultOpenApi =
    const AlarmRuleComplexOperation._('unknownDefaultOpenApi');

AlarmRuleComplexOperation _$valueOf(String name) {
  switch (name) {
    case 'AND':
      return _$AND;
    case 'OR':
      return _$OR;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmRuleComplexOperation> _$values =
    BuiltSet<AlarmRuleComplexOperation>(const <AlarmRuleComplexOperation>[
      _$AND,
      _$OR,
      _$unknownDefaultOpenApi,
    ]);

class _$AlarmRuleComplexOperationMeta {
  const _$AlarmRuleComplexOperationMeta();
  AlarmRuleComplexOperation get AND => _$AND;
  AlarmRuleComplexOperation get OR => _$OR;
  AlarmRuleComplexOperation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  AlarmRuleComplexOperation valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmRuleComplexOperation> get values => _$values;
}

mixin _$AlarmRuleComplexOperationMixin {
  // ignore: non_constant_identifier_names
  _$AlarmRuleComplexOperationMeta get AlarmRuleComplexOperation =>
      const _$AlarmRuleComplexOperationMeta();
}

Serializer<AlarmRuleComplexOperation> _$alarmRuleComplexOperationSerializer =
    _$AlarmRuleComplexOperationSerializer();

class _$AlarmRuleComplexOperationSerializer
    implements PrimitiveSerializer<AlarmRuleComplexOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'AND': 'AND',
    'OR': 'OR',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'AND': 'AND',
    'OR': 'OR',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmRuleComplexOperation];
  @override
  final String wireName = 'AlarmRuleComplexOperation';

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleComplexOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmRuleComplexOperation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmRuleComplexOperation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
