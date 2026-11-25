// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'power_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PowerMode _$PSM = const PowerMode._('PSM');
const PowerMode _$DRX = const PowerMode._('DRX');
const PowerMode _$E_DRX = const PowerMode._('E_DRX');
const PowerMode _$unknownDefaultOpenApi = const PowerMode._(
  'unknownDefaultOpenApi',
);

PowerMode _$valueOf(String name) {
  switch (name) {
    case 'PSM':
      return _$PSM;
    case 'DRX':
      return _$DRX;
    case 'E_DRX':
      return _$E_DRX;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PowerMode> _$values = BuiltSet<PowerMode>(const <PowerMode>[
  _$PSM,
  _$DRX,
  _$E_DRX,
  _$unknownDefaultOpenApi,
]);

class _$PowerModeMeta {
  const _$PowerModeMeta();
  PowerMode get PSM => _$PSM;
  PowerMode get DRX => _$DRX;
  PowerMode get E_DRX => _$E_DRX;
  PowerMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PowerMode valueOf(String name) => _$valueOf(name);
  BuiltSet<PowerMode> get values => _$values;
}

mixin _$PowerModeMixin {
  // ignore: non_constant_identifier_names
  _$PowerModeMeta get PowerMode => const _$PowerModeMeta();
}

Serializer<PowerMode> _$powerModeSerializer = _$PowerModeSerializer();

class _$PowerModeSerializer implements PrimitiveSerializer<PowerMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PSM': 'PSM',
    'DRX': 'DRX',
    'E_DRX': 'E_DRX',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PSM': 'PSM',
    'DRX': 'DRX',
    'E_DRX': 'E_DRX',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PowerMode];
  @override
  final String wireName = 'PowerMode';

  @override
  Object serialize(
    Serializers serializers,
    PowerMode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PowerMode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PowerMode.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
