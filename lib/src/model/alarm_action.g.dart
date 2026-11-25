// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AlarmAction _$CREATED = const AlarmAction._('CREATED');
const AlarmAction _$SEVERITY_CHANGED = const AlarmAction._('SEVERITY_CHANGED');
const AlarmAction _$ACKNOWLEDGED = const AlarmAction._('ACKNOWLEDGED');
const AlarmAction _$CLEARED = const AlarmAction._('CLEARED');
const AlarmAction _$unknownDefaultOpenApi = const AlarmAction._(
  'unknownDefaultOpenApi',
);

AlarmAction _$valueOf(String name) {
  switch (name) {
    case 'CREATED':
      return _$CREATED;
    case 'SEVERITY_CHANGED':
      return _$SEVERITY_CHANGED;
    case 'ACKNOWLEDGED':
      return _$ACKNOWLEDGED;
    case 'CLEARED':
      return _$CLEARED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AlarmAction> _$values =
    BuiltSet<AlarmAction>(const <AlarmAction>[
      _$CREATED,
      _$SEVERITY_CHANGED,
      _$ACKNOWLEDGED,
      _$CLEARED,
      _$unknownDefaultOpenApi,
    ]);

class _$AlarmActionMeta {
  const _$AlarmActionMeta();
  AlarmAction get CREATED => _$CREATED;
  AlarmAction get SEVERITY_CHANGED => _$SEVERITY_CHANGED;
  AlarmAction get ACKNOWLEDGED => _$ACKNOWLEDGED;
  AlarmAction get CLEARED => _$CLEARED;
  AlarmAction get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AlarmAction valueOf(String name) => _$valueOf(name);
  BuiltSet<AlarmAction> get values => _$values;
}

mixin _$AlarmActionMixin {
  // ignore: non_constant_identifier_names
  _$AlarmActionMeta get AlarmAction => const _$AlarmActionMeta();
}

Serializer<AlarmAction> _$alarmActionSerializer = _$AlarmActionSerializer();

class _$AlarmActionSerializer implements PrimitiveSerializer<AlarmAction> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CREATED': 'CREATED',
    'SEVERITY_CHANGED': 'SEVERITY_CHANGED',
    'ACKNOWLEDGED': 'ACKNOWLEDGED',
    'CLEARED': 'CLEARED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CREATED': 'CREATED',
    'SEVERITY_CHANGED': 'SEVERITY_CHANGED',
    'ACKNOWLEDGED': 'ACKNOWLEDGED',
    'CLEARED': 'CLEARED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AlarmAction];
  @override
  final String wireName = 'AlarmAction';

  @override
  Object serialize(
    Serializers serializers,
    AlarmAction object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AlarmAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AlarmAction.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
