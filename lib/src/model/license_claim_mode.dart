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

part 'license_claim_mode.g.dart';

class LicenseClaimMode extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ONLINE')
  static const LicenseClaimMode ONLINE = _$ONLINE;
  @BuiltValueEnumConst(wireName: r'OFFLINE')
  static const LicenseClaimMode OFFLINE = _$OFFLINE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LicenseClaimMode unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<LicenseClaimMode> get serializer => _$licenseClaimModeSerializer;

  const LicenseClaimMode._(String name): super(name);

  static BuiltSet<LicenseClaimMode> get values => _$values;
  static LicenseClaimMode valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LicenseClaimModeMixin = Object with _$LicenseClaimModeMixin;

