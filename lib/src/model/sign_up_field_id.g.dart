// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_field_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignUpFieldId _$EMAIL = const SignUpFieldId._('EMAIL');
const SignUpFieldId _$PASSWORD = const SignUpFieldId._('PASSWORD');
const SignUpFieldId _$REPEAT_PASSWORD = const SignUpFieldId._(
  'REPEAT_PASSWORD',
);
const SignUpFieldId _$FIRST_NAME = const SignUpFieldId._('FIRST_NAME');
const SignUpFieldId _$LAST_NAME = const SignUpFieldId._('LAST_NAME');
const SignUpFieldId _$PHONE = const SignUpFieldId._('PHONE');
const SignUpFieldId _$COUNTRY = const SignUpFieldId._('COUNTRY');
const SignUpFieldId _$CITY = const SignUpFieldId._('CITY');
const SignUpFieldId _$STATE = const SignUpFieldId._('STATE');
const SignUpFieldId _$ZIP = const SignUpFieldId._('ZIP');
const SignUpFieldId _$ADDRESS = const SignUpFieldId._('ADDRESS');
const SignUpFieldId _$ADDRESS2 = const SignUpFieldId._('ADDRESS2');
const SignUpFieldId _$unknownDefaultOpenApi = const SignUpFieldId._(
  'unknownDefaultOpenApi',
);

SignUpFieldId _$valueOf(String name) {
  switch (name) {
    case 'EMAIL':
      return _$EMAIL;
    case 'PASSWORD':
      return _$PASSWORD;
    case 'REPEAT_PASSWORD':
      return _$REPEAT_PASSWORD;
    case 'FIRST_NAME':
      return _$FIRST_NAME;
    case 'LAST_NAME':
      return _$LAST_NAME;
    case 'PHONE':
      return _$PHONE;
    case 'COUNTRY':
      return _$COUNTRY;
    case 'CITY':
      return _$CITY;
    case 'STATE':
      return _$STATE;
    case 'ZIP':
      return _$ZIP;
    case 'ADDRESS':
      return _$ADDRESS;
    case 'ADDRESS2':
      return _$ADDRESS2;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SignUpFieldId> _$values =
    BuiltSet<SignUpFieldId>(const <SignUpFieldId>[
      _$EMAIL,
      _$PASSWORD,
      _$REPEAT_PASSWORD,
      _$FIRST_NAME,
      _$LAST_NAME,
      _$PHONE,
      _$COUNTRY,
      _$CITY,
      _$STATE,
      _$ZIP,
      _$ADDRESS,
      _$ADDRESS2,
      _$unknownDefaultOpenApi,
    ]);

class _$SignUpFieldIdMeta {
  const _$SignUpFieldIdMeta();
  SignUpFieldId get EMAIL => _$EMAIL;
  SignUpFieldId get PASSWORD => _$PASSWORD;
  SignUpFieldId get REPEAT_PASSWORD => _$REPEAT_PASSWORD;
  SignUpFieldId get FIRST_NAME => _$FIRST_NAME;
  SignUpFieldId get LAST_NAME => _$LAST_NAME;
  SignUpFieldId get PHONE => _$PHONE;
  SignUpFieldId get COUNTRY => _$COUNTRY;
  SignUpFieldId get CITY => _$CITY;
  SignUpFieldId get STATE => _$STATE;
  SignUpFieldId get ZIP => _$ZIP;
  SignUpFieldId get ADDRESS => _$ADDRESS;
  SignUpFieldId get ADDRESS2 => _$ADDRESS2;
  SignUpFieldId get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SignUpFieldId valueOf(String name) => _$valueOf(name);
  BuiltSet<SignUpFieldId> get values => _$values;
}

mixin _$SignUpFieldIdMixin {
  // ignore: non_constant_identifier_names
  _$SignUpFieldIdMeta get SignUpFieldId => const _$SignUpFieldIdMeta();
}

Serializer<SignUpFieldId> _$signUpFieldIdSerializer =
    _$SignUpFieldIdSerializer();

class _$SignUpFieldIdSerializer implements PrimitiveSerializer<SignUpFieldId> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'EMAIL': 'EMAIL',
    'PASSWORD': 'PASSWORD',
    'REPEAT_PASSWORD': 'REPEAT_PASSWORD',
    'FIRST_NAME': 'FIRST_NAME',
    'LAST_NAME': 'LAST_NAME',
    'PHONE': 'PHONE',
    'COUNTRY': 'COUNTRY',
    'CITY': 'CITY',
    'STATE': 'STATE',
    'ZIP': 'ZIP',
    'ADDRESS': 'ADDRESS',
    'ADDRESS2': 'ADDRESS2',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EMAIL': 'EMAIL',
    'PASSWORD': 'PASSWORD',
    'REPEAT_PASSWORD': 'REPEAT_PASSWORD',
    'FIRST_NAME': 'FIRST_NAME',
    'LAST_NAME': 'LAST_NAME',
    'PHONE': 'PHONE',
    'COUNTRY': 'COUNTRY',
    'CITY': 'CITY',
    'STATE': 'STATE',
    'ZIP': 'ZIP',
    'ADDRESS': 'ADDRESS',
    'ADDRESS2': 'ADDRESS2',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SignUpFieldId];
  @override
  final String wireName = 'SignUpFieldId';

  @override
  Object serialize(
    Serializers serializers,
    SignUpFieldId object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SignUpFieldId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SignUpFieldId.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
