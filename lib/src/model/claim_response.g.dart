// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'claim_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ClaimResponse _$SUCCESS = const ClaimResponse._('SUCCESS');
const ClaimResponse _$FAILURE = const ClaimResponse._('FAILURE');
const ClaimResponse _$CLAIMED = const ClaimResponse._('CLAIMED');
const ClaimResponse _$unknownDefaultOpenApi = const ClaimResponse._(
  'unknownDefaultOpenApi',
);

ClaimResponse _$valueOf(String name) {
  switch (name) {
    case 'SUCCESS':
      return _$SUCCESS;
    case 'FAILURE':
      return _$FAILURE;
    case 'CLAIMED':
      return _$CLAIMED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ClaimResponse> _$values = BuiltSet<ClaimResponse>(
  const <ClaimResponse>[
    _$SUCCESS,
    _$FAILURE,
    _$CLAIMED,
    _$unknownDefaultOpenApi,
  ],
);

class _$ClaimResponseMeta {
  const _$ClaimResponseMeta();
  ClaimResponse get SUCCESS => _$SUCCESS;
  ClaimResponse get FAILURE => _$FAILURE;
  ClaimResponse get CLAIMED => _$CLAIMED;
  ClaimResponse get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ClaimResponse valueOf(String name) => _$valueOf(name);
  BuiltSet<ClaimResponse> get values => _$values;
}

mixin _$ClaimResponseMixin {
  // ignore: non_constant_identifier_names
  _$ClaimResponseMeta get ClaimResponse => const _$ClaimResponseMeta();
}

Serializer<ClaimResponse> _$claimResponseSerializer =
    _$ClaimResponseSerializer();

class _$ClaimResponseSerializer implements PrimitiveSerializer<ClaimResponse> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SUCCESS': 'SUCCESS',
    'FAILURE': 'FAILURE',
    'CLAIMED': 'CLAIMED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SUCCESS': 'SUCCESS',
    'FAILURE': 'FAILURE',
    'CLAIMED': 'CLAIMED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ClaimResponse];
  @override
  final String wireName = 'ClaimResponse';

  @override
  Object serialize(
    Serializers serializers,
    ClaimResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ClaimResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ClaimResponse.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
