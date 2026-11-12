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

part 'tb_font_style.g.dart';

class TbFontStyle extends EnumClass {
  @BuiltValueEnumConst(wireName: r'normal')
  static const TbFontStyle normal = _$normal;
  @BuiltValueEnumConst(wireName: r'italic')
  static const TbFontStyle italic = _$italic;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TbFontStyle unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TbFontStyle> get serializer => _$tbFontStyleSerializer;

  const TbFontStyle._(String name) : super(name);

  static BuiltSet<TbFontStyle> get values => _$values;
  static TbFontStyle valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TbFontStyleMixin = Object with _$TbFontStyleMixin;
