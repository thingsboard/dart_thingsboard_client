// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_protocol.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthenticationProtocol _$SHA_1 = const AuthenticationProtocol._('SHA_1');
const AuthenticationProtocol _$SHA_224 = const AuthenticationProtocol._(
  'SHA_224',
);
const AuthenticationProtocol _$SHA_256 = const AuthenticationProtocol._(
  'SHA_256',
);
const AuthenticationProtocol _$SHA_384 = const AuthenticationProtocol._(
  'SHA_384',
);
const AuthenticationProtocol _$SHA_512 = const AuthenticationProtocol._(
  'SHA_512',
);
const AuthenticationProtocol _$MD5 = const AuthenticationProtocol._('MD5');
const AuthenticationProtocol _$unknownDefaultOpenApi =
    const AuthenticationProtocol._('unknownDefaultOpenApi');

AuthenticationProtocol _$valueOf(String name) {
  switch (name) {
    case 'SHA_1':
      return _$SHA_1;
    case 'SHA_224':
      return _$SHA_224;
    case 'SHA_256':
      return _$SHA_256;
    case 'SHA_384':
      return _$SHA_384;
    case 'SHA_512':
      return _$SHA_512;
    case 'MD5':
      return _$MD5;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AuthenticationProtocol> _$values =
    BuiltSet<AuthenticationProtocol>(const <AuthenticationProtocol>[
      _$SHA_1,
      _$SHA_224,
      _$SHA_256,
      _$SHA_384,
      _$SHA_512,
      _$MD5,
      _$unknownDefaultOpenApi,
    ]);

class _$AuthenticationProtocolMeta {
  const _$AuthenticationProtocolMeta();
  AuthenticationProtocol get SHA_1 => _$SHA_1;
  AuthenticationProtocol get SHA_224 => _$SHA_224;
  AuthenticationProtocol get SHA_256 => _$SHA_256;
  AuthenticationProtocol get SHA_384 => _$SHA_384;
  AuthenticationProtocol get SHA_512 => _$SHA_512;
  AuthenticationProtocol get MD5 => _$MD5;
  AuthenticationProtocol get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AuthenticationProtocol valueOf(String name) => _$valueOf(name);
  BuiltSet<AuthenticationProtocol> get values => _$values;
}

mixin _$AuthenticationProtocolMixin {
  // ignore: non_constant_identifier_names
  _$AuthenticationProtocolMeta get AuthenticationProtocol =>
      const _$AuthenticationProtocolMeta();
}

Serializer<AuthenticationProtocol> _$authenticationProtocolSerializer =
    _$AuthenticationProtocolSerializer();

class _$AuthenticationProtocolSerializer
    implements PrimitiveSerializer<AuthenticationProtocol> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SHA_1': 'SHA_1',
    'SHA_224': 'SHA_224',
    'SHA_256': 'SHA_256',
    'SHA_384': 'SHA_384',
    'SHA_512': 'SHA_512',
    'MD5': 'MD5',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SHA_1': 'SHA_1',
    'SHA_224': 'SHA_224',
    'SHA_256': 'SHA_256',
    'SHA_384': 'SHA_384',
    'SHA_512': 'SHA_512',
    'MD5': 'MD5',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AuthenticationProtocol];
  @override
  final String wireName = 'AuthenticationProtocol';

  @override
  Object serialize(
    Serializers serializers,
    AuthenticationProtocol object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AuthenticationProtocol deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AuthenticationProtocol.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
