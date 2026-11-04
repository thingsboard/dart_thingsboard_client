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

part 'legend_position.g.dart';

class LegendPosition extends EnumClass {

  @BuiltValueEnumConst(wireName: r'top')
  static const LegendPosition top = _$top;
  @BuiltValueEnumConst(wireName: r'bottom')
  static const LegendPosition bottom = _$bottom;
  @BuiltValueEnumConst(wireName: r'left')
  static const LegendPosition left = _$left;
  @BuiltValueEnumConst(wireName: r'right')
  static const LegendPosition right = _$right;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LegendPosition unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<LegendPosition> get serializer => _$legendPositionSerializer;

  const LegendPosition._(String name): super(name);

  static BuiltSet<LegendPosition> get values => _$values;
  static LegendPosition valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LegendPositionMixin = Object with _$LegendPositionMixin;

