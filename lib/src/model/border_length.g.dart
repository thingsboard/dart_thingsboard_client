// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'border_length.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BorderLength _$LONG = const BorderLength._('LONG');
const BorderLength _$SHORT = const BorderLength._('SHORT');
const BorderLength _$unknownDefaultOpenApi = const BorderLength._(
  'unknownDefaultOpenApi',
);

BorderLength _$valueOf(String name) {
  switch (name) {
    case 'LONG':
      return _$LONG;
    case 'SHORT':
      return _$SHORT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<BorderLength> _$values = BuiltSet<BorderLength>(
  const <BorderLength>[_$LONG, _$SHORT, _$unknownDefaultOpenApi],
);

class _$BorderLengthMeta {
  const _$BorderLengthMeta();
  BorderLength get LONG => _$LONG;
  BorderLength get SHORT => _$SHORT;
  BorderLength get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  BorderLength valueOf(String name) => _$valueOf(name);
  BuiltSet<BorderLength> get values => _$values;
}

mixin _$BorderLengthMixin {
  // ignore: non_constant_identifier_names
  _$BorderLengthMeta get BorderLength => const _$BorderLengthMeta();
}

Serializer<BorderLength> _$borderLengthSerializer = _$BorderLengthSerializer();

class _$BorderLengthSerializer implements PrimitiveSerializer<BorderLength> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LONG': 'LONG',
    'SHORT': 'SHORT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LONG': 'LONG',
    'SHORT': 'SHORT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[BorderLength];
  @override
  final String wireName = 'BorderLength';

  @override
  Object serialize(
    Serializers serializers,
    BorderLength object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  BorderLength deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => BorderLength.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
