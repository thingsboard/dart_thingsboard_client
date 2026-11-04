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

part 'trendz_synchronization_status.g.dart';

class TrendzSynchronizationStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'NOT_AVAILABLE')
  static const TrendzSynchronizationStatus NOT_AVAILABLE = _$NOT_AVAILABLE;
  @BuiltValueEnumConst(wireName: r'AVAILABLE')
  static const TrendzSynchronizationStatus AVAILABLE = _$AVAILABLE;
  @BuiltValueEnumConst(wireName: r'SYNCED')
  static const TrendzSynchronizationStatus SYNCED = _$SYNCED;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TrendzSynchronizationStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<TrendzSynchronizationStatus> get serializer => _$trendzSynchronizationStatusSerializer;

  const TrendzSynchronizationStatus._(String name): super(name);

  static BuiltSet<TrendzSynchronizationStatus> get values => _$values;
  static TrendzSynchronizationStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TrendzSynchronizationStatusMixin = Object with _$TrendzSynchronizationStatusMixin;

