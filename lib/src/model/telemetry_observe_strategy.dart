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

part 'telemetry_observe_strategy.g.dart';

/// Observation strategy for telemetry. SINGLE (0): one resource equals one single observe request. COMPOSITE_ALL (1): all resources in one composite observe request. COMPOSITE_BY_OBJECT (2): grouped composite observe requests by object.
class TelemetryObserveStrategy extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SINGLE')
  static const TelemetryObserveStrategy SINGLE = _$SINGLE;
  @BuiltValueEnumConst(wireName: r'COMPOSITE_ALL')
  static const TelemetryObserveStrategy COMPOSITE_ALL = _$COMPOSITE_ALL;
  @BuiltValueEnumConst(wireName: r'COMPOSITE_BY_OBJECT')
  static const TelemetryObserveStrategy COMPOSITE_BY_OBJECT =
      _$COMPOSITE_BY_OBJECT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TelemetryObserveStrategy unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<TelemetryObserveStrategy> get serializer =>
      _$telemetryObserveStrategySerializer;

  const TelemetryObserveStrategy._(String name) : super(name);

  static BuiltSet<TelemetryObserveStrategy> get values => _$values;
  static TelemetryObserveStrategy valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TelemetryObserveStrategyMixin = Object
    with _$TelemetryObserveStrategyMixin;
