// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_argument_format.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AgentAppArgumentFormat _$STRING = const AgentAppArgumentFormat._(
  'STRING',
);
const AgentAppArgumentFormat _$JSON = const AgentAppArgumentFormat._('JSON');
const AgentAppArgumentFormat _$unknownDefaultOpenApi =
    const AgentAppArgumentFormat._('unknownDefaultOpenApi');

AgentAppArgumentFormat _$valueOf(String name) {
  switch (name) {
    case 'STRING':
      return _$STRING;
    case 'JSON':
      return _$JSON;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<AgentAppArgumentFormat> _$values =
    BuiltSet<AgentAppArgumentFormat>(const <AgentAppArgumentFormat>[
      _$STRING,
      _$JSON,
      _$unknownDefaultOpenApi,
    ]);

class _$AgentAppArgumentFormatMeta {
  const _$AgentAppArgumentFormatMeta();
  AgentAppArgumentFormat get STRING => _$STRING;
  AgentAppArgumentFormat get JSON => _$JSON;
  AgentAppArgumentFormat get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  AgentAppArgumentFormat valueOf(String name) => _$valueOf(name);
  BuiltSet<AgentAppArgumentFormat> get values => _$values;
}

mixin _$AgentAppArgumentFormatMixin {
  // ignore: non_constant_identifier_names
  _$AgentAppArgumentFormatMeta get AgentAppArgumentFormat =>
      const _$AgentAppArgumentFormatMeta();
}

Serializer<AgentAppArgumentFormat> _$agentAppArgumentFormatSerializer =
    _$AgentAppArgumentFormatSerializer();

class _$AgentAppArgumentFormatSerializer
    implements PrimitiveSerializer<AgentAppArgumentFormat> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'STRING': 'STRING',
    'JSON': 'JSON',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'STRING': 'STRING',
    'JSON': 'JSON',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[AgentAppArgumentFormat];
  @override
  final String wireName = 'AgentAppArgumentFormat';

  @override
  Object serialize(
    Serializers serializers,
    AgentAppArgumentFormat object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  AgentAppArgumentFormat deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => AgentAppArgumentFormat.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
