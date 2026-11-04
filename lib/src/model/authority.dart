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

part 'authority.g.dart';

class Authority extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SYS_ADMIN')
  static const Authority SYS_ADMIN = _$SYS_ADMIN;
  @BuiltValueEnumConst(wireName: r'TENANT_ADMIN')
  static const Authority TENANT_ADMIN = _$TENANT_ADMIN;
  @BuiltValueEnumConst(wireName: r'CUSTOMER_USER')
  static const Authority CUSTOMER_USER = _$CUSTOMER_USER;
  @BuiltValueEnumConst(wireName: r'REFRESH_TOKEN')
  static const Authority REFRESH_TOKEN = _$REFRESH_TOKEN;
  @BuiltValueEnumConst(wireName: r'PRE_VERIFICATION_TOKEN')
  static const Authority PRE_VERIFICATION_TOKEN = _$PRE_VERIFICATION_TOKEN;
  @BuiltValueEnumConst(wireName: r'MFA_CONFIGURATION_TOKEN')
  static const Authority MFA_CONFIGURATION_TOKEN = _$MFA_CONFIGURATION_TOKEN;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const Authority unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<Authority> get serializer => _$authoritySerializer;

  const Authority._(String name) : super(name);

  static BuiltSet<Authority> get values => _$values;
  static Authority valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AuthorityMixin = Object with _$AuthorityMixin;
