// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_name_strategy_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TenantNameStrategyType _$DOMAIN = const TenantNameStrategyType._(
  'DOMAIN',
);
const TenantNameStrategyType _$EMAIL = const TenantNameStrategyType._('EMAIL');
const TenantNameStrategyType _$CUSTOM = const TenantNameStrategyType._(
  'CUSTOM',
);
const TenantNameStrategyType _$unknownDefaultOpenApi =
    const TenantNameStrategyType._('unknownDefaultOpenApi');

TenantNameStrategyType _$valueOf(String name) {
  switch (name) {
    case 'DOMAIN':
      return _$DOMAIN;
    case 'EMAIL':
      return _$EMAIL;
    case 'CUSTOM':
      return _$CUSTOM;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TenantNameStrategyType> _$values =
    BuiltSet<TenantNameStrategyType>(const <TenantNameStrategyType>[
      _$DOMAIN,
      _$EMAIL,
      _$CUSTOM,
      _$unknownDefaultOpenApi,
    ]);

class _$TenantNameStrategyTypeMeta {
  const _$TenantNameStrategyTypeMeta();
  TenantNameStrategyType get DOMAIN => _$DOMAIN;
  TenantNameStrategyType get EMAIL => _$EMAIL;
  TenantNameStrategyType get CUSTOM => _$CUSTOM;
  TenantNameStrategyType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TenantNameStrategyType valueOf(String name) => _$valueOf(name);
  BuiltSet<TenantNameStrategyType> get values => _$values;
}

mixin _$TenantNameStrategyTypeMixin {
  // ignore: non_constant_identifier_names
  _$TenantNameStrategyTypeMeta get TenantNameStrategyType =>
      const _$TenantNameStrategyTypeMeta();
}

Serializer<TenantNameStrategyType> _$tenantNameStrategyTypeSerializer =
    _$TenantNameStrategyTypeSerializer();

class _$TenantNameStrategyTypeSerializer
    implements PrimitiveSerializer<TenantNameStrategyType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DOMAIN': 'DOMAIN',
    'EMAIL': 'EMAIL',
    'CUSTOM': 'CUSTOM',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DOMAIN': 'DOMAIN',
    'EMAIL': 'EMAIL',
    'CUSTOM': 'CUSTOM',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TenantNameStrategyType];
  @override
  final String wireName = 'TenantNameStrategyType';

  @override
  Object serialize(
    Serializers serializers,
    TenantNameStrategyType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TenantNameStrategyType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TenantNameStrategyType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
