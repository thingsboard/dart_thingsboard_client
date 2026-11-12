// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'value_source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ValueSourceType _$constant = const ValueSourceType._('constant');
const ValueSourceType _$latestKey = const ValueSourceType._('latestKey');
const ValueSourceType _$entity = const ValueSourceType._('entity');
const ValueSourceType _$unknownDefaultOpenApi = const ValueSourceType._(
  'unknownDefaultOpenApi',
);

ValueSourceType _$valueOf(String name) {
  switch (name) {
    case 'constant':
      return _$constant;
    case 'latestKey':
      return _$latestKey;
    case 'entity':
      return _$entity;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ValueSourceType> _$values = BuiltSet<ValueSourceType>(
  const <ValueSourceType>[
    _$constant,
    _$latestKey,
    _$entity,
    _$unknownDefaultOpenApi,
  ],
);

class _$ValueSourceTypeMeta {
  const _$ValueSourceTypeMeta();
  ValueSourceType get constant => _$constant;
  ValueSourceType get latestKey => _$latestKey;
  ValueSourceType get entity => _$entity;
  ValueSourceType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ValueSourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<ValueSourceType> get values => _$values;
}

mixin _$ValueSourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$ValueSourceTypeMeta get ValueSourceType => const _$ValueSourceTypeMeta();
}

Serializer<ValueSourceType> _$valueSourceTypeSerializer =
    _$ValueSourceTypeSerializer();

class _$ValueSourceTypeSerializer
    implements PrimitiveSerializer<ValueSourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'constant': 'constant',
    'latestKey': 'latestKey',
    'entity': 'entity',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'constant': 'constant',
    'latestKey': 'latestKey',
    'entity': 'entity',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ValueSourceType];
  @override
  final String wireName = 'ValueSourceType';

  @override
  Object serialize(
    Serializers serializers,
    ValueSourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ValueSourceType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ValueSourceType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
