// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmStatus _$ACTIVE_UNACK = const AlarmStatus._('ACTIVE_UNACK');
const AlarmStatus _$ACTIVE_ACK = const AlarmStatus._('ACTIVE_ACK');
const AlarmStatus _$CLEARED_UNACK = const AlarmStatus._('CLEARED_UNACK');
const AlarmStatus _$CLEARED_ACK = const AlarmStatus._('CLEARED_ACK');
const AlarmStatus _$unknownDefaultOpenApi = const AlarmStatus._(
  'unknownDefaultOpenApi',
);

AlarmStatus _$valueOf(String name) {
  switch (name) {
    case 'ACTIVE_UNACK':
      return _$ACTIVE_UNACK;
    case 'ACTIVE_ACK':
      return _$ACTIVE_ACK;
    case 'CLEARED_UNACK':
      return _$CLEARED_UNACK;
    case 'CLEARED_ACK':
      return _$CLEARED_ACK;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmStatus> _$values =
    BuiltSet<AlarmStatus>(const <AlarmStatus>[
      _$ACTIVE_UNACK,
      _$ACTIVE_ACK,
      _$CLEARED_UNACK,
      _$CLEARED_ACK,
      _$unknownDefaultOpenApi,
    ]);

class _$AlarmStatusMeta {
  const _$AlarmStatusMeta();
  AlarmStatus get ACTIVE_UNACK => _$ACTIVE_UNACK;
  AlarmStatus get ACTIVE_ACK => _$ACTIVE_ACK;
  AlarmStatus get CLEARED_UNACK => _$CLEARED_UNACK;
  AlarmStatus get CLEARED_ACK => _$CLEARED_ACK;
  AlarmStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AlarmStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmStatus> get values => _$values;
}

mixin _$AlarmStatusMixin {
  // ignore: non_constant_identifier_names
  _$AlarmStatusMeta get AlarmStatus => const _$AlarmStatusMeta();
}

Serializer<AlarmStatus> _$alarmStatusSerializer = _$AlarmStatusSerializer();

class _$AlarmStatusSerializer implements PrimitiveSerializer<AlarmStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE_UNACK': 'ACTIVE_UNACK',
    'ACTIVE_ACK': 'ACTIVE_ACK',
    'CLEARED_UNACK': 'CLEARED_UNACK',
    'CLEARED_ACK': 'CLEARED_ACK',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE_UNACK': 'ACTIVE_UNACK',
    'ACTIVE_ACK': 'ACTIVE_ACK',
    'CLEARED_UNACK': 'CLEARED_UNACK',
    'CLEARED_ACK': 'CLEARED_ACK',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmStatus];
  @override
  final String wireName = 'AlarmStatus';

  @override
  Object serialize(
    Serializers serializers,
    AlarmStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
