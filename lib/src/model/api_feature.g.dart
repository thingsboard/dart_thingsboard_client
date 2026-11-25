// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_feature.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ApiFeature _$TRANSPORT = const ApiFeature._('TRANSPORT');
const ApiFeature _$DB = const ApiFeature._('DB');
const ApiFeature _$RE = const ApiFeature._('RE');
const ApiFeature _$JS = const ApiFeature._('JS');
const ApiFeature _$TBEL = const ApiFeature._('TBEL');
const ApiFeature _$EMAIL = const ApiFeature._('EMAIL');
const ApiFeature _$SMS = const ApiFeature._('SMS');
const ApiFeature _$ALARM = const ApiFeature._('ALARM');
const ApiFeature _$REPORT = const ApiFeature._('REPORT');
const ApiFeature _$AI = const ApiFeature._('AI');
const ApiFeature _$unknownDefaultOpenApi = const ApiFeature._(
  'unknownDefaultOpenApi',
);

ApiFeature _$valueOf(String name) {
  switch (name) {
    case 'TRANSPORT':
      return _$TRANSPORT;
    case 'DB':
      return _$DB;
    case 'RE':
      return _$RE;
    case 'JS':
      return _$JS;
    case 'TBEL':
      return _$TBEL;
    case 'EMAIL':
      return _$EMAIL;
    case 'SMS':
      return _$SMS;
    case 'ALARM':
      return _$ALARM;
    case 'REPORT':
      return _$REPORT;
    case 'AI':
      return _$AI;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ApiFeature> _$values = BuiltSet<ApiFeature>(const <ApiFeature>[
  _$TRANSPORT,
  _$DB,
  _$RE,
  _$JS,
  _$TBEL,
  _$EMAIL,
  _$SMS,
  _$ALARM,
  _$REPORT,
  _$AI,
  _$unknownDefaultOpenApi,
]);

class _$ApiFeatureMeta {
  const _$ApiFeatureMeta();
  ApiFeature get TRANSPORT => _$TRANSPORT;
  ApiFeature get DB => _$DB;
  ApiFeature get RE => _$RE;
  ApiFeature get JS => _$JS;
  ApiFeature get TBEL => _$TBEL;
  ApiFeature get EMAIL => _$EMAIL;
  ApiFeature get SMS => _$SMS;
  ApiFeature get ALARM => _$ALARM;
  ApiFeature get REPORT => _$REPORT;
  ApiFeature get AI => _$AI;
  ApiFeature get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ApiFeature valueOf(String name) => _$valueOf(name);
  BuiltSet<ApiFeature> get values => _$values;
}

mixin _$ApiFeatureMixin {
  // ignore: non_constant_identifier_names
  _$ApiFeatureMeta get ApiFeature => const _$ApiFeatureMeta();
}

Serializer<ApiFeature> _$apiFeatureSerializer = _$ApiFeatureSerializer();

class _$ApiFeatureSerializer implements PrimitiveSerializer<ApiFeature> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TRANSPORT': 'TRANSPORT',
    'DB': 'DB',
    'RE': 'RE',
    'JS': 'JS',
    'TBEL': 'TBEL',
    'EMAIL': 'EMAIL',
    'SMS': 'SMS',
    'ALARM': 'ALARM',
    'REPORT': 'REPORT',
    'AI': 'AI',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TRANSPORT': 'TRANSPORT',
    'DB': 'DB',
    'RE': 'RE',
    'JS': 'JS',
    'TBEL': 'TBEL',
    'EMAIL': 'EMAIL',
    'SMS': 'SMS',
    'ALARM': 'ALARM',
    'REPORT': 'REPORT',
    'AI': 'AI',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ApiFeature];
  @override
  final String wireName = 'ApiFeature';

  @override
  Object serialize(
    Serializers serializers,
    ApiFeature object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ApiFeature deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ApiFeature.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
