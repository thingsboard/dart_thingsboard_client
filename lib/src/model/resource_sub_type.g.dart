// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resource_sub_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ResourceSubType _$IMAGE = const ResourceSubType._('IMAGE');
const ResourceSubType _$SCADA_SYMBOL = const ResourceSubType._('SCADA_SYMBOL');
const ResourceSubType _$EXTENSION = const ResourceSubType._('EXTENSION');
const ResourceSubType _$MODULE = const ResourceSubType._('MODULE');
const ResourceSubType _$unknownDefaultOpenApi = const ResourceSubType._(
  'unknownDefaultOpenApi',
);

ResourceSubType _$valueOf(String name) {
  switch (name) {
    case 'IMAGE':
      return _$IMAGE;
    case 'SCADA_SYMBOL':
      return _$SCADA_SYMBOL;
    case 'EXTENSION':
      return _$EXTENSION;
    case 'MODULE':
      return _$MODULE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ResourceSubType> _$values = BuiltSet<ResourceSubType>(
  const <ResourceSubType>[
    _$IMAGE,
    _$SCADA_SYMBOL,
    _$EXTENSION,
    _$MODULE,
    _$unknownDefaultOpenApi,
  ],
);

class _$ResourceSubTypeMeta {
  const _$ResourceSubTypeMeta();
  ResourceSubType get IMAGE => _$IMAGE;
  ResourceSubType get SCADA_SYMBOL => _$SCADA_SYMBOL;
  ResourceSubType get EXTENSION => _$EXTENSION;
  ResourceSubType get MODULE => _$MODULE;
  ResourceSubType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ResourceSubType valueOf(String name) => _$valueOf(name);
  BuiltSet<ResourceSubType> get values => _$values;
}

mixin _$ResourceSubTypeMixin {
  // ignore: non_constant_identifier_names
  _$ResourceSubTypeMeta get ResourceSubType => const _$ResourceSubTypeMeta();
}

Serializer<ResourceSubType> _$resourceSubTypeSerializer =
    _$ResourceSubTypeSerializer();

class _$ResourceSubTypeSerializer
    implements PrimitiveSerializer<ResourceSubType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'IMAGE': 'IMAGE',
    'SCADA_SYMBOL': 'SCADA_SYMBOL',
    'EXTENSION': 'EXTENSION',
    'MODULE': 'MODULE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'IMAGE': 'IMAGE',
    'SCADA_SYMBOL': 'SCADA_SYMBOL',
    'EXTENSION': 'EXTENSION',
    'MODULE': 'MODULE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ResourceSubType];
  @override
  final String wireName = 'ResourceSubType';

  @override
  Object serialize(
    Serializers serializers,
    ResourceSubType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ResourceSubType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ResourceSubType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
