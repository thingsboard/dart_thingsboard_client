// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignUpResult _$SUCCESS = const SignUpResult._('SUCCESS');
const SignUpResult _$INACTIVE_USER_EXISTS = const SignUpResult._(
  'INACTIVE_USER_EXISTS',
);
const SignUpResult _$unknownDefaultOpenApi = const SignUpResult._(
  'unknownDefaultOpenApi',
);

SignUpResult _$valueOf(String name) {
  switch (name) {
    case 'SUCCESS':
      return _$SUCCESS;
    case 'INACTIVE_USER_EXISTS':
      return _$INACTIVE_USER_EXISTS;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SignUpResult> _$values = BuiltSet<SignUpResult>(
  const <SignUpResult>[
    _$SUCCESS,
    _$INACTIVE_USER_EXISTS,
    _$unknownDefaultOpenApi,
  ],
);

class _$SignUpResultMeta {
  const _$SignUpResultMeta();
  SignUpResult get SUCCESS => _$SUCCESS;
  SignUpResult get INACTIVE_USER_EXISTS => _$INACTIVE_USER_EXISTS;
  SignUpResult get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SignUpResult valueOf(String name) => _$valueOf(name);
  BuiltSet<SignUpResult> get values => _$values;
}

mixin _$SignUpResultMixin {
  // ignore: non_constant_identifier_names
  _$SignUpResultMeta get SignUpResult => const _$SignUpResultMeta();
}

Serializer<SignUpResult> _$signUpResultSerializer = _$SignUpResultSerializer();

class _$SignUpResultSerializer implements PrimitiveSerializer<SignUpResult> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SUCCESS': 'SUCCESS',
    'INACTIVE_USER_EXISTS': 'INACTIVE_USER_EXISTS',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SUCCESS': 'SUCCESS',
    'INACTIVE_USER_EXISTS': 'INACTIVE_USER_EXISTS',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SignUpResult];
  @override
  final String wireName = 'SignUpResult';

  @override
  Object serialize(
    Serializers serializers,
    SignUpResult object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SignUpResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SignUpResult.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
