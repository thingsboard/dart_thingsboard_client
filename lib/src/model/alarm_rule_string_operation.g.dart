// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_string_operation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmRuleStringOperation _$EQUAL = const AlarmRuleStringOperation._(
  'EQUAL',
);
const AlarmRuleStringOperation _$NOT_EQUAL = const AlarmRuleStringOperation._(
  'NOT_EQUAL',
);
const AlarmRuleStringOperation _$STARTS_WITH = const AlarmRuleStringOperation._(
  'STARTS_WITH',
);
const AlarmRuleStringOperation _$ENDS_WITH = const AlarmRuleStringOperation._(
  'ENDS_WITH',
);
const AlarmRuleStringOperation _$CONTAINS = const AlarmRuleStringOperation._(
  'CONTAINS',
);
const AlarmRuleStringOperation _$NOT_CONTAINS =
    const AlarmRuleStringOperation._('NOT_CONTAINS');
const AlarmRuleStringOperation _$IN = const AlarmRuleStringOperation._('IN');
const AlarmRuleStringOperation _$NOT_IN = const AlarmRuleStringOperation._(
  'NOT_IN',
);
const AlarmRuleStringOperation _$unknownDefaultOpenApi =
    const AlarmRuleStringOperation._('unknownDefaultOpenApi');

AlarmRuleStringOperation _$valueOf(String name) {
  switch (name) {
    case 'EQUAL':
      return _$EQUAL;
    case 'NOT_EQUAL':
      return _$NOT_EQUAL;
    case 'STARTS_WITH':
      return _$STARTS_WITH;
    case 'ENDS_WITH':
      return _$ENDS_WITH;
    case 'CONTAINS':
      return _$CONTAINS;
    case 'NOT_CONTAINS':
      return _$NOT_CONTAINS;
    case 'IN':
      return _$IN;
    case 'NOT_IN':
      return _$NOT_IN;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmRuleStringOperation> _$values =
    BuiltSet<AlarmRuleStringOperation>(const <AlarmRuleStringOperation>[
      _$EQUAL,
      _$NOT_EQUAL,
      _$STARTS_WITH,
      _$ENDS_WITH,
      _$CONTAINS,
      _$NOT_CONTAINS,
      _$IN,
      _$NOT_IN,
      _$unknownDefaultOpenApi,
    ]);

class _$AlarmRuleStringOperationMeta {
  const _$AlarmRuleStringOperationMeta();
  AlarmRuleStringOperation get EQUAL => _$EQUAL;
  AlarmRuleStringOperation get NOT_EQUAL => _$NOT_EQUAL;
  AlarmRuleStringOperation get STARTS_WITH => _$STARTS_WITH;
  AlarmRuleStringOperation get ENDS_WITH => _$ENDS_WITH;
  AlarmRuleStringOperation get CONTAINS => _$CONTAINS;
  AlarmRuleStringOperation get NOT_CONTAINS => _$NOT_CONTAINS;
  AlarmRuleStringOperation get IN => _$IN;
  AlarmRuleStringOperation get NOT_IN => _$NOT_IN;
  AlarmRuleStringOperation get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AlarmRuleStringOperation valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmRuleStringOperation> get values => _$values;
}

mixin _$AlarmRuleStringOperationMixin {
  // ignore: non_constant_identifier_names
  _$AlarmRuleStringOperationMeta get AlarmRuleStringOperation =>
      const _$AlarmRuleStringOperationMeta();
}

Serializer<AlarmRuleStringOperation> _$alarmRuleStringOperationSerializer =
    _$AlarmRuleStringOperationSerializer();

class _$AlarmRuleStringOperationSerializer
    implements PrimitiveSerializer<AlarmRuleStringOperation> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'STARTS_WITH': 'STARTS_WITH',
    'ENDS_WITH': 'ENDS_WITH',
    'CONTAINS': 'CONTAINS',
    'NOT_CONTAINS': 'NOT_CONTAINS',
    'IN': 'IN',
    'NOT_IN': 'NOT_IN',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EQUAL': 'EQUAL',
    'NOT_EQUAL': 'NOT_EQUAL',
    'STARTS_WITH': 'STARTS_WITH',
    'ENDS_WITH': 'ENDS_WITH',
    'CONTAINS': 'CONTAINS',
    'NOT_CONTAINS': 'NOT_CONTAINS',
    'IN': 'IN',
    'NOT_IN': 'NOT_IN',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmRuleStringOperation];
  @override
  final String wireName = 'AlarmRuleStringOperation';

  @override
  Object serialize(
    Serializers serializers,
    AlarmRuleStringOperation object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmRuleStringOperation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmRuleStringOperation.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
