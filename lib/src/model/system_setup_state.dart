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

part 'system_setup_state.g.dart';

class SystemSetupState extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LICENSE_REQUIRED')
  static const SystemSetupState LICENSE_REQUIRED = _$LICENSE_REQUIRED;
  @BuiltValueEnumConst(wireName: r'ACCOUNT_REQUIRED')
  static const SystemSetupState ACCOUNT_REQUIRED = _$ACCOUNT_REQUIRED;
  @BuiltValueEnumConst(wireName: r'NON_PRODUCTION_CONFIRMATION_REQUIRED')
  static const SystemSetupState NON_PRODUCTION_CONFIRMATION_REQUIRED =
      _$NON_PRODUCTION_CONFIRMATION_REQUIRED;
  @BuiltValueEnumConst(wireName: r'READY')
  static const SystemSetupState READY = _$READY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SystemSetupState unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SystemSetupState> get serializer =>
      _$systemSetupStateSerializer;

  const SystemSetupState._(String name) : super(name);

  static BuiltSet<SystemSetupState> get values => _$values;
  static SystemSetupState valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SystemSetupStateMixin = Object with _$SystemSetupStateMixin;
