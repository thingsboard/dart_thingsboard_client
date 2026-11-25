// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skip_reason.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SkipReason _$VERSION_MISMATCH = const SkipReason._('VERSION_MISMATCH');
const SkipReason _$ACTIVE_EVENT = const SkipReason._('ACTIVE_EVENT');
const SkipReason _$RATE_LIMIT_EXCEEDED = const SkipReason._(
  'RATE_LIMIT_EXCEEDED',
);
const SkipReason _$ERROR = const SkipReason._('ERROR');
const SkipReason _$unknownDefaultOpenApi = const SkipReason._(
  'unknownDefaultOpenApi',
);

SkipReason _$valueOf(String name) {
  switch (name) {
    case 'VERSION_MISMATCH':
      return _$VERSION_MISMATCH;
    case 'ACTIVE_EVENT':
      return _$ACTIVE_EVENT;
    case 'RATE_LIMIT_EXCEEDED':
      return _$RATE_LIMIT_EXCEEDED;
    case 'ERROR':
      return _$ERROR;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SkipReason> _$values = BuiltSet<SkipReason>(const <SkipReason>[
  _$VERSION_MISMATCH,
  _$ACTIVE_EVENT,
  _$RATE_LIMIT_EXCEEDED,
  _$ERROR,
  _$unknownDefaultOpenApi,
]);

class _$SkipReasonMeta {
  const _$SkipReasonMeta();
  SkipReason get VERSION_MISMATCH => _$VERSION_MISMATCH;
  SkipReason get ACTIVE_EVENT => _$ACTIVE_EVENT;
  SkipReason get RATE_LIMIT_EXCEEDED => _$RATE_LIMIT_EXCEEDED;
  SkipReason get ERROR => _$ERROR;
  SkipReason get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SkipReason valueOf(String name) => _$valueOf(name);
  BuiltSet<SkipReason> get values => _$values;
}

mixin _$SkipReasonMixin {
  // ignore: non_constant_identifier_names
  _$SkipReasonMeta get SkipReason => const _$SkipReasonMeta();
}

Serializer<SkipReason> _$skipReasonSerializer = _$SkipReasonSerializer();

class _$SkipReasonSerializer implements PrimitiveSerializer<SkipReason> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'VERSION_MISMATCH': 'VERSION_MISMATCH',
    'ACTIVE_EVENT': 'ACTIVE_EVENT',
    'RATE_LIMIT_EXCEEDED': 'RATE_LIMIT_EXCEEDED',
    'ERROR': 'ERROR',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VERSION_MISMATCH': 'VERSION_MISMATCH',
    'ACTIVE_EVENT': 'ACTIVE_EVENT',
    'RATE_LIMIT_EXCEEDED': 'RATE_LIMIT_EXCEEDED',
    'ERROR': 'ERROR',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SkipReason];
  @override
  final String wireName = 'SkipReason';

  @override
  Object serialize(
    Serializers serializers,
    SkipReason object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SkipReason deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SkipReason.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
