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

part 'api_usage_record_key.g.dart';

class ApiUsageRecordKey extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TRANSPORT_MSG_COUNT')
  static const ApiUsageRecordKey TRANSPORT_MSG_COUNT = _$TRANSPORT_MSG_COUNT;
  @BuiltValueEnumConst(wireName: r'TRANSPORT_DP_COUNT')
  static const ApiUsageRecordKey TRANSPORT_DP_COUNT = _$TRANSPORT_DP_COUNT;
  @BuiltValueEnumConst(wireName: r'STORAGE_DP_COUNT')
  static const ApiUsageRecordKey STORAGE_DP_COUNT = _$STORAGE_DP_COUNT;
  @BuiltValueEnumConst(wireName: r'RE_EXEC_COUNT')
  static const ApiUsageRecordKey RE_EXEC_COUNT = _$RE_EXEC_COUNT;
  @BuiltValueEnumConst(wireName: r'JS_EXEC_COUNT')
  static const ApiUsageRecordKey JS_EXEC_COUNT = _$JS_EXEC_COUNT;
  @BuiltValueEnumConst(wireName: r'TBEL_EXEC_COUNT')
  static const ApiUsageRecordKey TBEL_EXEC_COUNT = _$TBEL_EXEC_COUNT;
  @BuiltValueEnumConst(wireName: r'EMAIL_EXEC_COUNT')
  static const ApiUsageRecordKey EMAIL_EXEC_COUNT = _$EMAIL_EXEC_COUNT;
  @BuiltValueEnumConst(wireName: r'SMS_EXEC_COUNT')
  static const ApiUsageRecordKey SMS_EXEC_COUNT = _$SMS_EXEC_COUNT;
  @BuiltValueEnumConst(wireName: r'CREATED_ALARMS_COUNT')
  static const ApiUsageRecordKey CREATED_ALARMS_COUNT = _$CREATED_ALARMS_COUNT;
  @BuiltValueEnumConst(wireName: r'ACTIVE_DEVICES')
  static const ApiUsageRecordKey ACTIVE_DEVICES = _$ACTIVE_DEVICES;
  @BuiltValueEnumConst(wireName: r'INACTIVE_DEVICES')
  static const ApiUsageRecordKey INACTIVE_DEVICES = _$INACTIVE_DEVICES;
  @BuiltValueEnumConst(wireName: r'GENERATED_REPORTS_COUNT')
  static const ApiUsageRecordKey GENERATED_REPORTS_COUNT =
      _$GENERATED_REPORTS_COUNT;
  @BuiltValueEnumConst(wireName: r'AI_CREDITS_COUNT')
  static const ApiUsageRecordKey AI_CREDITS_COUNT = _$AI_CREDITS_COUNT;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const ApiUsageRecordKey unknownDefaultOpenApi =
      _$unknownDefaultOpenApi;

  static Serializer<ApiUsageRecordKey> get serializer =>
      _$apiUsageRecordKeySerializer;

  const ApiUsageRecordKey._(String name) : super(name);

  static BuiltSet<ApiUsageRecordKey> get values => _$values;
  static ApiUsageRecordKey valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class ApiUsageRecordKeyMixin = Object with _$ApiUsageRecordKeyMixin;
