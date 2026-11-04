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

part 'font_weight.g.dart';

class FontWeight extends EnumClass {

  @BuiltValueEnumConst(wireName: r'normal')
  static const FontWeight normal = _$normal;
  @BuiltValueEnumConst(wireName: r'bold')
  static const FontWeight bold = _$bold;
  @BuiltValueEnumConst(wireName: r'500')
  static const FontWeight n500 = _$n500;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const FontWeight unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<FontWeight> get serializer => _$fontWeightSerializer;

  const FontWeight._(String name): super(name);

  static BuiltSet<FontWeight> get values => _$values;
  static FontWeight valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class FontWeightMixin = Object with _$FontWeightMixin;

