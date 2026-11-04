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

part 'axis_position.g.dart';

class AxisPosition extends EnumClass {

  @BuiltValueEnumConst(wireName: r'left')
  static const AxisPosition left = _$left;
  @BuiltValueEnumConst(wireName: r'right')
  static const AxisPosition right = _$right;
  @BuiltValueEnumConst(wireName: r'top')
  static const AxisPosition top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const AxisPosition bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AxisPosition unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AxisPosition> get serializer => _$axisPositionSerializer;

  const AxisPosition._(String name): super(name);

  static BuiltSet<AxisPosition> get values => _$values;
  static AxisPosition valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AxisPositionMixin = Object with _$AxisPositionMixin;

