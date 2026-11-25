// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_search_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmSearchStatus _$ANY = const AlarmSearchStatus._('ANY');
const AlarmSearchStatus _$ACTIVE = const AlarmSearchStatus._('ACTIVE');
const AlarmSearchStatus _$CLEARED = const AlarmSearchStatus._('CLEARED');
const AlarmSearchStatus _$ACK = const AlarmSearchStatus._('ACK');
const AlarmSearchStatus _$UNACK = const AlarmSearchStatus._('UNACK');
const AlarmSearchStatus _$unknownDefaultOpenApi = const AlarmSearchStatus._(
  'unknownDefaultOpenApi',
);

AlarmSearchStatus _$valueOf(String name) {
  switch (name) {
    case 'ANY':
      return _$ANY;
    case 'ACTIVE':
      return _$ACTIVE;
    case 'CLEARED':
      return _$CLEARED;
    case 'ACK':
      return _$ACK;
    case 'UNACK':
      return _$UNACK;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmSearchStatus> _$values = BuiltSet<AlarmSearchStatus>(
  const <AlarmSearchStatus>[
    _$ANY,
    _$ACTIVE,
    _$CLEARED,
    _$ACK,
    _$UNACK,
    _$unknownDefaultOpenApi,
  ],
);

class _$AlarmSearchStatusMeta {
  const _$AlarmSearchStatusMeta();
  AlarmSearchStatus get ANY => _$ANY;
  AlarmSearchStatus get ACTIVE => _$ACTIVE;
  AlarmSearchStatus get CLEARED => _$CLEARED;
  AlarmSearchStatus get ACK => _$ACK;
  AlarmSearchStatus get UNACK => _$UNACK;
  AlarmSearchStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AlarmSearchStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmSearchStatus> get values => _$values;
}

mixin _$AlarmSearchStatusMixin {
  // ignore: non_constant_identifier_names
  _$AlarmSearchStatusMeta get AlarmSearchStatus =>
      const _$AlarmSearchStatusMeta();
}

Serializer<AlarmSearchStatus> _$alarmSearchStatusSerializer =
    _$AlarmSearchStatusSerializer();

class _$AlarmSearchStatusSerializer
    implements PrimitiveSerializer<AlarmSearchStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ANY': 'ANY',
    'ACTIVE': 'ACTIVE',
    'CLEARED': 'CLEARED',
    'ACK': 'ACK',
    'UNACK': 'UNACK',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ANY': 'ANY',
    'ACTIVE': 'ACTIVE',
    'CLEARED': 'CLEARED',
    'ACK': 'ACK',
    'UNACK': 'UNACK',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmSearchStatus];
  @override
  final String wireName = 'AlarmSearchStatus';

  @override
  Object serialize(
    Serializers serializers,
    AlarmSearchStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmSearchStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmSearchStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
