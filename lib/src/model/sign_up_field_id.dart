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

part 'sign_up_field_id.g.dart';

class SignUpFieldId extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EMAIL')
  static const SignUpFieldId EMAIL = _$EMAIL;
  @BuiltValueEnumConst(wireName: r'PASSWORD')
  static const SignUpFieldId PASSWORD = _$PASSWORD;
  @BuiltValueEnumConst(wireName: r'REPEAT_PASSWORD')
  static const SignUpFieldId REPEAT_PASSWORD = _$REPEAT_PASSWORD;
  @BuiltValueEnumConst(wireName: r'FIRST_NAME')
  static const SignUpFieldId FIRST_NAME = _$FIRST_NAME;
  @BuiltValueEnumConst(wireName: r'LAST_NAME')
  static const SignUpFieldId LAST_NAME = _$LAST_NAME;
  @BuiltValueEnumConst(wireName: r'PHONE')
  static const SignUpFieldId PHONE = _$PHONE;
  @BuiltValueEnumConst(wireName: r'COUNTRY')
  static const SignUpFieldId COUNTRY = _$COUNTRY;
  @BuiltValueEnumConst(wireName: r'CITY')
  static const SignUpFieldId CITY = _$CITY;
  @BuiltValueEnumConst(wireName: r'STATE')
  static const SignUpFieldId STATE = _$STATE;
  @BuiltValueEnumConst(wireName: r'ZIP')
  static const SignUpFieldId ZIP = _$ZIP;
  @BuiltValueEnumConst(wireName: r'ADDRESS')
  static const SignUpFieldId ADDRESS = _$ADDRESS;
  @BuiltValueEnumConst(wireName: r'ADDRESS2')
  static const SignUpFieldId ADDRESS2 = _$ADDRESS2;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SignUpFieldId unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SignUpFieldId> get serializer => _$signUpFieldIdSerializer;

  const SignUpFieldId._(String name) : super(name);

  static BuiltSet<SignUpFieldId> get values => _$values;
  static SignUpFieldId valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SignUpFieldIdMixin = Object with _$SignUpFieldIdMixin;
