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

part 'page_size.g.dart';

class PageSize extends EnumClass {
  @BuiltValueEnumConst(wireName: r'A4')
  static const PageSize A4 = _$A4;
  @BuiltValueEnumConst(wireName: r'LETTER')
  static const PageSize LETTER = _$LETTER;
  @BuiltValueEnumConst(wireName: r'LEGAL')
  static const PageSize LEGAL = _$LEGAL;
  @BuiltValueEnumConst(wireName: r'A5')
  static const PageSize A5 = _$A5;
  @BuiltValueEnumConst(wireName: r'A3')
  static const PageSize A3 = _$A3;
  @BuiltValueEnumConst(wireName: r'TABLOID')
  static const PageSize TABLOID = _$TABLOID;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PageSize unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PageSize> get serializer => _$pageSizeSerializer;

  const PageSize._(String name) : super(name);

  static BuiltSet<PageSize> get values => _$values;
  static PageSize valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PageSizeMixin = Object with _$PageSizeMixin;
