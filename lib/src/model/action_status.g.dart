// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActionStatus _$SUCCESS = const ActionStatus._('SUCCESS');
const ActionStatus _$FAILURE = const ActionStatus._('FAILURE');
const ActionStatus _$unknownDefaultOpenApi = const ActionStatus._(
  'unknownDefaultOpenApi',
);

ActionStatus _$valueOf(String name) {
  switch (name) {
    case 'SUCCESS':
      return _$SUCCESS;
    case 'FAILURE':
      return _$FAILURE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ActionStatus> _$values = BuiltSet<ActionStatus>(
  const <ActionStatus>[_$SUCCESS, _$FAILURE, _$unknownDefaultOpenApi],
);

class _$ActionStatusMeta {
  const _$ActionStatusMeta();
  ActionStatus get SUCCESS => _$SUCCESS;
  ActionStatus get FAILURE => _$FAILURE;
  ActionStatus get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ActionStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<ActionStatus> get values => _$values;
}

mixin _$ActionStatusMixin {
  // ignore: non_constant_identifier_names
  _$ActionStatusMeta get ActionStatus => const _$ActionStatusMeta();
}

Serializer<ActionStatus> _$actionStatusSerializer = _$ActionStatusSerializer();

class _$ActionStatusSerializer implements PrimitiveSerializer<ActionStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SUCCESS': 'SUCCESS',
    'FAILURE': 'FAILURE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SUCCESS': 'SUCCESS',
    'FAILURE': 'FAILURE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ActionStatus];
  @override
  final String wireName = 'ActionStatus';

  @override
  Object serialize(
    Serializers serializers,
    ActionStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ActionStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ActionStatus.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
