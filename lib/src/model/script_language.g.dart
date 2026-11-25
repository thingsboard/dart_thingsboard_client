// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'script_language.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ScriptLanguage _$JS = const ScriptLanguage._('JS');
const ScriptLanguage _$TBEL = const ScriptLanguage._('TBEL');
const ScriptLanguage _$unknownDefaultOpenApi = const ScriptLanguage._(
  'unknownDefaultOpenApi',
);

ScriptLanguage _$valueOf(String name) {
  switch (name) {
    case 'JS':
      return _$JS;
    case 'TBEL':
      return _$TBEL;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ScriptLanguage> _$values = BuiltSet<ScriptLanguage>(
  const <ScriptLanguage>[_$JS, _$TBEL, _$unknownDefaultOpenApi],
);

class _$ScriptLanguageMeta {
  const _$ScriptLanguageMeta();
  ScriptLanguage get JS => _$JS;
  ScriptLanguage get TBEL => _$TBEL;
  ScriptLanguage get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ScriptLanguage valueOf(String name) => _$valueOf(name);
  BuiltSet<ScriptLanguage> get values => _$values;
}

mixin _$ScriptLanguageMixin {
  // ignore: non_constant_identifier_names
  _$ScriptLanguageMeta get ScriptLanguage => const _$ScriptLanguageMeta();
}

Serializer<ScriptLanguage> _$scriptLanguageSerializer =
    _$ScriptLanguageSerializer();

class _$ScriptLanguageSerializer
    implements PrimitiveSerializer<ScriptLanguage> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'JS': 'JS',
    'TBEL': 'TBEL',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'JS': 'JS',
    'TBEL': 'TBEL',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ScriptLanguage];
  @override
  final String wireName = 'ScriptLanguage';

  @override
  Object serialize(
    Serializers serializers,
    ScriptLanguage object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ScriptLanguage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ScriptLanguage.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
