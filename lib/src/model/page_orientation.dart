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

part 'page_orientation.g.dart';

class PageOrientation extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PORTRAIT')
  static const PageOrientation PORTRAIT = _$PORTRAIT;
  @BuiltValueEnumConst(wireName: r'LANDSCAPE')
  static const PageOrientation LANDSCAPE = _$LANDSCAPE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PageOrientation unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PageOrientation> get serializer =>
      _$pageOrientationSerializer;

  const PageOrientation._(String name) : super(name);

  static BuiltSet<PageOrientation> get values => _$values;
  static PageOrientation valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PageOrientationMixin = Object with _$PageOrientationMixin;
