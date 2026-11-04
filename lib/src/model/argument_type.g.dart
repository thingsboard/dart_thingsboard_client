// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'argument_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ArgumentType _$TS_LATEST = const ArgumentType._('TS_LATEST');
const ArgumentType _$ATTRIBUTE = const ArgumentType._('ATTRIBUTE');
const ArgumentType _$TS_ROLLING = const ArgumentType._('TS_ROLLING');
const ArgumentType _$unknownDefaultOpenApi = const ArgumentType._(
  'unknownDefaultOpenApi',
);

ArgumentType _$valueOf(String name) {
  switch (name) {
    case 'TS_LATEST':
      return _$TS_LATEST;
    case 'ATTRIBUTE':
      return _$ATTRIBUTE;
    case 'TS_ROLLING':
      return _$TS_ROLLING;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ArgumentType> _$values = BuiltSet<ArgumentType>(
  const <ArgumentType>[
    _$TS_LATEST,
    _$ATTRIBUTE,
    _$TS_ROLLING,
    _$unknownDefaultOpenApi,
  ],
);

class _$ArgumentTypeMeta {
  const _$ArgumentTypeMeta();
  ArgumentType get TS_LATEST => _$TS_LATEST;
  ArgumentType get ATTRIBUTE => _$ATTRIBUTE;
  ArgumentType get TS_ROLLING => _$TS_ROLLING;
  ArgumentType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ArgumentType valueOf(String name) => _$valueOf(name);
  BuiltSet<ArgumentType> get values => _$values;
}

mixin _$ArgumentTypeMixin {
  // ignore: non_constant_identifier_names
  _$ArgumentTypeMeta get ArgumentType => const _$ArgumentTypeMeta();
}

Serializer<ArgumentType> _$argumentTypeSerializer = _$ArgumentTypeSerializer();

class _$ArgumentTypeSerializer implements PrimitiveSerializer<ArgumentType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TS_LATEST': 'TS_LATEST',
    'ATTRIBUTE': 'ATTRIBUTE',
    'TS_ROLLING': 'TS_ROLLING',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TS_LATEST': 'TS_LATEST',
    'ATTRIBUTE': 'ATTRIBUTE',
    'TS_ROLLING': 'TS_ROLLING',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ArgumentType];
  @override
  final String wireName = 'ArgumentType';

  @override
  Object serialize(
    Serializers serializers,
    ArgumentType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ArgumentType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ArgumentType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
