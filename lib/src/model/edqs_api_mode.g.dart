// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edqs_api_mode.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EdqsApiMode _$ENABLED = const EdqsApiMode._('ENABLED');
const EdqsApiMode _$AUTO_ENABLED = const EdqsApiMode._('AUTO_ENABLED');
const EdqsApiMode _$DISABLED = const EdqsApiMode._('DISABLED');
const EdqsApiMode _$AUTO_DISABLED = const EdqsApiMode._('AUTO_DISABLED');
const EdqsApiMode _$unknownDefaultOpenApi = const EdqsApiMode._(
  'unknownDefaultOpenApi',
);

EdqsApiMode _$valueOf(String name) {
  switch (name) {
    case 'ENABLED':
      return _$ENABLED;
    case 'AUTO_ENABLED':
      return _$AUTO_ENABLED;
    case 'DISABLED':
      return _$DISABLED;
    case 'AUTO_DISABLED':
      return _$AUTO_DISABLED;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<EdqsApiMode> _$values =
    BuiltSet<EdqsApiMode>(const <EdqsApiMode>[
      _$ENABLED,
      _$AUTO_ENABLED,
      _$DISABLED,
      _$AUTO_DISABLED,
      _$unknownDefaultOpenApi,
    ]);

class _$EdqsApiModeMeta {
  const _$EdqsApiModeMeta();
  EdqsApiMode get ENABLED => _$ENABLED;
  EdqsApiMode get AUTO_ENABLED => _$AUTO_ENABLED;
  EdqsApiMode get DISABLED => _$DISABLED;
  EdqsApiMode get AUTO_DISABLED => _$AUTO_DISABLED;
  EdqsApiMode get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  EdqsApiMode valueOf(String name) => _$valueOf(name);
  BuiltSet<EdqsApiMode> get values => _$values;
}

mixin _$EdqsApiModeMixin {
  // ignore: non_constant_identifier_names
  _$EdqsApiModeMeta get EdqsApiMode => const _$EdqsApiModeMeta();
}

Serializer<EdqsApiMode> _$edqsApiModeSerializer = _$EdqsApiModeSerializer();

class _$EdqsApiModeSerializer implements PrimitiveSerializer<EdqsApiMode> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ENABLED': 'ENABLED',
    'AUTO_ENABLED': 'AUTO_ENABLED',
    'DISABLED': 'DISABLED',
    'AUTO_DISABLED': 'AUTO_DISABLED',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ENABLED': 'ENABLED',
    'AUTO_ENABLED': 'AUTO_ENABLED',
    'DISABLED': 'DISABLED',
    'AUTO_DISABLED': 'AUTO_DISABLED',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[EdqsApiMode];
  @override
  final String wireName = 'EdqsApiMode';

  @override
  Object serialize(
    Serializers serializers,
    EdqsApiMode object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  EdqsApiMode deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => EdqsApiMode.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
