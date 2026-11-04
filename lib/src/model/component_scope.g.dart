// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_scope.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ComponentScope _$SYSTEM = const ComponentScope._('SYSTEM');
const ComponentScope _$TENANT = const ComponentScope._('TENANT');
const ComponentScope _$unknownDefaultOpenApi = const ComponentScope._(
  'unknownDefaultOpenApi',
);

ComponentScope _$valueOf(String name) {
  switch (name) {
    case 'SYSTEM':
      return _$SYSTEM;
    case 'TENANT':
      return _$TENANT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ComponentScope> _$values = BuiltSet<ComponentScope>(
  const <ComponentScope>[_$SYSTEM, _$TENANT, _$unknownDefaultOpenApi],
);

class _$ComponentScopeMeta {
  const _$ComponentScopeMeta();
  ComponentScope get SYSTEM => _$SYSTEM;
  ComponentScope get TENANT => _$TENANT;
  ComponentScope get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ComponentScope valueOf(String name) => _$valueOf(name);
  BuiltSet<ComponentScope> get values => _$values;
}

mixin _$ComponentScopeMixin {
  // ignore: non_constant_identifier_names
  _$ComponentScopeMeta get ComponentScope => const _$ComponentScopeMeta();
}

Serializer<ComponentScope> _$componentScopeSerializer =
    _$ComponentScopeSerializer();

class _$ComponentScopeSerializer
    implements PrimitiveSerializer<ComponentScope> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SYSTEM': 'SYSTEM',
    'TENANT': 'TENANT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SYSTEM': 'SYSTEM',
    'TENANT': 'TENANT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ComponentScope];
  @override
  final String wireName = 'ComponentScope';

  @override
  Object serialize(
    Serializers serializers,
    ComponentScope object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ComponentScope deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ComponentScope.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
