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

part 'api_feature.g.dart';

class ApiFeature extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TRANSPORT')
  static const ApiFeature TRANSPORT = _$TRANSPORT;
  @BuiltValueEnumConst(wireName: r'DB')
  static const ApiFeature DB = _$DB;
  @BuiltValueEnumConst(wireName: r'RE')
  static const ApiFeature RE = _$RE;
  @BuiltValueEnumConst(wireName: r'JS')
  static const ApiFeature JS = _$JS;
  @BuiltValueEnumConst(wireName: r'TBEL')
  static const ApiFeature TBEL = _$TBEL;
  @BuiltValueEnumConst(wireName: r'EMAIL')
  static const ApiFeature EMAIL = _$EMAIL;
  @BuiltValueEnumConst(wireName: r'SMS')
  static const ApiFeature SMS = _$SMS;
  @BuiltValueEnumConst(wireName: r'ALARM')
  static const ApiFeature ALARM = _$ALARM;
  @BuiltValueEnumConst(wireName: r'REPORT')
  static const ApiFeature REPORT = _$REPORT;
  @BuiltValueEnumConst(wireName: r'AI')
  static const ApiFeature AI = _$AI;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiFeature unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<ApiFeature> get serializer => _$apiFeatureSerializer;

  const ApiFeature._(String name) : super(name);

  static BuiltSet<ApiFeature> get values => _$values;
  static ApiFeature valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ApiFeatureMixin = Object with _$ApiFeatureMixin;
