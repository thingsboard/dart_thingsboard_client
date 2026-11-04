// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_field_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CalculatedFieldType _$SIMPLE = const CalculatedFieldType._('SIMPLE');
const CalculatedFieldType _$SCRIPT = const CalculatedFieldType._('SCRIPT');
const CalculatedFieldType _$GEOFENCING = const CalculatedFieldType._(
  'GEOFENCING',
);
const CalculatedFieldType _$ALARM = const CalculatedFieldType._('ALARM');
const CalculatedFieldType _$PROPAGATION = const CalculatedFieldType._(
  'PROPAGATION',
);
const CalculatedFieldType _$RELATED_ENTITIES_AGGREGATION =
    const CalculatedFieldType._('RELATED_ENTITIES_AGGREGATION');
const CalculatedFieldType _$ENTITY_AGGREGATION = const CalculatedFieldType._(
  'ENTITY_AGGREGATION',
);
const CalculatedFieldType _$unknownDefaultOpenApi = const CalculatedFieldType._(
  'unknownDefaultOpenApi',
);

CalculatedFieldType _$valueOf(String name) {
  switch (name) {
    case 'SIMPLE':
      return _$SIMPLE;
    case 'SCRIPT':
      return _$SCRIPT;
    case 'GEOFENCING':
      return _$GEOFENCING;
    case 'ALARM':
      return _$ALARM;
    case 'PROPAGATION':
      return _$PROPAGATION;
    case 'RELATED_ENTITIES_AGGREGATION':
      return _$RELATED_ENTITIES_AGGREGATION;
    case 'ENTITY_AGGREGATION':
      return _$ENTITY_AGGREGATION;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<CalculatedFieldType> _$values =
    BuiltSet<CalculatedFieldType>(const <CalculatedFieldType>[
      _$SIMPLE,
      _$SCRIPT,
      _$GEOFENCING,
      _$ALARM,
      _$PROPAGATION,
      _$RELATED_ENTITIES_AGGREGATION,
      _$ENTITY_AGGREGATION,
      _$unknownDefaultOpenApi,
    ]);

class _$CalculatedFieldTypeMeta {
  const _$CalculatedFieldTypeMeta();
  CalculatedFieldType get SIMPLE => _$SIMPLE;
  CalculatedFieldType get SCRIPT => _$SCRIPT;
  CalculatedFieldType get GEOFENCING => _$GEOFENCING;
  CalculatedFieldType get ALARM => _$ALARM;
  CalculatedFieldType get PROPAGATION => _$PROPAGATION;
  CalculatedFieldType get RELATED_ENTITIES_AGGREGATION =>
      _$RELATED_ENTITIES_AGGREGATION;
  CalculatedFieldType get ENTITY_AGGREGATION => _$ENTITY_AGGREGATION;
  CalculatedFieldType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  CalculatedFieldType valueOf(String name) => _$valueOf(name);
  BuiltSet<CalculatedFieldType> get values => _$values;
}

mixin _$CalculatedFieldTypeMixin {
  // ignore: non_constant_identifier_names
  _$CalculatedFieldTypeMeta get CalculatedFieldType =>
      const _$CalculatedFieldTypeMeta();
}

Serializer<CalculatedFieldType> _$calculatedFieldTypeSerializer =
    _$CalculatedFieldTypeSerializer();

class _$CalculatedFieldTypeSerializer
    implements PrimitiveSerializer<CalculatedFieldType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SIMPLE': 'SIMPLE',
    'SCRIPT': 'SCRIPT',
    'GEOFENCING': 'GEOFENCING',
    'ALARM': 'ALARM',
    'PROPAGATION': 'PROPAGATION',
    'RELATED_ENTITIES_AGGREGATION': 'RELATED_ENTITIES_AGGREGATION',
    'ENTITY_AGGREGATION': 'ENTITY_AGGREGATION',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SIMPLE': 'SIMPLE',
    'SCRIPT': 'SCRIPT',
    'GEOFENCING': 'GEOFENCING',
    'ALARM': 'ALARM',
    'PROPAGATION': 'PROPAGATION',
    'RELATED_ENTITIES_AGGREGATION': 'RELATED_ENTITIES_AGGREGATION',
    'ENTITY_AGGREGATION': 'ENTITY_AGGREGATION',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[CalculatedFieldType];
  @override
  final String wireName = 'CalculatedFieldType';

  @override
  Object serialize(
    Serializers serializers,
    CalculatedFieldType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  CalculatedFieldType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => CalculatedFieldType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
