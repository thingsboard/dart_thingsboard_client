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

part 'license_claim_status.g.dart';

class LicenseClaimStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'NOT_REQUESTED')
  static const LicenseClaimStatus NOT_REQUESTED = _$NOT_REQUESTED;
  @BuiltValueEnumConst(wireName: r'PENDING')
  static const LicenseClaimStatus PENDING = _$PENDING;
  @BuiltValueEnumConst(wireName: r'EXPIRED')
  static const LicenseClaimStatus EXPIRED = _$EXPIRED;
  @BuiltValueEnumConst(wireName: r'ACTIVATED')
  static const LicenseClaimStatus ACTIVATED = _$ACTIVATED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const LicenseClaimStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<LicenseClaimStatus> get serializer => _$licenseClaimStatusSerializer;

  const LicenseClaimStatus._(String name): super(name);

  static BuiltSet<LicenseClaimStatus> get values => _$values;
  static LicenseClaimStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class LicenseClaimStatusMixin = Object with _$LicenseClaimStatusMixin;

