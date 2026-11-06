// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'component_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ComponentType _$ENRICHMENT = const ComponentType._('ENRICHMENT');
const ComponentType _$FILTER = const ComponentType._('FILTER');
const ComponentType _$TRANSFORMATION = const ComponentType._('TRANSFORMATION');
const ComponentType _$ACTION = const ComponentType._('ACTION');
const ComponentType _$ANALYTICS = const ComponentType._('ANALYTICS');
const ComponentType _$EXTERNAL = const ComponentType._('EXTERNAL');
const ComponentType _$FLOW = const ComponentType._('FLOW');
const ComponentType _$unknownDefaultOpenApi = const ComponentType._(
  'unknownDefaultOpenApi',
);

ComponentType _$valueOf(String name) {
  switch (name) {
    case 'ENRICHMENT':
      return _$ENRICHMENT;
    case 'FILTER':
      return _$FILTER;
    case 'TRANSFORMATION':
      return _$TRANSFORMATION;
    case 'ACTION':
      return _$ACTION;
    case 'ANALYTICS':
      return _$ANALYTICS;
    case 'EXTERNAL':
      return _$EXTERNAL;
    case 'FLOW':
      return _$FLOW;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ComponentType> _$values =
    BuiltSet<ComponentType>(const <ComponentType>[
      _$ENRICHMENT,
      _$FILTER,
      _$TRANSFORMATION,
      _$ACTION,
      _$ANALYTICS,
      _$EXTERNAL,
      _$FLOW,
      _$unknownDefaultOpenApi,
    ]);

class _$ComponentTypeMeta {
  const _$ComponentTypeMeta();
  ComponentType get ENRICHMENT => _$ENRICHMENT;
  ComponentType get FILTER => _$FILTER;
  ComponentType get TRANSFORMATION => _$TRANSFORMATION;
  ComponentType get ACTION => _$ACTION;
  ComponentType get ANALYTICS => _$ANALYTICS;
  ComponentType get EXTERNAL => _$EXTERNAL;
  ComponentType get FLOW => _$FLOW;
  ComponentType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ComponentType valueOf(String name) => _$valueOf(name);
  BuiltSet<ComponentType> get values => _$values;
}

mixin _$ComponentTypeMixin {
  // ignore: non_constant_identifier_names
  _$ComponentTypeMeta get ComponentType => const _$ComponentTypeMeta();
}

Serializer<ComponentType> _$componentTypeSerializer =
    _$ComponentTypeSerializer();

class _$ComponentTypeSerializer implements PrimitiveSerializer<ComponentType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ENRICHMENT': 'ENRICHMENT',
    'FILTER': 'FILTER',
    'TRANSFORMATION': 'TRANSFORMATION',
    'ACTION': 'ACTION',
    'ANALYTICS': 'ANALYTICS',
    'EXTERNAL': 'EXTERNAL',
    'FLOW': 'FLOW',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ENRICHMENT': 'ENRICHMENT',
    'FILTER': 'FILTER',
    'TRANSFORMATION': 'TRANSFORMATION',
    'ACTION': 'ACTION',
    'ANALYTICS': 'ANALYTICS',
    'EXTERNAL': 'EXTERNAL',
    'FLOW': 'FLOW',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ComponentType];
  @override
  final String wireName = 'ComponentType';

  @override
  Object serialize(
    Serializers serializers,
    ComponentType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ComponentType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ComponentType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
