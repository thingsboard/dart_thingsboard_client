// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_key_settings_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const DataKeySettingsType _$COLUMN = const DataKeySettingsType._('COLUMN');
const DataKeySettingsType _$TIME_SERIES_CHART = const DataKeySettingsType._(
  'TIME_SERIES_CHART',
);
const DataKeySettingsType _$DEFAULT = const DataKeySettingsType._('DEFAULT');
const DataKeySettingsType _$unknownDefaultOpenApi = const DataKeySettingsType._(
  'unknownDefaultOpenApi',
);

DataKeySettingsType _$valueOf(String name) {
  switch (name) {
    case 'COLUMN':
      return _$COLUMN;
    case 'TIME_SERIES_CHART':
      return _$TIME_SERIES_CHART;
    case 'DEFAULT':
      return _$DEFAULT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<DataKeySettingsType> _$values = BuiltSet<DataKeySettingsType>(
  const <DataKeySettingsType>[
    _$COLUMN,
    _$TIME_SERIES_CHART,
    _$DEFAULT,
    _$unknownDefaultOpenApi,
  ],
);

class _$DataKeySettingsTypeMeta {
  const _$DataKeySettingsTypeMeta();
  DataKeySettingsType get COLUMN => _$COLUMN;
  DataKeySettingsType get TIME_SERIES_CHART => _$TIME_SERIES_CHART;
  DataKeySettingsType get DEFAULT => _$DEFAULT;
  DataKeySettingsType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  DataKeySettingsType valueOf(String name) => _$valueOf(name);
  BuiltSet<DataKeySettingsType> get values => _$values;
}

mixin _$DataKeySettingsTypeMixin {
  // ignore: non_constant_identifier_names
  _$DataKeySettingsTypeMeta get DataKeySettingsType =>
      const _$DataKeySettingsTypeMeta();
}

Serializer<DataKeySettingsType> _$dataKeySettingsTypeSerializer =
    _$DataKeySettingsTypeSerializer();

class _$DataKeySettingsTypeSerializer
    implements PrimitiveSerializer<DataKeySettingsType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'COLUMN': 'COLUMN',
    'TIME_SERIES_CHART': 'TIME_SERIES_CHART',
    'DEFAULT': 'DEFAULT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'COLUMN': 'COLUMN',
    'TIME_SERIES_CHART': 'TIME_SERIES_CHART',
    'DEFAULT': 'DEFAULT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[DataKeySettingsType];
  @override
  final String wireName = 'DataKeySettingsType';

  @override
  Object serialize(
    Serializers serializers,
    DataKeySettingsType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  DataKeySettingsType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => DataKeySettingsType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
