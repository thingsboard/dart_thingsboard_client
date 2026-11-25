// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'privacy_protocol.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PrivacyProtocol _$DES = const PrivacyProtocol._('DES');
const PrivacyProtocol _$AES_128 = const PrivacyProtocol._('AES_128');
const PrivacyProtocol _$AES_192 = const PrivacyProtocol._('AES_192');
const PrivacyProtocol _$AES_256 = const PrivacyProtocol._('AES_256');
const PrivacyProtocol _$unknownDefaultOpenApi = const PrivacyProtocol._(
  'unknownDefaultOpenApi',
);

PrivacyProtocol _$valueOf(String name) {
  switch (name) {
    case 'DES':
      return _$DES;
    case 'AES_128':
      return _$AES_128;
    case 'AES_192':
      return _$AES_192;
    case 'AES_256':
      return _$AES_256;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<PrivacyProtocol> _$values = BuiltSet<PrivacyProtocol>(
  const <PrivacyProtocol>[
    _$DES,
    _$AES_128,
    _$AES_192,
    _$AES_256,
    _$unknownDefaultOpenApi,
  ],
);

class _$PrivacyProtocolMeta {
  const _$PrivacyProtocolMeta();
  PrivacyProtocol get DES => _$DES;
  PrivacyProtocol get AES_128 => _$AES_128;
  PrivacyProtocol get AES_192 => _$AES_192;
  PrivacyProtocol get AES_256 => _$AES_256;
  PrivacyProtocol get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  PrivacyProtocol valueOf(String name) => _$valueOf(name);
  BuiltSet<PrivacyProtocol> get values => _$values;
}

mixin _$PrivacyProtocolMixin {
  // ignore: non_constant_identifier_names
  _$PrivacyProtocolMeta get PrivacyProtocol => const _$PrivacyProtocolMeta();
}

Serializer<PrivacyProtocol> _$privacyProtocolSerializer =
    _$PrivacyProtocolSerializer();

class _$PrivacyProtocolSerializer
    implements PrimitiveSerializer<PrivacyProtocol> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DES': 'DES',
    'AES_128': 'AES_128',
    'AES_192': 'AES_192',
    'AES_256': 'AES_256',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DES': 'DES',
    'AES_128': 'AES_128',
    'AES_192': 'AES_192',
    'AES_256': 'AES_256',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[PrivacyProtocol];
  @override
  final String wireName = 'PrivacyProtocol';

  @override
  Object serialize(
    Serializers serializers,
    PrivacyProtocol object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  PrivacyProtocol deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => PrivacyProtocol.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
