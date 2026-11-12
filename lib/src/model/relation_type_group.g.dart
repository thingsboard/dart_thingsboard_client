// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_type_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RelationTypeGroup _$COMMON = const RelationTypeGroup._('COMMON');
const RelationTypeGroup _$DASHBOARD = const RelationTypeGroup._('DASHBOARD');
const RelationTypeGroup _$FROM_ENTITY_GROUP = const RelationTypeGroup._(
  'FROM_ENTITY_GROUP',
);
const RelationTypeGroup _$RULE_CHAIN = const RelationTypeGroup._('RULE_CHAIN');
const RelationTypeGroup _$RULE_NODE = const RelationTypeGroup._('RULE_NODE');
const RelationTypeGroup _$EDGE = const RelationTypeGroup._('EDGE');
const RelationTypeGroup _$EDGE_AUTO_ASSIGN_RULE_CHAIN =
    const RelationTypeGroup._('EDGE_AUTO_ASSIGN_RULE_CHAIN');
const RelationTypeGroup _$AGENT = const RelationTypeGroup._('AGENT');
const RelationTypeGroup _$unknownDefaultOpenApi = const RelationTypeGroup._(
  'unknownDefaultOpenApi',
);

RelationTypeGroup _$valueOf(String name) {
  switch (name) {
    case 'COMMON':
      return _$COMMON;
    case 'DASHBOARD':
      return _$DASHBOARD;
    case 'FROM_ENTITY_GROUP':
      return _$FROM_ENTITY_GROUP;
    case 'RULE_CHAIN':
      return _$RULE_CHAIN;
    case 'RULE_NODE':
      return _$RULE_NODE;
    case 'EDGE':
      return _$EDGE;
    case 'EDGE_AUTO_ASSIGN_RULE_CHAIN':
      return _$EDGE_AUTO_ASSIGN_RULE_CHAIN;
    case 'AGENT':
      return _$AGENT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<RelationTypeGroup> _$values =
    BuiltSet<RelationTypeGroup>(const <RelationTypeGroup>[
      _$COMMON,
      _$DASHBOARD,
      _$FROM_ENTITY_GROUP,
      _$RULE_CHAIN,
      _$RULE_NODE,
      _$EDGE,
      _$EDGE_AUTO_ASSIGN_RULE_CHAIN,
      _$AGENT,
      _$unknownDefaultOpenApi,
    ]);

class _$RelationTypeGroupMeta {
  const _$RelationTypeGroupMeta();
  RelationTypeGroup get COMMON => _$COMMON;
  RelationTypeGroup get DASHBOARD => _$DASHBOARD;
  RelationTypeGroup get FROM_ENTITY_GROUP => _$FROM_ENTITY_GROUP;
  RelationTypeGroup get RULE_CHAIN => _$RULE_CHAIN;
  RelationTypeGroup get RULE_NODE => _$RULE_NODE;
  RelationTypeGroup get EDGE => _$EDGE;
  RelationTypeGroup get EDGE_AUTO_ASSIGN_RULE_CHAIN =>
      _$EDGE_AUTO_ASSIGN_RULE_CHAIN;
  RelationTypeGroup get AGENT => _$AGENT;
  RelationTypeGroup get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  RelationTypeGroup valueOf(String name) => _$valueOf(name);
  BuiltSet<RelationTypeGroup> get values => _$values;
}

mixin _$RelationTypeGroupMixin {
  // ignore: non_constant_identifier_names
  _$RelationTypeGroupMeta get RelationTypeGroup =>
      const _$RelationTypeGroupMeta();
}

Serializer<RelationTypeGroup> _$relationTypeGroupSerializer =
    _$RelationTypeGroupSerializer();

class _$RelationTypeGroupSerializer
    implements PrimitiveSerializer<RelationTypeGroup> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COMMON': 'COMMON',
    'DASHBOARD': 'DASHBOARD',
    'FROM_ENTITY_GROUP': 'FROM_ENTITY_GROUP',
    'RULE_CHAIN': 'RULE_CHAIN',
    'RULE_NODE': 'RULE_NODE',
    'EDGE': 'EDGE',
    'EDGE_AUTO_ASSIGN_RULE_CHAIN': 'EDGE_AUTO_ASSIGN_RULE_CHAIN',
    'AGENT': 'AGENT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COMMON': 'COMMON',
    'DASHBOARD': 'DASHBOARD',
    'FROM_ENTITY_GROUP': 'FROM_ENTITY_GROUP',
    'RULE_CHAIN': 'RULE_CHAIN',
    'RULE_NODE': 'RULE_NODE',
    'EDGE': 'EDGE',
    'EDGE_AUTO_ASSIGN_RULE_CHAIN': 'EDGE_AUTO_ASSIGN_RULE_CHAIN',
    'AGENT': 'AGENT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[RelationTypeGroup];
  @override
  final String wireName = 'RelationTypeGroup';

  @override
  Object serialize(
    Serializers serializers,
    RelationTypeGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  RelationTypeGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => RelationTypeGroup.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
