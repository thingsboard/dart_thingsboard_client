// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_setup_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SystemSetupState _$LICENSE_REQUIRED = const SystemSetupState._(
  'LICENSE_REQUIRED',
);
const SystemSetupState _$ACCOUNT_REQUIRED = const SystemSetupState._(
  'ACCOUNT_REQUIRED',
);
const SystemSetupState _$NON_PRODUCTION_CONFIRMATION_REQUIRED =
    const SystemSetupState._('NON_PRODUCTION_CONFIRMATION_REQUIRED');
const SystemSetupState _$READY = const SystemSetupState._('READY');
const SystemSetupState _$unknownDefaultOpenApi = const SystemSetupState._(
  'unknownDefaultOpenApi',
);

SystemSetupState _$valueOf(String name) {
  switch (name) {
    case 'LICENSE_REQUIRED':
      return _$LICENSE_REQUIRED;
    case 'ACCOUNT_REQUIRED':
      return _$ACCOUNT_REQUIRED;
    case 'NON_PRODUCTION_CONFIRMATION_REQUIRED':
      return _$NON_PRODUCTION_CONFIRMATION_REQUIRED;
    case 'READY':
      return _$READY;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SystemSetupState> _$values =
    BuiltSet<SystemSetupState>(const <SystemSetupState>[
      _$LICENSE_REQUIRED,
      _$ACCOUNT_REQUIRED,
      _$NON_PRODUCTION_CONFIRMATION_REQUIRED,
      _$READY,
      _$unknownDefaultOpenApi,
    ]);

class _$SystemSetupStateMeta {
  const _$SystemSetupStateMeta();
  SystemSetupState get LICENSE_REQUIRED => _$LICENSE_REQUIRED;
  SystemSetupState get ACCOUNT_REQUIRED => _$ACCOUNT_REQUIRED;
  SystemSetupState get NON_PRODUCTION_CONFIRMATION_REQUIRED =>
      _$NON_PRODUCTION_CONFIRMATION_REQUIRED;
  SystemSetupState get READY => _$READY;
  SystemSetupState get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SystemSetupState valueOf(String name) => _$valueOf(name);
  BuiltSet<SystemSetupState> get values => _$values;
}

mixin _$SystemSetupStateMixin {
  // ignore: non_constant_identifier_names
  _$SystemSetupStateMeta get SystemSetupState => const _$SystemSetupStateMeta();
}

Serializer<SystemSetupState> _$systemSetupStateSerializer =
    _$SystemSetupStateSerializer();

class _$SystemSetupStateSerializer
    implements PrimitiveSerializer<SystemSetupState> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LICENSE_REQUIRED': 'LICENSE_REQUIRED',
    'ACCOUNT_REQUIRED': 'ACCOUNT_REQUIRED',
    'NON_PRODUCTION_CONFIRMATION_REQUIRED':
        'NON_PRODUCTION_CONFIRMATION_REQUIRED',
    'READY': 'READY',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LICENSE_REQUIRED': 'LICENSE_REQUIRED',
    'ACCOUNT_REQUIRED': 'ACCOUNT_REQUIRED',
    'NON_PRODUCTION_CONFIRMATION_REQUIRED':
        'NON_PRODUCTION_CONFIRMATION_REQUIRED',
    'READY': 'READY',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SystemSetupState];
  @override
  final String wireName = 'SystemSetupState';

  @override
  Object serialize(
    Serializers serializers,
    SystemSetupState object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SystemSetupState deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SystemSetupState.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
