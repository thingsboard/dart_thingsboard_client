// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage_state_value.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiUsageStateValue _$ENABLED = const ApiUsageStateValue._('ENABLED');
const ApiUsageStateValue _$WARNING = const ApiUsageStateValue._('WARNING');
const ApiUsageStateValue _$DISABLED = const ApiUsageStateValue._('DISABLED');
const ApiUsageStateValue _$unknownDefaultOpenApi = const ApiUsageStateValue._(
  'unknownDefaultOpenApi',
);

ApiUsageStateValue _$valueOf(String name) {
  switch (name) {
    case 'ENABLED':
      return _$ENABLED;
    case 'WARNING':
      return _$WARNING;
    case 'DISABLED':
      return _$DISABLED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiUsageStateValue> _$values = BuiltSet<ApiUsageStateValue>(
  const <ApiUsageStateValue>[
    _$ENABLED,
    _$WARNING,
    _$DISABLED,
    _$unknownDefaultOpenApi,
  ],
);

class _$ApiUsageStateValueMeta {
  const _$ApiUsageStateValueMeta();
  ApiUsageStateValue get ENABLED => _$ENABLED;
  ApiUsageStateValue get WARNING => _$WARNING;
  ApiUsageStateValue get DISABLED => _$DISABLED;
  ApiUsageStateValue get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ApiUsageStateValue valueOf(String name) => _$valueOf(name);
  BuiltSet<ApiUsageStateValue> get values => _$values;
}

mixin _$ApiUsageStateValueMixin {
  // ignore: non_constant_identifier_names
  _$ApiUsageStateValueMeta get ApiUsageStateValue =>
      const _$ApiUsageStateValueMeta();
}

Serializer<ApiUsageStateValue> _$apiUsageStateValueSerializer =
    _$ApiUsageStateValueSerializer();

class _$ApiUsageStateValueSerializer
    implements PrimitiveSerializer<ApiUsageStateValue> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ENABLED': 'ENABLED',
    'WARNING': 'WARNING',
    'DISABLED': 'DISABLED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ENABLED': 'ENABLED',
    'WARNING': 'WARNING',
    'DISABLED': 'DISABLED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ApiUsageStateValue];
  @override
  final String wireName = 'ApiUsageStateValue';

  @override
  Object serialize(
    Serializers serializers,
    ApiUsageStateValue object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiUsageStateValue deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiUsageStateValue.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
