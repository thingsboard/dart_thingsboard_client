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

part 'alarm_status.g.dart';

class AlarmStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ACTIVE_UNACK')
  static const AlarmStatus ACTIVE_UNACK = _$ACTIVE_UNACK;
  @BuiltValueEnumConst(wireName: r'ACTIVE_ACK')
  static const AlarmStatus ACTIVE_ACK = _$ACTIVE_ACK;
  @BuiltValueEnumConst(wireName: r'CLEARED_UNACK')
  static const AlarmStatus CLEARED_UNACK = _$CLEARED_UNACK;
  @BuiltValueEnumConst(wireName: r'CLEARED_ACK')
  static const AlarmStatus CLEARED_ACK = _$CLEARED_ACK;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlarmStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AlarmStatus> get serializer => _$alarmStatusSerializer;

  const AlarmStatus._(String name): super(name);

  static BuiltSet<AlarmStatus> get values => _$values;
  static AlarmStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AlarmStatusMixin = Object with _$AlarmStatusMixin;

