// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_synchronization_result_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrendzSynchronizationResultType _$SYNC_NOT_INITIALIZED =
    const TrendzSynchronizationResultType._('SYNC_NOT_INITIALIZED');
const TrendzSynchronizationResultType _$SYNC_COMPLETED =
    const TrendzSynchronizationResultType._('SYNC_COMPLETED');
const TrendzSynchronizationResultType _$SYNC_DISABLED =
    const TrendzSynchronizationResultType._('SYNC_DISABLED');
const TrendzSynchronizationResultType _$TRENDZ_UNSUPPORTED_VERSION =
    const TrendzSynchronizationResultType._('TRENDZ_UNSUPPORTED_VERSION');
const TrendzSynchronizationResultType _$TRENDZ_AUTH_INVALID =
    const TrendzSynchronizationResultType._('TRENDZ_AUTH_INVALID');
const TrendzSynchronizationResultType _$TRENDZ_URL_UNREACHABLE =
    const TrendzSynchronizationResultType._('TRENDZ_URL_UNREACHABLE');
const TrendzSynchronizationResultType _$TB_URL_MISMATCH =
    const TrendzSynchronizationResultType._('TB_URL_MISMATCH');
const TrendzSynchronizationResultType _$TB_URL_UNREACHABLE =
    const TrendzSynchronizationResultType._('TB_URL_UNREACHABLE');
const TrendzSynchronizationResultType _$TB_AUTH_INVALID =
    const TrendzSynchronizationResultType._('TB_AUTH_INVALID');
const TrendzSynchronizationResultType _$SYNC_INTERNAL_ERROR =
    const TrendzSynchronizationResultType._('SYNC_INTERNAL_ERROR');
const TrendzSynchronizationResultType _$unknownDefaultOpenApi =
    const TrendzSynchronizationResultType._('unknownDefaultOpenApi');

