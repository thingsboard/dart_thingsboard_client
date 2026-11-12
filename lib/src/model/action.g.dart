// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Action _$ASSIGNED = const Action._('ASSIGNED');
const Action _$UNASSIGNED = const Action._('UNASSIGNED');
const Action _$unknownDefaultOpenApi = const Action._('unknownDefaultOpenApi');

Action _$valueOf(String name) {
  switch (name) {
    case 'ASSIGNED':
      return _$ASSIGNED;
    case 'UNASSIGNED':
      return _$UNASSIGNED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<Action> _$values = BuiltSet<Action>(const <Action>[
  _$ASSIGNED,
  _$UNASSIGNED,
  _$unknownDefaultOpenApi,
]);

class _$ActionMeta {
  const _$ActionMeta();
  Action get ASSIGNED => _$ASSIGNED;
  Action get UNASSIGNED => _$UNASSIGNED;
  Action get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  Action valueOf(String name) => _$valueOf(name);
  BuiltSet<Action> get values => _$values;
}

mixin _$ActionMixin {
  // ignore: non_constant_identifier_names
  _$ActionMeta get Action => const _$ActionMeta();
}

Serializer<Action> _$actionSerializer = _$ActionSerializer();

class _$ActionSerializer implements PrimitiveSerializer<Action> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ASSIGNED': 'ASSIGNED',
    'UNASSIGNED': 'UNASSIGNED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ASSIGNED': 'ASSIGNED',
    'UNASSIGNED': 'UNASSIGNED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[Action];
  @override
  final String wireName = 'Action';

  @override
  Object serialize(
    Serializers serializers,
    Action object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  Action deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => Action.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
