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

part 'ota_package_type.g.dart';

class OtaPackageType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FIRMWARE')
  static const OtaPackageType FIRMWARE = _$FIRMWARE;
  @BuiltValueEnumConst(wireName: r'SOFTWARE')
  static const OtaPackageType SOFTWARE = _$SOFTWARE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const OtaPackageType unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<OtaPackageType> get serializer =>
      _$otaPackageTypeSerializer;

  const OtaPackageType._(String name) : super(name);

  static BuiltSet<OtaPackageType> get values => _$values;
  static OtaPackageType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class OtaPackageTypeMixin = Object with _$OtaPackageTypeMixin;
