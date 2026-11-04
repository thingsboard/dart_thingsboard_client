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

part 'text_alignment.g.dart';

class TextAlignment extends EnumClass {

  @BuiltValueEnumConst(wireName: r'center')
  static const TextAlignment center = _$center;
  @BuiltValueEnumConst(wireName: r'right')
  static const TextAlignment right = _$right;
  @BuiltValueEnumConst(wireName: r'left')
  static const TextAlignment left = _$left;
  @BuiltValueEnumConst(wireName: r'justify')
  static const TextAlignment justify = _$justify;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TextAlignment unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TextAlignment> get serializer => _$textAlignmentSerializer;

  const TextAlignment._(String name): super(name);

  static BuiltSet<TextAlignment> get values => _$values;
  static TextAlignment valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TextAlignmentMixin = Object with _$TextAlignmentMixin;

