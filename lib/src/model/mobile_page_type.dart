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

part 'mobile_page_type.g.dart';

class MobilePageType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DEFAULT')
  static const MobilePageType DEFAULT = _$DEFAULT;
  @BuiltValueEnumConst(wireName: r'DASHBOARD')
  static const MobilePageType DASHBOARD = _$DASHBOARD;
  @BuiltValueEnumConst(wireName: r'WEB_VIEW')
  static const MobilePageType WEB_VIEW = _$WEB_VIEW;
  @BuiltValueEnumConst(wireName: r'CUSTOM')
  static const MobilePageType CUSTOM = _$CUSTOM;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const MobilePageType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<MobilePageType> get serializer =>
      _$mobilePageTypeSerializer;

  const MobilePageType._(String name) : super(name);

  static BuiltSet<MobilePageType> get values => _$values;
  static MobilePageType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class MobilePageTypeMixin = Object with _$MobilePageTypeMixin;
