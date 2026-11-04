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

part 'sign_up_result.g.dart';

class SignUpResult extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SUCCESS')
  static const SignUpResult SUCCESS = _$SUCCESS;
  @BuiltValueEnumConst(wireName: r'INACTIVE_USER_EXISTS')
  static const SignUpResult INACTIVE_USER_EXISTS = _$INACTIVE_USER_EXISTS;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SignUpResult unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SignUpResult> get serializer => _$signUpResultSerializer;

  const SignUpResult._(String name) : super(name);

  static BuiltSet<SignUpResult> get values => _$values;
  static SignUpResult valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SignUpResultMixin = Object with _$SignUpResultMixin;
