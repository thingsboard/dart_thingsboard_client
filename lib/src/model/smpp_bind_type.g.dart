// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smpp_bind_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SmppBindType _$TX = const SmppBindType._('TX');
const SmppBindType _$RX = const SmppBindType._('RX');
const SmppBindType _$TRX = const SmppBindType._('TRX');
const SmppBindType _$unknownDefaultOpenApi = const SmppBindType._(
  'unknownDefaultOpenApi',
);

SmppBindType _$valueOf(String name) {
  switch (name) {
    case 'TX':
      return _$TX;
    case 'RX':
      return _$RX;
    case 'TRX':
      return _$TRX;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SmppBindType> _$values = BuiltSet<SmppBindType>(
  const <SmppBindType>[_$TX, _$RX, _$TRX, _$unknownDefaultOpenApi],
);

class _$SmppBindTypeMeta {
  const _$SmppBindTypeMeta();
  SmppBindType get TX => _$TX;
  SmppBindType get RX => _$RX;
  SmppBindType get TRX => _$TRX;
  SmppBindType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SmppBindType valueOf(String name) => _$valueOf(name);
  BuiltSet<SmppBindType> get values => _$values;
}

mixin _$SmppBindTypeMixin {
  // ignore: non_constant_identifier_names
  _$SmppBindTypeMeta get SmppBindType => const _$SmppBindTypeMeta();
}

Serializer<SmppBindType> _$smppBindTypeSerializer = _$SmppBindTypeSerializer();

class _$SmppBindTypeSerializer implements PrimitiveSerializer<SmppBindType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TX': 'TX',
    'RX': 'RX',
    'TRX': 'TRX',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TX': 'TX',
    'RX': 'RX',
    'TRX': 'TRX',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SmppBindType];
  @override
  final String wireName = 'SmppBindType';

  @override
  Object serialize(
    Serializers serializers,
    SmppBindType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SmppBindType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SmppBindType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
