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

part 'white_labeling_type.g.dart';

class WhiteLabelingType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LOGIN')
  static const WhiteLabelingType LOGIN = _$LOGIN;
  @BuiltValueEnumConst(wireName: r'GENERAL')
  static const WhiteLabelingType GENERAL = _$GENERAL;
  @BuiltValueEnumConst(wireName: r'MAIL_TEMPLATES')
  static const WhiteLabelingType MAIL_TEMPLATES = _$MAIL_TEMPLATES;
  @BuiltValueEnumConst(wireName: r'SELF_REGISTRATION')
  static const WhiteLabelingType SELF_REGISTRATION = _$SELF_REGISTRATION;
  @BuiltValueEnumConst(wireName: r'TERMS_OF_USE')
  static const WhiteLabelingType TERMS_OF_USE = _$TERMS_OF_USE;
  @BuiltValueEnumConst(wireName: r'PRIVACY_POLICY')
  static const WhiteLabelingType PRIVACY_POLICY = _$PRIVACY_POLICY;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const WhiteLabelingType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<WhiteLabelingType> get serializer =>
      _$whiteLabelingTypeSerializer;

  const WhiteLabelingType._(String name) : super(name);

  static BuiltSet<WhiteLabelingType> get values => _$values;
  static WhiteLabelingType valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class WhiteLabelingTypeMixin = Object with _$WhiteLabelingTypeMixin;
