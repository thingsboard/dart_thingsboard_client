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

part 'platform_type.g.dart';

class PlatformType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'WEB')
  static const PlatformType WEB = _$WEB;
  @BuiltValueEnumConst(wireName: r'ANDROID')
  static const PlatformType ANDROID = _$ANDROID;
  @BuiltValueEnumConst(wireName: r'IOS')
  static const PlatformType IOS = _$IOS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const PlatformType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<PlatformType> get serializer => _$platformTypeSerializer;

  const PlatformType._(String name) : super(name);

  static BuiltSet<PlatformType> get values => _$values;
  static PlatformType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class PlatformTypeMixin = Object with _$PlatformTypeMixin;
