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

part 'alarm_search_status.g.dart';

class AlarmSearchStatus extends EnumClass {

  @BuiltValueEnumConst(wireName: r'ANY')
  static const AlarmSearchStatus ANY = _$ANY;
  @BuiltValueEnumConst(wireName: r'ACTIVE')
  static const AlarmSearchStatus ACTIVE = _$ACTIVE;
  @BuiltValueEnumConst(wireName: r'CLEARED')
  static const AlarmSearchStatus CLEARED = _$CLEARED;
  @BuiltValueEnumConst(wireName: r'ACK')
  static const AlarmSearchStatus ACK = _$ACK;
  @BuiltValueEnumConst(wireName: r'UNACK')
  static const AlarmSearchStatus UNACK = _$UNACK;
  @BuiltValueEnumConst(wireName: r'unknown_default_open_api', fallback: true)
  static const AlarmSearchStatus unknownDefaultOpenApi = _$unknownDefaultOpenApi;

  static Serializer<AlarmSearchStatus> get serializer => _$alarmSearchStatusSerializer;

  const AlarmSearchStatus._(String name): super(name);

  static BuiltSet<AlarmSearchStatus> get values => _$values;
  static AlarmSearchStatus valueOf(String name) => _$valueOf(name);
}

/// Optionally, enum_class can generate a mixin to go with your enum for use
/// with Angular. It exposes your enum constants as getters. So, if you mix it
/// in to your Dart component class, the values become available to the
/// corresponding Angular template.
///
/// Trigger mixin generation by writing a line like this one next to your enum.
abstract class AlarmSearchStatusMixin = Object with _$AlarmSearchStatusMixin;

