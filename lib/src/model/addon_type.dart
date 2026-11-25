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

part 'addon_type.g.dart';

class AddonType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EDGE')
  static const AddonType EDGE = _$EDGE;
  @BuiltValueEnumConst(wireName: r'TRENDZ')
  static const AddonType TRENDZ = _$TRENDZ;
  @BuiltValueEnumConst(wireName: r'WHITE_LABELING')
  static const AddonType WHITE_LABELING = _$WHITE_LABELING;
  @BuiltValueEnumConst(wireName: r'PROFESSIONAL_UPGRADE')
  static const AddonType PROFESSIONAL_UPGRADE = _$PROFESSIONAL_UPGRADE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AddonType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AddonType> get serializer => _$addonTypeSerializer;

  const AddonType._(String name) : super(name);

  static BuiltSet<AddonType> get values => _$values;
  static AddonType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AddonTypeMixin = Object with _$AddonTypeMixin;
