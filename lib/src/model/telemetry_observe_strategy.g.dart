// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telemetry_observe_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TelemetryObserveStrategy _$SINGLE = const TelemetryObserveStrategy._(
  'SINGLE',
);
const TelemetryObserveStrategy _$COMPOSITE_ALL =
    const TelemetryObserveStrategy._('COMPOSITE_ALL');
const TelemetryObserveStrategy _$COMPOSITE_BY_OBJECT =
    const TelemetryObserveStrategy._('COMPOSITE_BY_OBJECT');
const TelemetryObserveStrategy _$unknownDefaultOpenApi =
    const TelemetryObserveStrategy._('unknownDefaultOpenApi');

TelemetryObserveStrategy _$valueOf(String name) {
  switch (name) {
    case 'SINGLE':
      return _$SINGLE;
    case 'COMPOSITE_ALL':
      return _$COMPOSITE_ALL;
    case 'COMPOSITE_BY_OBJECT':
      return _$COMPOSITE_BY_OBJECT;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<TelemetryObserveStrategy> _$values =
    BuiltSet<TelemetryObserveStrategy>(const <TelemetryObserveStrategy>[
      _$SINGLE,
      _$COMPOSITE_ALL,
      _$COMPOSITE_BY_OBJECT,
      _$unknownDefaultOpenApi,
    ]);

class _$TelemetryObserveStrategyMeta {
  const _$TelemetryObserveStrategyMeta();
  TelemetryObserveStrategy get SINGLE => _$SINGLE;
  TelemetryObserveStrategy get COMPOSITE_ALL => _$COMPOSITE_ALL;
  TelemetryObserveStrategy get COMPOSITE_BY_OBJECT => _$COMPOSITE_BY_OBJECT;
  TelemetryObserveStrategy get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  TelemetryObserveStrategy valueOf(String name) => _$valueOf(name);
  BuiltSet<TelemetryObserveStrategy> get values => _$values;
}

mixin _$TelemetryObserveStrategyMixin {
  // ignore: non_constant_identifier_names
  _$TelemetryObserveStrategyMeta get TelemetryObserveStrategy =>
      const _$TelemetryObserveStrategyMeta();
}

Serializer<TelemetryObserveStrategy> _$telemetryObserveStrategySerializer =
    _$TelemetryObserveStrategySerializer();

class _$TelemetryObserveStrategySerializer
    implements PrimitiveSerializer<TelemetryObserveStrategy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SINGLE': 'SINGLE',
    'COMPOSITE_ALL': 'COMPOSITE_ALL',
    'COMPOSITE_BY_OBJECT': 'COMPOSITE_BY_OBJECT',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SINGLE': 'SINGLE',
    'COMPOSITE_ALL': 'COMPOSITE_ALL',
    'COMPOSITE_BY_OBJECT': 'COMPOSITE_BY_OBJECT',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[TelemetryObserveStrategy];
  @override
  final String wireName = 'TelemetryObserveStrategy';

  @override
  Object serialize(
    Serializers serializers,
    TelemetryObserveStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  TelemetryObserveStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => TelemetryObserveStrategy.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
