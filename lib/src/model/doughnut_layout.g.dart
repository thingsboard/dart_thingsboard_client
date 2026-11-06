// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doughnut_layout.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DoughnutLayout _$default_ = const DoughnutLayout._('default_');
const DoughnutLayout _$withTotal = const DoughnutLayout._('withTotal');
const DoughnutLayout _$unknownDefaultOpenApi = const DoughnutLayout._(
  'unknownDefaultOpenApi',
);

DoughnutLayout _$valueOf(String name) {
  switch (name) {
    case 'default_':
      return _$default_;
    case 'withTotal':
      return _$withTotal;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DoughnutLayout> _$values = BuiltSet<DoughnutLayout>(
  const <DoughnutLayout>[_$default_, _$withTotal, _$unknownDefaultOpenApi],
);

class _$DoughnutLayoutMeta {
  const _$DoughnutLayoutMeta();
  DoughnutLayout get default_ => _$default_;
  DoughnutLayout get withTotal => _$withTotal;
  DoughnutLayout get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DoughnutLayout valueOf(String name) => _$valueOf(name);
  BuiltSet<DoughnutLayout> get values => _$values;
}

mixin _$DoughnutLayoutMixin {
  // ignore: non_constant_identifier_names
  _$DoughnutLayoutMeta get DoughnutLayout => const _$DoughnutLayoutMeta();
}

Serializer<DoughnutLayout> _$doughnutLayoutSerializer =
    _$DoughnutLayoutSerializer();

class _$DoughnutLayoutSerializer
    implements PrimitiveSerializer<DoughnutLayout> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'default_': 'default',
    'withTotal': 'with_total',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'default': 'default_',
    'with_total': 'withTotal',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DoughnutLayout];
  @override
  final String wireName = 'DoughnutLayout';

  @override
  Object serialize(
    Serializers serializers,
    DoughnutLayout object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DoughnutLayout deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DoughnutLayout.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
