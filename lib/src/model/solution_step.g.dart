// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_step.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SolutionStep _$INITIAL_CONFIGURATION = const SolutionStep._(
  'INITIAL_CONFIGURATION',
);
const SolutionStep _$DASHBOARDS_CONFIGURATION = const SolutionStep._(
  'DASHBOARDS_CONFIGURATION',
);
const SolutionStep _$unknownDefaultOpenApi = const SolutionStep._(
  'unknownDefaultOpenApi',
);

SolutionStep _$valueOf(String name) {
  switch (name) {
    case 'INITIAL_CONFIGURATION':
      return _$INITIAL_CONFIGURATION;
    case 'DASHBOARDS_CONFIGURATION':
      return _$DASHBOARDS_CONFIGURATION;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<SolutionStep> _$values = BuiltSet<SolutionStep>(
  const <SolutionStep>[
    _$INITIAL_CONFIGURATION,
    _$DASHBOARDS_CONFIGURATION,
    _$unknownDefaultOpenApi,
  ],
);

class _$SolutionStepMeta {
  const _$SolutionStepMeta();
  SolutionStep get INITIAL_CONFIGURATION => _$INITIAL_CONFIGURATION;
  SolutionStep get DASHBOARDS_CONFIGURATION => _$DASHBOARDS_CONFIGURATION;
  SolutionStep get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  SolutionStep valueOf(String name) => _$valueOf(name);
  BuiltSet<SolutionStep> get values => _$values;
}

mixin _$SolutionStepMixin {
  // ignore: non_constant_identifier_names
  _$SolutionStepMeta get SolutionStep => const _$SolutionStepMeta();
}

Serializer<SolutionStep> _$solutionStepSerializer = _$SolutionStepSerializer();

class _$SolutionStepSerializer implements PrimitiveSerializer<SolutionStep> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'INITIAL_CONFIGURATION': 'INITIAL_CONFIGURATION',
    'DASHBOARDS_CONFIGURATION': 'DASHBOARDS_CONFIGURATION',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'INITIAL_CONFIGURATION': 'INITIAL_CONFIGURATION',
    'DASHBOARDS_CONFIGURATION': 'DASHBOARDS_CONFIGURATION',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[SolutionStep];
  @override
  final String wireName = 'SolutionStep';

  @override
  Object serialize(
    Serializers serializers,
    SolutionStep object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  SolutionStep deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => SolutionStep.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
