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

part 'tb_font_weight.g.dart';

class TbFontWeight extends EnumClass {
  @BuiltValueEnumConst(wireName: r'normal')
  static const TbFontWeight normal = _$normal;
  @BuiltValueEnumConst(wireName: r'bold')
  static const TbFontWeight bold = _$bold;
  @BuiltValueEnumConst(wireName: r'500')
  static const TbFontWeight n500 = _$n500;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TbFontWeight unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TbFontWeight> get serializer => _$tbFontWeightSerializer;

  const TbFontWeight._(String name) : super(name);

  static BuiltSet<TbFontWeight> get values => _$values;
  static TbFontWeight valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TbFontWeightMixin = Object with _$TbFontWeightMixin;
