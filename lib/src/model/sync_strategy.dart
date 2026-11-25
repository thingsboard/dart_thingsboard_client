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

part 'sync_strategy.g.dart';

class SyncStrategy extends EnumClass {
  @BuiltValueEnumConst(wireName: r'MERGE')
  static const SyncStrategy MERGE = _$MERGE;
  @BuiltValueEnumConst(wireName: r'OVERWRITE')
  static const SyncStrategy OVERWRITE = _$OVERWRITE;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const SyncStrategy unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<SyncStrategy> get serializer => _$syncStrategySerializer;

  const SyncStrategy._(String name) : super(name);

  static BuiltSet<SyncStrategy> get values => _$values;
  static SyncStrategy valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class SyncStrategyMixin = Object with _$SyncStrategyMixin;
