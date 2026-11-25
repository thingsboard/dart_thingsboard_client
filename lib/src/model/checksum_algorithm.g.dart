// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checksum_algorithm.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ChecksumAlgorithm _$MD5 = const ChecksumAlgorithm._('MD5');
const ChecksumAlgorithm _$SHA256 = const ChecksumAlgorithm._('SHA256');
const ChecksumAlgorithm _$SHA384 = const ChecksumAlgorithm._('SHA384');
const ChecksumAlgorithm _$SHA512 = const ChecksumAlgorithm._('SHA512');
const ChecksumAlgorithm _$CRC32 = const ChecksumAlgorithm._('CRC32');
const ChecksumAlgorithm _$MURMUR3_32 = const ChecksumAlgorithm._('MURMUR3_32');
const ChecksumAlgorithm _$MURMUR3_128 = const ChecksumAlgorithm._(
  'MURMUR3_128',
);
const ChecksumAlgorithm _$unknownDefaultOpenApi = const ChecksumAlgorithm._(
  'unknownDefaultOpenApi',
);

ChecksumAlgorithm _$valueOf(String name) {
  switch (name) {
    case 'MD5':
      return _$MD5;
    case 'SHA256':
      return _$SHA256;
    case 'SHA384':
      return _$SHA384;
    case 'SHA512':
      return _$SHA512;
    case 'CRC32':
      return _$CRC32;
    case 'MURMUR3_32':
      return _$MURMUR3_32;
    case 'MURMUR3_128':
      return _$MURMUR3_128;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ChecksumAlgorithm> _$values =
    BuiltSet<ChecksumAlgorithm>(const <ChecksumAlgorithm>[
      _$MD5,
      _$SHA256,
      _$SHA384,
      _$SHA512,
      _$CRC32,
      _$MURMUR3_32,
      _$MURMUR3_128,
      _$unknownDefaultOpenApi,
    ]);

class _$ChecksumAlgorithmMeta {
  const _$ChecksumAlgorithmMeta();
  ChecksumAlgorithm get MD5 => _$MD5;
  ChecksumAlgorithm get SHA256 => _$SHA256;
  ChecksumAlgorithm get SHA384 => _$SHA384;
  ChecksumAlgorithm get SHA512 => _$SHA512;
  ChecksumAlgorithm get CRC32 => _$CRC32;
  ChecksumAlgorithm get MURMUR3_32 => _$MURMUR3_32;
  ChecksumAlgorithm get MURMUR3_128 => _$MURMUR3_128;
  ChecksumAlgorithm get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ChecksumAlgorithm valueOf(String name) => _$valueOf(name);
  BuiltSet<ChecksumAlgorithm> get values => _$values;
}

mixin _$ChecksumAlgorithmMixin {
  // ignore: non_constant_identifier_names
  _$ChecksumAlgorithmMeta get ChecksumAlgorithm =>
      const _$ChecksumAlgorithmMeta();
}

Serializer<ChecksumAlgorithm> _$checksumAlgorithmSerializer =
    _$ChecksumAlgorithmSerializer();

class _$ChecksumAlgorithmSerializer
    implements PrimitiveSerializer<ChecksumAlgorithm> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MD5': 'MD5',
    'SHA256': 'SHA256',
    'SHA384': 'SHA384',
    'SHA512': 'SHA512',
    'CRC32': 'CRC32',
    'MURMUR3_32': 'MURMUR3_32',
    'MURMUR3_128': 'MURMUR3_128',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MD5': 'MD5',
    'SHA256': 'SHA256',
    'SHA384': 'SHA384',
    'SHA512': 'SHA512',
    'CRC32': 'CRC32',
    'MURMUR3_32': 'MURMUR3_32',
    'MURMUR3_128': 'MURMUR3_128',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ChecksumAlgorithm];
  @override
  final String wireName = 'ChecksumAlgorithm';

  @override
  Object serialize(
    Serializers serializers,
    ChecksumAlgorithm object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ChecksumAlgorithm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ChecksumAlgorithm.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
