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

part 'doughnut_layout.g.dart';

class DoughnutLayout extends EnumClass {

  @BuiltValueEnumConst(wireName: r'default')
  static const DoughnutLayout default_ = _$default_;
  @BuiltValueEnumConst(wireName: r'with_total')
  static const DoughnutLayout withTotal = _$withTotal;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const DoughnutLayout unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<DoughnutLayout> get serializer => _$doughnutLayoutSerializer;

  const DoughnutLayout._(String name): super(name);

  static BuiltSet<DoughnutLayout> get values => _$values;
  static DoughnutLayout valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class DoughnutLayoutMixin = Object with _$DoughnutLayoutMixin;

