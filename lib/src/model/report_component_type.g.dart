// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_component_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReportComponentType _$HEADING = const ReportComponentType._('HEADING');
const ReportComponentType _$RICH_TEXT = const ReportComponentType._(
  'RICH_TEXT',
);
const ReportComponentType _$ENTITY_TABLE = const ReportComponentType._(
  'ENTITY_TABLE',
);
const ReportComponentType _$TIME_SERIES_TABLE = const ReportComponentType._(
  'TIME_SERIES_TABLE',
);
const ReportComponentType _$ALARM_TABLE = const ReportComponentType._(
  'ALARM_TABLE',
);
const ReportComponentType _$TIME_SERIES_CHART = const ReportComponentType._(
  'TIME_SERIES_CHART',
);
const ReportComponentType _$LATEST_CHART = const ReportComponentType._(
  'LATEST_CHART',
);
const ReportComponentType _$DASHBOARD = const ReportComponentType._(
  'DASHBOARD',
);
const ReportComponentType _$IMAGE = const ReportComponentType._('IMAGE');
const ReportComponentType _$SUB_REPORT = const ReportComponentType._(
  'SUB_REPORT',
);
const ReportComponentType _$PAGE_BREAK = const ReportComponentType._(
  'PAGE_BREAK',
);
const ReportComponentType _$ERROR = const ReportComponentType._('ERROR');
const ReportComponentType _$DIVIDER = const ReportComponentType._('DIVIDER');
const ReportComponentType _$SPLIT_VIEW = const ReportComponentType._(
  'SPLIT_VIEW',
);
const ReportComponentType _$unknownDefaultOpenApi = const ReportComponentType._(
  'unknownDefaultOpenApi',
);

ReportComponentType _$valueOf(String name) {
  switch (name) {
    case 'HEADING':
      return _$HEADING;
    case 'RICH_TEXT':
      return _$RICH_TEXT;
    case 'ENTITY_TABLE':
      return _$ENTITY_TABLE;
    case 'TIME_SERIES_TABLE':
      return _$TIME_SERIES_TABLE;
    case 'ALARM_TABLE':
      return _$ALARM_TABLE;
    case 'TIME_SERIES_CHART':
      return _$TIME_SERIES_CHART;
    case 'LATEST_CHART':
      return _$LATEST_CHART;
    case 'DASHBOARD':
      return _$DASHBOARD;
    case 'IMAGE':
      return _$IMAGE;
    case 'SUB_REPORT':
      return _$SUB_REPORT;
    case 'PAGE_BREAK':
      return _$PAGE_BREAK;
    case 'ERROR':
      return _$ERROR;
    case 'DIVIDER':
      return _$DIVIDER;
    case 'SPLIT_VIEW':
      return _$SPLIT_VIEW;
    case 'unknownDefaultOpenApi':
      return _$unknownDefaultOpenApi;
    default:
      return _$unknownDefaultOpenApi;
  }
}

final BuiltSet<ReportComponentType> _$values =
    BuiltSet<ReportComponentType>(const <ReportComponentType>[
      _$HEADING,
      _$RICH_TEXT,
      _$ENTITY_TABLE,
      _$TIME_SERIES_TABLE,
      _$ALARM_TABLE,
      _$TIME_SERIES_CHART,
      _$LATEST_CHART,
      _$DASHBOARD,
      _$IMAGE,
      _$SUB_REPORT,
      _$PAGE_BREAK,
      _$ERROR,
      _$DIVIDER,
      _$SPLIT_VIEW,
      _$unknownDefaultOpenApi,
    ]);

class _$ReportComponentTypeMeta {
  const _$ReportComponentTypeMeta();
  ReportComponentType get HEADING => _$HEADING;
  ReportComponentType get RICH_TEXT => _$RICH_TEXT;
  ReportComponentType get ENTITY_TABLE => _$ENTITY_TABLE;
  ReportComponentType get TIME_SERIES_TABLE => _$TIME_SERIES_TABLE;
  ReportComponentType get ALARM_TABLE => _$ALARM_TABLE;
  ReportComponentType get TIME_SERIES_CHART => _$TIME_SERIES_CHART;
  ReportComponentType get LATEST_CHART => _$LATEST_CHART;
  ReportComponentType get DASHBOARD => _$DASHBOARD;
  ReportComponentType get IMAGE => _$IMAGE;
  ReportComponentType get SUB_REPORT => _$SUB_REPORT;
  ReportComponentType get PAGE_BREAK => _$PAGE_BREAK;
  ReportComponentType get ERROR => _$ERROR;
  ReportComponentType get DIVIDER => _$DIVIDER;
  ReportComponentType get SPLIT_VIEW => _$SPLIT_VIEW;
  ReportComponentType get unknownDefaultOpenApi => _$unknownDefaultOpenApi;
  ReportComponentType valueOf(String name) => _$valueOf(name);
  BuiltSet<ReportComponentType> get values => _$values;
}

mixin _$ReportComponentTypeMixin {
  // ignore: non_constant_identifier_names
  _$ReportComponentTypeMeta get ReportComponentType =>
      const _$ReportComponentTypeMeta();
}

Serializer<ReportComponentType> _$reportComponentTypeSerializer =
    _$ReportComponentTypeSerializer();

class _$ReportComponentTypeSerializer
    implements PrimitiveSerializer<ReportComponentType> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'HEADING': 'HEADING',
    'RICH_TEXT': 'RICH_TEXT',
    'ENTITY_TABLE': 'ENTITY_TABLE',
    'TIME_SERIES_TABLE': 'TIME_SERIES_TABLE',
    'ALARM_TABLE': 'ALARM_TABLE',
    'TIME_SERIES_CHART': 'TIME_SERIES_CHART',
    'LATEST_CHART': 'LATEST_CHART',
    'DASHBOARD': 'DASHBOARD',
    'IMAGE': 'IMAGE',
    'SUB_REPORT': 'SUB_REPORT',
    'PAGE_BREAK': 'PAGE_BREAK',
    'ERROR': 'ERROR',
    'DIVIDER': 'DIVIDER',
    'SPLIT_VIEW': 'SPLIT_VIEW',
    'unknownDefaultOpenApi': 'unknown_default_open_api',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'HEADING': 'HEADING',
    'RICH_TEXT': 'RICH_TEXT',
    'ENTITY_TABLE': 'ENTITY_TABLE',
    'TIME_SERIES_TABLE': 'TIME_SERIES_TABLE',
    'ALARM_TABLE': 'ALARM_TABLE',
    'TIME_SERIES_CHART': 'TIME_SERIES_CHART',
    'LATEST_CHART': 'LATEST_CHART',
    'DASHBOARD': 'DASHBOARD',
    'IMAGE': 'IMAGE',
    'SUB_REPORT': 'SUB_REPORT',
    'PAGE_BREAK': 'PAGE_BREAK',
    'ERROR': 'ERROR',
    'DIVIDER': 'DIVIDER',
    'SPLIT_VIEW': 'SPLIT_VIEW',
    'unknown_default_open_api': 'unknownDefaultOpenApi',
  };

  @override
  final Iterable<Type> types = const <Type>[ReportComponentType];
  @override
  final String wireName = 'ReportComponentType';

  @override
  Object serialize(
    Serializers serializers,
    ReportComponentType object, {
    FullType specifiedType = FullType.unspecified,
  }) => _toWire[object.name] ?? object.name;

  @override
  ReportComponentType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) => ReportComponentType.valueOf(
    _fromWire[serialized] ?? (serialized is String ? serialized : ''),
  );
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
