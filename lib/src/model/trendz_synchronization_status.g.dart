// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_synchronization_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TrendzSynchronizationStatus _$NOT_AVAILABLE =
    const TrendzSynchronizationStatus._('NOT_AVAILABLE');
const TrendzSynchronizationStatus _$AVAILABLE =
    const TrendzSynchronizationStatus._('AVAILABLE');
const TrendzSynchronizationStatus _$SYNCED =
    const TrendzSynchronizationStatus._('SYNCED');
const TrendzSynchronizationStatus _$unknownDefaultOpenApi =
    const TrendzSynchronizationStatus._('unknownDefaultOpenApi');

TrendzSynchronizationStatus _$valueOf(String name) {
  switch (name) {
    case 'NOT_AVAILABLE':
      return _$NOT_AVAILABLE;
    case 'AVAILABLE':
      return _$AVAILABLE;
    case 'SYNCED':
      return _$SYNCED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TrendzSynchronizationStatus> _$values =
    BuiltSet<TrendzSynchronizationStatus>(const <TrendzSynchronizationStatus>[
      _$NOT_AVAILABLE,
      _$AVAILABLE,
      _$SYNCED,
      _$unknownDefaultOpenApi,
    ]);

class _$TrendzSynchronizationStatusMeta {
  const _$TrendzSynchronizationStatusMeta();
  TrendzSynchronizationStatus get NOT_AVAILABLE => _$NOT_AVAILABLE;
  TrendzSynchronizationStatus get AVAILABLE => _$AVAILABLE;
  TrendzSynchronizationStatus get SYNCED => _$SYNCED;
  TrendzSynchronizationStatus get unknownDefaultOpenApi =>
      _$unknownDefaultOpenApi;
  TrendzSynchronizationStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<TrendzSynchronizationStatus> get values => _$values;
}

mixin _$TrendzSynchronizationStatusMixin {
  // ignore: non_constant_identifier_names
  _$TrendzSynchronizationStatusMeta get TrendzSynchronizationStatus =>
      const _$TrendzSynchronizationStatusMeta();
}

Serializer<TrendzSynchronizationStatus>
_$trendzSynchronizationStatusSerializer =
    _$TrendzSynchronizationStatusSerializer();

class _$TrendzSynchronizationStatusSerializer
    implements PrimitiveSerializer<TrendzSynchronizationStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'NOT_AVAILABLE': 'NOT_AVAILABLE',
    'AVAILABLE': 'AVAILABLE',
    'SYNCED': 'SYNCED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'NOT_AVAILABLE': 'NOT_AVAILABLE',
    'AVAILABLE': 'AVAILABLE',
    'SYNCED': 'SYNCED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TrendzSynchronizationStatus];
  @override
  final String wireName = 'TrendzSynchronizationStatus';

  @override
  Object serialize(
    Serializers serializers,
    TrendzSynchronizationStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TrendzSynchronizationStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TrendzSynchronizationStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