TrendzSynchronizationResultType _$valueOf(String name) {
  switch (name) {
    case 'SYNC_NOT_INITIALIZED':
      return _$SYNC_NOT_INITIALIZED;
    case 'SYNC_COMPLETED':
      return _$SYNC_COMPLETED;
    case 'SYNC_DISABLED':
      return _$SYNC_DISABLED;
    case 'TRENDZ_UNSUPPORTED_VERSION':
      return _$TRENDZ_UNSUPPORTED_VERSION;
    case 'TRENDZ_AUTH_INVALID':
      return _$TRENDZ_AUTH_INVALID;
    case 'TRENDZ_URL_UNREACHABLE':
      return _$TRENDZ_URL_UNREACHABLE;
    case 'TB_URL_MISMATCH':
      return _$TB_URL_MISMATCH;
    case 'TB_URL_UNREACHABLE':
      return _$TB_URL_UNREACHABLE;
    case 'TB_AUTH_INVALID':
      return _$TB_AUTH_INVALID;
    case 'SYNC_INTERNAL_ERROR':
      return _$SYNC_INTERNAL_ERROR;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TrendzSynchronizationResultType> _$values =
    BuiltSet<TrendzSynchronizationResultType>(
      const <TrendzSynchronizationResultType>[
        _$SYNC_NOT_INITIALIZED,
        _$SYNC_COMPLETED,
        _$SYNC_DISABLED,
        _$TRENDZ_UNSUPPORTED_VERSION,
        _$TRENDZ_AUTH_INVALID,
        _$TRENDZ_URL_UNREACHABLE,
        _$TB_URL_MISMATCH,
        _$TB_URL_UNREACHABLE,
        _$TB_AUTH_INVALID,
        _$SYNC_INTERNAL_ERROR,
        _$unknownDefaultOpenApi,
      ],
    );

class _$TrendzSynchronizationResultTypeMeta {
  const _$TrendzSynchronizationResultTypeMeta();
  TrendzSynchronizationResultType get SYNC_NOT_INITIALIZED =>
      _$SYNC_NOT_INITIALIZED;
  TrendzSynchronizationResultType get SYNC_COMPLETED => _$SYNC_COMPLETED;
  TrendzSynchronizationResultType get SYNC_DISABLED => _$SYNC_DISABLED;
  TrendzSynchronizationResultType get TRENDZ_UNSUPPORTED_VERSION =>
      _$TRENDZ_UNSUPPORTED_VERSION;
  TrendzSynchronizationResultType get TRENDZ_AUTH_INVALID =>
      _$TRENDZ_AUTH_INVALID;
  TrendzSynchronizationResultType get TRENDZ_URL_UNREACHABLE =>
      _$TRENDZ_URL_UNREACHABLE;
  TrendzSynchronizationResultType get TB_URL_MISMATCH => _$TB_URL_MISMATCH;
  TrendzSynchronizationResultType get TB_URL_UNREACHABLE =>
      _$TB_URL_UNREACHABLE;
  TrendzSynchronizationResultType get TB_AUTH_INVALID => _$TB_AUTH_INVALID;
  TrendzSynchronizationResultType get SYNC_INTERNAL_ERROR =>
      _$SYNC_INTERNAL_ERROR;
  TrendzSynchronizationResultType get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  TrendzSynchronizationResultType valueOf(String name) => _$valueOf(name);
  BuiltSet<TrendzSynchronizationResultType> get values => _$values;
}

mixin _$TrendzSynchronizationResultTypeMixin {
  // ignore: non_constant_identifier_names
  _$TrendzSynchronizationResultTypeMeta get TrendzSynchronizationResultType =>
      const _$TrendzSynchronizationResultTypeMeta();
}

Serializer<TrendzSynchronizationResultType>
_$trendzSynchronizationResultTypeSerializer =
    _$TrendzSynchronizationResultTypeSerializer();

class _$TrendzSynchronizationResultTypeSerializer
    implements PrimitiveSerializer<TrendzSynchronizationResultType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SYNC_NOT_INITIALIZED': 'SYNC_NOT_INITIALIZED',
    'SYNC_COMPLETED': 'SYNC_COMPLETED',
    'SYNC_DISABLED': 'SYNC_DISABLED',
    'TRENDZ_UNSUPPORTED_VERSION': 'TRENDZ_UNSUPPORTED_VERSION',
    'TRENDZ_AUTH_INVALID': 'TRENDZ_AUTH_INVALID',
    'TRENDZ_URL_UNREACHABLE': 'TRENDZ_URL_UNREACHABLE',
    'TB_URL_MISMATCH': 'TB_URL_MISMATCH',
    'TB_URL_UNREACHABLE': 'TB_URL_UNREACHABLE',
    'TB_AUTH_INVALID': 'TB_AUTH_INVALID',
    'SYNC_INTERNAL_ERROR': 'SYNC_INTERNAL_ERROR',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SYNC_NOT_INITIALIZED': 'SYNC_NOT_INITIALIZED',
    'SYNC_COMPLETED': 'SYNC_COMPLETED',
    'SYNC_DISABLED': 'SYNC_DISABLED',
    'TRENDZ_UNSUPPORTED_VERSION': 'TRENDZ_UNSUPPORTED_VERSION',
    'TRENDZ_AUTH_INVALID': 'TRENDZ_AUTH_INVALID',
    'TRENDZ_URL_UNREACHABLE': 'TRENDZ_URL_UNREACHABLE',
    'TB_URL_MISMATCH': 'TB_URL_MISMATCH',
    'TB_URL_UNREACHABLE': 'TB_URL_UNREACHABLE',
    'TB_AUTH_INVALID': 'TB_AUTH_INVALID',
    'SYNC_INTERNAL_ERROR': 'SYNC_INTERNAL_ERROR',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TrendzSynchronizationResultType];
  @override
  final String wireName = 'TrendzSynchronizationResultType';

  @override
  Object serialize(
    Serializers serializers,
    TrendzSynchronizationResultType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TrendzSynchronizationResultType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TrendzSynchronizationResultType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
