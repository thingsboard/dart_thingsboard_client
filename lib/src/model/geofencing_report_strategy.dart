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

part 'geofencing_report_strategy.g.dart';

class GeofencingReportStrategy extends EnumClass {
  @BuiltValueEnumConst(wireName: r'REPORT_TRANSITION_EVENTS_ONLY')
  static const GeofencingReportStrategy REPORT_TRANSITION_EVENTS_ONLY =
      _$REPORT_TRANSITION_EVENTS_ONLY;
  @BuiltValueEnumConst(wireName: r'REPORT_PRESENCE_STATUS_ONLY')
  static const GeofencingReportStrategy REPORT_PRESENCE_STATUS_ONLY =
      _$REPORT_PRESENCE_STATUS_ONLY;
  @BuiltValueEnumConst(
    wireName: r'REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS',
  )
  static const GeofencingReportStrategy
  REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS =
      _$REPORT_TRANSITION_EVENTS_AND_PRESENCE_STATUS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const GeofencingReportStrategy unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<GeofencingReportStrategy> get serializer =>
      _$geofencingReportStrategySerializer;

  const GeofencingReportStrategy._(String name) : super(name);

  static BuiltSet<GeofencingReportStrategy> get values => _$values;
  static GeofencingReportStrategy valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class GeofencingReportStrategyMixin = Object
    with _$GeofencingReportStrategyMixin;
