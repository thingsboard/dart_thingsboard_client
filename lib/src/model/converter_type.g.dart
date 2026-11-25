// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converter_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConverterType _$UPLINK = const ConverterType._('UPLINK');
const ConverterType _$DOWNLINK = const ConverterType._('DOWNLINK');
const ConverterType _$unknownDefaultOpenApi = const ConverterType._(
  'unknownDefaultOpenApi',
);

ConverterType _$valueOf(String name) {
  switch (name) {
    case 'UPLINK':
      return _$UPLINK;
    case 'DOWNLINK':
      return _$DOWNLINK;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ConverterType> _$values = BuiltSet<ConverterType>(
  const <ConverterType>[_$UPLINK, _$DOWNLINK, _$unknownDefaultOpenApi],
);

class _$ConverterTypeMeta {
  const _$ConverterTypeMeta();
  ConverterType get UPLINK => _$UPLINK;
  ConverterType get DOWNLINK => _$DOWNLINK;
  ConverterType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ConverterType valueOf(String name) => _$valueOf(name);
  BuiltSet<ConverterType> get values => _$values;
}

mixin _$ConverterTypeMixin {
  // ignore: non_constant_identifier_names
  _$ConverterTypeMeta get ConverterType => const _$ConverterTypeMeta();
}

Serializer<ConverterType> _$converterTypeSerializer =
    _$ConverterTypeSerializer();

class _$ConverterTypeSerializer implements PrimitiveSerializer<ConverterType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPLINK': 'UPLINK',
    'DOWNLINK': 'DOWNLINK',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPLINK': 'UPLINK',
    'DOWNLINK': 'DOWNLINK',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ConverterType];
  @override
  final String wireName = 'ConverterType';

  @override
  Object serialize(
    Serializers serializers,
    ConverterType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ConverterType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ConverterType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
