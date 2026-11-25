// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thingsboard_error_code.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ThingsboardErrorCode _$number2 = const ThingsboardErrorCode._('number2');
const ThingsboardErrorCode _$number10 = const ThingsboardErrorCode._(
  'number10',
);
const ThingsboardErrorCode _$number11 = const ThingsboardErrorCode._(
  'number11',
);
const ThingsboardErrorCode _$number15 = const ThingsboardErrorCode._(
  'number15',
);
const ThingsboardErrorCode _$number20 = const ThingsboardErrorCode._(
  'number20',
);
const ThingsboardErrorCode _$number30 = const ThingsboardErrorCode._(
  'number30',
);
const ThingsboardErrorCode _$number31 = const ThingsboardErrorCode._(
  'number31',
);
const ThingsboardErrorCode _$number32 = const ThingsboardErrorCode._(
  'number32',
);
const ThingsboardErrorCode _$number33 = const ThingsboardErrorCode._(
  'number33',
);
const ThingsboardErrorCode _$number34 = const ThingsboardErrorCode._(
  'number34',
);
const ThingsboardErrorCode _$number35 = const ThingsboardErrorCode._(
  'number35',
);
const ThingsboardErrorCode _$number40 = const ThingsboardErrorCode._(
  'number40',
);
const ThingsboardErrorCode _$number41 = const ThingsboardErrorCode._(
  'number41',
);
const ThingsboardErrorCode _$number45 = const ThingsboardErrorCode._(
  'number45',
);
const ThingsboardErrorCode _$number46 = const ThingsboardErrorCode._(
  'number46',
);
const ThingsboardErrorCode _$number47 = const ThingsboardErrorCode._(
  'number47',
);
const ThingsboardErrorCode _$unknownDefaultOpenApi =
    const ThingsboardErrorCode._('unknownDefaultOpenApi');

ThingsboardErrorCode _$valueOf(String name) {
  switch (name) {
    case 'number2':
      return _$number2;
    case 'number10':
      return _$number10;
    case 'number11':
      return _$number11;
    case 'number15':
      return _$number15;
    case 'number20':
      return _$number20;
    case 'number30':
      return _$number30;
    case 'number31':
      return _$number31;
    case 'number32':
      return _$number32;
    case 'number33':
      return _$number33;
    case 'number34':
      return _$number34;
    case 'number35':
      return _$number35;
    case 'number40':
      return _$number40;
    case 'number41':
      return _$number41;
    case 'number45':
      return _$number45;
    case 'number46':
      return _$number46;
    case 'number47':
      return _$number47;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ThingsboardErrorCode> _$values =
    BuiltSet<ThingsboardErrorCode>(const <ThingsboardErrorCode>[
      _$number2,
      _$number10,
      _$number11,
      _$number15,
      _$number20,
      _$number30,
      _$number31,
      _$number32,
      _$number33,
      _$number34,
      _$number35,
      _$number40,
      _$number41,
      _$number45,
      _$number46,
      _$number47,
      _$unknownDefaultOpenApi,
    ]);

class _$ThingsboardErrorCodeMeta {
  const _$ThingsboardErrorCodeMeta();
  ThingsboardErrorCode get number2 => _$number2;
  ThingsboardErrorCode get number10 => _$number10;
  ThingsboardErrorCode get number11 => _$number11;
  ThingsboardErrorCode get number15 => _$number15;
  ThingsboardErrorCode get number20 => _$number20;
  ThingsboardErrorCode get number30 => _$number30;
  ThingsboardErrorCode get number31 => _$number31;
  ThingsboardErrorCode get number32 => _$number32;
  ThingsboardErrorCode get number33 => _$number33;
  ThingsboardErrorCode get number34 => _$number34;
  ThingsboardErrorCode get number35 => _$number35;
  ThingsboardErrorCode get number40 => _$number40;
  ThingsboardErrorCode get number41 => _$number41;
  ThingsboardErrorCode get number45 => _$number45;
  ThingsboardErrorCode get number46 => _$number46;
  ThingsboardErrorCode get number47 => _$number47;
  ThingsboardErrorCode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ThingsboardErrorCode valueOf(String name) => _$valueOf(name);
  BuiltSet<ThingsboardErrorCode> get values => _$values;
}

mixin _$ThingsboardErrorCodeMixin {
  // ignore: non_constant_identifier_names
  _$ThingsboardErrorCodeMeta get ThingsboardErrorCode =>
      const _$ThingsboardErrorCodeMeta();
}

Serializer<ThingsboardErrorCode> _$thingsboardErrorCodeSerializer =
    _$ThingsboardErrorCodeSerializer();

class _$ThingsboardErrorCodeSerializer
    implements PrimitiveSerializer<ThingsboardErrorCode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number2': 2,
    'number10': 10,
    'number11': 11,
    'number15': 15,
    'number20': 20,
    'number30': 30,
    'number31': 31,
    'number32': 32,
    'number33': 33,
    'number34': 34,
    'number35': 35,
    'number40': 40,
    'number41': 41,
    'number45': 45,
    'number46': 46,
    'number47': 47,
    'unknownDefaultOpenApi': 11184809,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    2: 'number2',
    10: 'number10',
    11: 'number11',
    15: 'number15',
    20: 'number20',
    30: 'number30',
    31: 'number31',
    32: 'number32',
    33: 'number33',
    34: 'number34',
    35: 'number35',
    40: 'number40',
    41: 'number41',
    45: 'number45',
    46: 'number46',
    47: 'number47',
    11184809: 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ThingsboardErrorCode];
  @override
  final String wireName = 'ThingsboardErrorCode';

  @override
  Object serialize(
    Serializers serializers,
    ThingsboardErrorCode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ThingsboardErrorCode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ThingsboardErrorCode.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
