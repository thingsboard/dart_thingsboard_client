// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_clustering_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ComponentClusteringMode _$USER_PREFERENCE =
    const ComponentClusteringMode._('USER_PREFERENCE');
const ComponentClusteringMode _$ENABLED = const ComponentClusteringMode._(
  'ENABLED',
);
const ComponentClusteringMode _$SINGLETON = const ComponentClusteringMode._(
  'SINGLETON',
);
const ComponentClusteringMode _$unknownDefaultOpenApi =
    const ComponentClusteringMode._('unknownDefaultOpenApi');

ComponentClusteringMode _$valueOf(String name) {
  switch (name) {
    case 'USER_PREFERENCE':
      return _$USER_PREFERENCE;
    case 'ENABLED':
      return _$ENABLED;
    case 'SINGLETON':
      return _$SINGLETON;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ComponentClusteringMode> _$values =
    BuiltSet<ComponentClusteringMode>(const <ComponentClusteringMode>[
      _$USER_PREFERENCE,
      _$ENABLED,
      _$SINGLETON,
      _$unknownDefaultOpenApi,
    ]);

class _$ComponentClusteringModeMeta {
  const _$ComponentClusteringModeMeta();
  ComponentClusteringMode get USER_PREFERENCE => _$USER_PREFERENCE;
  ComponentClusteringMode get ENABLED => _$ENABLED;
  ComponentClusteringMode get SINGLETON => _$SINGLETON;
  ComponentClusteringMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ComponentClusteringMode valueOf(String name) => _$valueOf(name);
  BuiltSet<ComponentClusteringMode> get values => _$values;
}

mixin _$ComponentClusteringModeMixin {
  // ignore: non_constant_identifier_names
  _$ComponentClusteringModeMeta get ComponentClusteringMode =>
      const _$ComponentClusteringModeMeta();
}

Serializer<ComponentClusteringMode> _$componentClusteringModeSerializer =
    _$ComponentClusteringModeSerializer();

class _$ComponentClusteringModeSerializer
    implements PrimitiveSerializer<ComponentClusteringMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'USER_PREFERENCE': 'USER_PREFERENCE',
    'ENABLED': 'ENABLED',
    'SINGLETON': 'SINGLETON',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'USER_PREFERENCE': 'USER_PREFERENCE',
    'ENABLED': 'ENABLED',
    'SINGLETON': 'SINGLETON',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ComponentClusteringMode];
  @override
  final String wireName = 'ComponentClusteringMode';

  @override
  Object serialize(
    Serializers serializers,
    ComponentClusteringMode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ComponentClusteringMode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ComponentClusteringMode.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
