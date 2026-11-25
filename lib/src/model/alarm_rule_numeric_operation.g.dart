// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_numeric_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmRuleNumericOperation _$EQUAL = const AlarmRuleNumericOperation._(
  'EQUAL',
);
const AlarmRuleNumericOperation _$NOT_EQUAL = const AlarmRuleNumericOperation._(
  'NOT_EQUAL',
);
const AlarmRuleNumericOperation _$GREATER = const AlarmRuleNumericOperation._(
  'GREATER',
);
const AlarmRuleNumericOperation _$LESS = const AlarmRuleNumericOperation._(
  'LESS',
);
const AlarmRuleNumericOperation _$GREATER_OR_EQUAL =
    const AlarmRuleNumericOperation._('GREATER_OR_EQUAL');
const AlarmRuleNumericOperation _$LESS_OR_EQUAL =
    const AlarmRuleNumericOperation._('LESS_OR_EQUAL');
const AlarmRuleNumericOperation _$unknownDefaultOpenApi =
    const AlarmRuleNumericOperation._('unknownDefaultOpenApi');

AlarmRuleNumericOperation _$valueOf(String name) {
  switch (name) {
    case 'EQUAL':
      return _$EQUAL;
    case 'NOT_EQUAL':
      return _$NOT_EQUAL;
    case 'GREATER':
      return _$GREATER;
    case 'LESS':
      return _$LESS;
    case 'GREATER_OR_EQUAL':
      return _$GREATER_OR_EQUAL;
    case 'LESS_OR_EQUAL':
      return _$LESS_OR_EQUAL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmRuleNumericOperation> _$values =
    BuiltSet<AlarmRuleNumericOperation>(const <AlarmRuleNumericOperation>[
      _$EQUAL,
      _$NOT_EQUAL,
      _$GREATER,
      _$LESS,
      _$GREATER_OR_EQUAL,
      _$LESS_OR_EQUAL,
      _$unknownDefaultOpenApi,
    ]);

class _$AlarmRuleNumericOperationMeta {
  const _$AlarmRuleNumericOperationMeta();
  AlarmRuleNumericOperation get EQUAL => _$EQUAL;
  AlarmRuleNumericOperation get NOT_EQUAL => _$NOT_EQUAL;
  AlarmRuleNumericOperation get GREATER => _$GREATER;
  AlarmRuleNumericOperation get LESS => _$LESS;
  AlarmRuleNumericOperation get GREATER_OR_EQUAL => _$GREATER_OR_EQUAL;
  AlarmRuleNumericOperation get LESS_OR_EQUAL => _$LESS_OR_EQUAL;
  AlarmRuleNumericOperation get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  AlarmRuleNumericOperation valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmRuleNumericOperation> get values => _$values;
}

mixin _$AlarmRuleNumericOperationMixin {
  // ignore: non_constant_identifier_names
  _$AlarmRuleNumericOperationMeta get AlarmRuleNumericOperation =>
      const _$AlarmRuleNumericOperationMeta();
}

Serializer<AlarmRuleNumericOperation> _$alarmRuleNumericOperationSerializer =
    _$AlarmRuleNumericOperationSerializer();

class _$AlarmRuleNumericOperationSerializer
    implements PrimitiveSerializer<AlarmRuleNumericOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'GREATER': 'GREATER',
    'LESS': 'LESS',
    'GREATER_OR_EQUAL': 'GREATER_OR_EQUAL',
    'LESS_OR_EQUAL': 'LESS_OR_EQUAL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'GREATER': 'GREATER',
    'LESS': 'LESS',
    'GREATER_OR_EQUAL': 'GREATER_OR_EQUAL',
    'LESS_OR_EQUAL': 'LESS_OR_EQUAL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmRuleNumericOperation];
  @override
  final String wireName = 'AlarmRuleNumericOperation';

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleNumericOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmRuleNumericOperation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmRuleNumericOperation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
