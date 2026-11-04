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

part 'two_fa_provider_type.g.dart';

class TwoFaProviderType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TOTP')
  static const TwoFaProviderType TOTP = _$TOTP;
  @BuiltValueEnumConst(wireName: r'SMS')
  static const TwoFaProviderType SMS = _$SMS;
  @BuiltValueEnumConst(wireName: r'EMAIL')
  static const TwoFaProviderType EMAIL = _$EMAIL;
  @BuiltValueEnumConst(wireName: r'BACKUP_CODE')
  static const TwoFaProviderType BACKUP_CODE = _$BACKUP_CODE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TwoFaProviderType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<TwoFaProviderType> get serializer =>
      _$twoFaProviderTypeSerializer;

  const TwoFaProviderType._(String name) : super(name);

  static BuiltSet<TwoFaProviderType> get values => _$values;
  static TwoFaProviderType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TwoFaProviderTypeMixin = Object with _$TwoFaProviderTypeMixin;
