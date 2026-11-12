// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'report_component_type.g.dart';

class ReportComponentType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'HEADING')
  static const ReportComponentType HEADING = _$HEADING;
  @BuiltValueEnumConst(wireName: r'RICH_TEXT')
  static const ReportComponentType RICH_TEXT = _$RICH_TEXT;
  @BuiltValueEnumConst(wireName: r'ENTITY_TABLE')
  static const ReportComponentType ENTITY_TABLE = _$ENTITY_TABLE;
  @BuiltValueEnumConst(wireName: r'TIME_SERIES_TABLE')
  static const ReportComponentType TIME_SERIES_TABLE = _$TIME_SERIES_TABLE;
  @BuiltValueEnumConst(wireName: r'ALARM_TABLE')
  static const ReportComponentType ALARM_TABLE = _$ALARM_TABLE;
  @BuiltValueEnumConst(wireName: r'TIME_SERIES_CHART')
  static const ReportComponentType TIME_SERIES_CHART = _$TIME_SERIES_CHART;
  @BuiltValueEnumConst(wireName: r'LATEST_CHART')
  static const ReportComponentType LATEST_CHART = _$LATEST_CHART;
  @BuiltValueEnumConst(wireName: r'DASHBOARD')
  static const ReportComponentType DASHBOARD = _$DASHBOARD;
  @BuiltValueEnumConst(wireName: r'IMAGE')
  static const ReportComponentType IMAGE = _$IMAGE;
  @BuiltValueEnumConst(wireName: r'SUB_REPORT')
  static const ReportComponentType SUB_REPORT = _$SUB_REPORT;
  @BuiltValueEnumConst(wireName: r'PAGE_BREAK')
  static const ReportComponentType PAGE_BREAK = _$PAGE_BREAK;
  @BuiltValueEnumConst(wireName: r'ERROR')
  static const ReportComponentType ERROR = _$ERROR;
  @BuiltValueEnumConst(wireName: r'DIVIDER')
  static const ReportComponentType DIVIDER = _$DIVIDER;
  @BuiltValueEnumConst(wireName: r'SPLIT_VIEW')
  static const ReportComponentType SPLIT_VIEW = _$SPLIT_VIEW;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ReportComponentType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<ReportComponentType> get serializer =>
      _$reportComponentTypeSerializer;

  const ReportComponentType._(String name) : super(name);

  static BuiltSet<ReportComponentType> get values => _$values;
  static ReportComponentType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ReportComponentTypeMixin = Object
    with _$ReportComponentTypeMixin;
