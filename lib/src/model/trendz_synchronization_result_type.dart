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

part 'trendz_synchronization_result_type.g.dart';

class TrendzSynchronizationResultType extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SYNC_NOT_INITIALIZED')
  static const TrendzSynchronizationResultType SYNC_NOT_INITIALIZED =
      _$SYNC_NOT_INITIALIZED;
  @BuiltValueEnumConst(wireName: r'SYNC_COMPLETED')
  static const TrendzSynchronizationResultType SYNC_COMPLETED =
      _$SYNC_COMPLETED;
  @BuiltValueEnumConst(wireName: r'SYNC_DISABLED')
  static const TrendzSynchronizationResultType SYNC_DISABLED = _$SYNC_DISABLED;
  @BuiltValueEnumConst(wireName: r'TRENDZ_UNSUPPORTED_VERSION')
  static const TrendzSynchronizationResultType TRENDZ_UNSUPPORTED_VERSION =
      _$TRENDZ_UNSUPPORTED_VERSION;
  @BuiltValueEnumConst(wireName: r'TRENDZ_AUTH_INVALID')
  static const TrendzSynchronizationResultType TRENDZ_AUTH_INVALID =
      _$TRENDZ_AUTH_INVALID;
  @BuiltValueEnumConst(wireName: r'TRENDZ_URL_UNREACHABLE')
  static const TrendzSynchronizationResultType TRENDZ_URL_UNREACHABLE =
      _$TRENDZ_URL_UNREACHABLE;
  @BuiltValueEnumConst(wireName: r'TB_URL_MISMATCH')
  static const TrendzSynchronizationResultType TB_URL_MISMATCH =
      _$TB_URL_MISMATCH;
  @BuiltValueEnumConst(wireName: r'TB_URL_UNREACHABLE')
  static const TrendzSynchronizationResultType TB_URL_UNREACHABLE =
      _$TB_URL_UNREACHABLE;
  @BuiltValueEnumConst(wireName: r'TB_AUTH_INVALID')
  static const TrendzSynchronizationResultType TB_AUTH_INVALID =
      _$TB_AUTH_INVALID;
  @BuiltValueEnumConst(wireName: r'SYNC_INTERNAL_ERROR')
  static const TrendzSynchronizationResultType SYNC_INTERNAL_ERROR =
      _$SYNC_INTERNAL_ERROR;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const TrendzSynchronizationResultType unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<TrendzSynchronizationResultType> get serializer =>
      _$trendzSynchronizationResultTypeSerializer;

  const TrendzSynchronizationResultType._(String name) : super(name);

  static BuiltSet<TrendzSynchronizationResultType> get values => _$values;
  static TrendzSynchronizationResultType valueOf(String name) =>
      _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class TrendzSynchronizationResultTypeMixin = Object
    with _$TrendzSynchronizationResultTypeMixin;
