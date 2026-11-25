// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geofencing_report_strategy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GeofencingReportStrategy _$REPORT_TRANSITION_EVENTS_ONLY =
    const GeofencingReportStrategy._('REPORT_TRANSITION_EVENTS_ONLY');
const GeofencingReportStrategy _$REPORT_PRESENCE_STATUS_ONLY =
    const GeofencingReportStrategy._('REPORT_PRESENCE_STATUS_ONLY');
const GeofencingReportStrategy _$REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS =
    const GeofencingReportStrategy._(
      'REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS',
    );
const GeofencingReportStrategy _$unknownDefaultOpenApi =
    const GeofencingReportStrategy._('unknownDefaultOpenApi');

GeofencingReportStrategy _$valueOf(String name) {
  switch (name) {
    case 'REPORT_TRANSITION_EVENTS_ONLY':
      return _$REPORT_TRANSITION_EVENTS_ONLY;
    case 'REPORT_PRESENCE_STATUS_ONLY':
      return _$REPORT_PRESENCE_STATUS_ONLY;
    case 'REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS':
      return _$REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<GeofencingReportStrategy> _$values =
    BuiltSet<GeofencingReportStrategy>(const <GeofencingReportStrategy>[
      _$REPORT_TRANSITION_EVENTS_ONLY,
      _$REPORT_PRESENCE_STATUS_ONLY,
      _$REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS,
      _$unknownDefaultOpenApi,
    ]);

class _$GeofencingReportStrategyMeta {
  const _$GeofencingReportStrategyMeta();
  GeofencingReportStrategy get REPORT_TRANSITION_EVENTS_ONLY =>
      _$REPORT_TRANSITION_EVENTS_ONLY;
  GeofencingReportStrategy get REPORT_PRESENCE_STATUS_ONLY =>
      _$REPORT_PRESENCE_STATUS_ONLY;
  GeofencingReportStrategy get REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS =>
      _$REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS;
  GeofencingReportStrategy get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  GeofencingReportStrategy valueOf(String name) => _$valueOf(name);
  BuiltSet<GeofencingReportStrategy> get values => _$values;
}

mixin _$GeofencingReportStrategyMixin {
  // ignore: non_constant_identifier_names
  _$GeofencingReportStrategyMeta get GeofencingReportStrategy =>
      const _$GeofencingReportStrategyMeta();
}

Serializer<GeofencingReportStrategy> _$geofencingReportStrategySerializer =
    _$GeofencingReportStrategySerializer();

class _$GeofencingReportStrategySerializer
    implements PrimitiveSerializer<GeofencingReportStrategy> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'REPORT_TRANSITION_EVENTS_ONLY': 'REPORT_TRANSITION_EVENTS_ONLY',
    'REPORT_PRESENCE_STATUS_ONLY': 'REPORT_PRESENCE_STATUS_ONLY',
    'REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS':
        'REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'REPORT_TRANSITION_EVENTS_ONLY': 'REPORT_TRANSITION_EVENTS_ONLY',
    'REPORT_PRESENCE_STATUS_ONLY': 'REPORT_PRESENCE_STATUS_ONLY',
    'REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS':
        'REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[GeofencingReportStrategy];
  @override
  final String wireName = 'GeofencingReportStrategy';

  @override
  Object serialize(
    Serializers serializers,
    GeofencingReportStrategy object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  GeofencingReportStrategy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => GeofencingReportStrategy.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
