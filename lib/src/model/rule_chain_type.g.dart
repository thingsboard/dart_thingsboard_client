// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RuleChainType _$CORE = const RuleChainType._('CORE');
const RuleChainType _$EDGE = const RuleChainType._('EDGE');
const RuleChainType _$unknownDefaultOpenApi = const RuleChainType._(
  'unknownDefaultOpenApi',
);

RuleChainType _$valueOf(String name) {
  switch (name) {
    case 'CORE':
      return _$CORE;
    case 'EDGE':
      return _$EDGE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RuleChainType> _$values = BuiltSet<RuleChainType>(
  const <RuleChainType>[_$CORE, _$EDGE, _$unknownDefaultOpenApi],
);

class _$RuleChainTypeMeta {
  const _$RuleChainTypeMeta();
  RuleChainType get CORE => _$CORE;
  RuleChainType get EDGE => _$EDGE;
  RuleChainType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RuleChainType valueOf(String name) => _$valueOf(name);
  BuiltSet<RuleChainType> get values => _$values;
}

mixin _$RuleChainTypeMixin {
  // ignore: non_constant_identifier_names
  _$RuleChainTypeMeta get RuleChainType => const _$RuleChainTypeMeta();
}

Serializer<RuleChainType> _$ruleChainTypeSerializer =
    _$RuleChainTypeSerializer();

class _$RuleChainTypeSerializer implements PrimitiveSerializer<RuleChainType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CORE': 'CORE',
    'EDGE': 'EDGE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CORE': 'CORE',
    'EDGE': 'EDGE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RuleChainType];
  @override
  final String wireName = 'RuleChainType';

  @override
  Object serialize(
    Serializers serializers,
    RuleChainType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RuleChainType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RuleChainType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
