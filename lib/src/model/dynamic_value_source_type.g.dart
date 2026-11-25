// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dynamic_value_source_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DynamicValueSourceType _$CURRENT_TENANT = const DynamicValueSourceType._(
  'CURRENT_TENANT',
);
const DynamicValueSourceType _$CURRENT_CUSTOMER =
    const DynamicValueSourceType._('CURRENT_CUSTOMER');
const DynamicValueSourceType _$CURRENT_USER = const DynamicValueSourceType._(
  'CURRENT_USER',
);
const DynamicValueSourceType _$CURRENT_DEVICE = const DynamicValueSourceType._(
  'CURRENT_DEVICE',
);
const DynamicValueSourceType _$unknownDefaultOpenApi =
    const DynamicValueSourceType._('unknownDefaultOpenApi');

DynamicValueSourceType _$valueOf(String name) {
  switch (name) {
    case 'CURRENT_TENANT':
      return _$CURRENT_TENANT;
    case 'CURRENT_CUSTOMER':
      return _$CURRENT_CUSTOMER;
    case 'CURRENT_USER':
      return _$CURRENT_USER;
    case 'CURRENT_DEVICE':
      return _$CURRENT_DEVICE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DynamicValueSourceType> _$values =
    BuiltSet<DynamicValueSourceType>(const <DynamicValueSourceType>[
      _$CURRENT_TENANT,
      _$CURRENT_CUSTOMER,
      _$CURRENT_USER,
      _$CURRENT_DEVICE,
      _$unknownDefaultOpenApi,
    ]);

class _$DynamicValueSourceTypeMeta {
  const _$DynamicValueSourceTypeMeta();
  DynamicValueSourceType get CURRENT_TENANT => _$CURRENT_TENANT;
  DynamicValueSourceType get CURRENT_CUSTOMER => _$CURRENT_CUSTOMER;
  DynamicValueSourceType get CURRENT_USER => _$CURRENT_USER;
  DynamicValueSourceType get CURRENT_DEVICE => _$CURRENT_DEVICE;
  DynamicValueSourceType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DynamicValueSourceType valueOf(String name) => _$valueOf(name);
  BuiltSet<DynamicValueSourceType> get values => _$values;
}

mixin _$DynamicValueSourceTypeMixin {
  // ignore: non_constant_identifier_names
  _$DynamicValueSourceTypeMeta get DynamicValueSourceType =>
      const _$DynamicValueSourceTypeMeta();
}

Serializer<DynamicValueSourceType> _$dynamicValueSourceTypeSerializer =
    _$DynamicValueSourceTypeSerializer();

class _$DynamicValueSourceTypeSerializer
    implements PrimitiveSerializer<DynamicValueSourceType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CURRENT_TENANT': 'CURRENT_TENANT',
    'CURRENT_CUSTOMER': 'CURRENT_CUSTOMER',
    'CURRENT_USER': 'CURRENT_USER',
    'CURRENT_DEVICE': 'CURRENT_DEVICE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CURRENT_TENANT': 'CURRENT_TENANT',
    'CURRENT_CUSTOMER': 'CURRENT_CUSTOMER',
    'CURRENT_USER': 'CURRENT_USER',
    'CURRENT_DEVICE': 'CURRENT_DEVICE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DynamicValueSourceType];
  @override
  final String wireName = 'DynamicValueSourceType';

  @override
  Object serialize(
    Serializers serializers,
    DynamicValueSourceType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DynamicValueSourceType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DynamicValueSourceType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
