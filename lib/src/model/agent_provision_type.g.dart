// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_provision_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentProvisionType _$DISABLED = const AgentProvisionType._('DISABLED');
const AgentProvisionType _$NO_AUTO_INSTALL = const AgentProvisionType._(
  'NO_AUTO_INSTALL',
);
const AgentProvisionType _$AUTO_INSTALL_PER_APP_TYPE =
    const AgentProvisionType._('AUTO_INSTALL_PER_APP_TYPE');
const AgentProvisionType _$AUTO_INSTALL_PER_APP_PROFILE =
    const AgentProvisionType._('AUTO_INSTALL_PER_APP_PROFILE');
const AgentProvisionType _$unknownDefaultOpenApi = const AgentProvisionType._(
  'unknownDefaultOpenApi',
);

AgentProvisionType _$valueOf(String name) {
  switch (name) {
    case 'DISABLED':
      return _$DISABLED;
    case 'NO_AUTO_INSTALL':
      return _$NO_AUTO_INSTALL;
    case 'AUTO_INSTALL_PER_APP_TYPE':
      return _$AUTO_INSTALL_PER_APP_TYPE;
    case 'AUTO_INSTALL_PER_APP_PROFILE':
      return _$AUTO_INSTALL_PER_APP_PROFILE;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentProvisionType> _$values =
    BuiltSet<AgentProvisionType>(const <AgentProvisionType>[
      _$DISABLED,
      _$NO_AUTO_INSTALL,
      _$AUTO_INSTALL_PER_APP_TYPE,
      _$AUTO_INSTALL_PER_APP_PROFILE,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentProvisionTypeMeta {
  const _$AgentProvisionTypeMeta();
  AgentProvisionType get DISABLED => _$DISABLED;
  AgentProvisionType get NO_AUTO_INSTALL => _$NO_AUTO_INSTALL;
  AgentProvisionType get AUTO_INSTALL_PER_APP_TYPE =>
      _$AUTO_INSTALL_PER_APP_TYPE;
  AgentProvisionType get AUTO_INSTALL_PER_APP_PROFILE =>
      _$AUTO_INSTALL_PER_APP_PROFILE;
  AgentProvisionType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentProvisionType valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentProvisionType> get values => _$values;
}

mixin _$AgentProvisionTypeMixin {
  // ignore: non_constant_identifier_names
  _$AgentProvisionTypeMeta get AgentProvisionType =>
      const _$AgentProvisionTypeMeta();
}

Serializer<AgentProvisionType> _$agentProvisionTypeSerializer =
    _$AgentProvisionTypeSerializer();

class _$AgentProvisionTypeSerializer
    implements PrimitiveSerializer<AgentProvisionType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'DISABLED': 'DISABLED',
    'NO_AUTO_INSTALL': 'NO_AUTO_INSTALL',
    'AUTO_INSTALL_PER_APP_TYPE': 'AUTO_INSTALL_PER_APP_TYPE',
    'AUTO_INSTALL_PER_APP_PROFILE': 'AUTO_INSTALL_PER_APP_PROFILE',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'DISABLED': 'DISABLED',
    'NO_AUTO_INSTALL': 'NO_AUTO_INSTALL',
    'AUTO_INSTALL_PER_APP_TYPE': 'AUTO_INSTALL_PER_APP_TYPE',
    'AUTO_INSTALL_PER_APP_PROFILE': 'AUTO_INSTALL_PER_APP_PROFILE',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentProvisionType];
  @override
  final String wireName = 'AgentProvisionType';

  @override
  Object serialize(
    Serializers serializers,
    AgentProvisionType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentProvisionType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentProvisionType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
