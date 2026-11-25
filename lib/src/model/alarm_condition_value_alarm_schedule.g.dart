// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition_value_alarm_schedule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmConditionValueAlarmSchedule
    extends AlarmConditionValueAlarmSchedule {
  @override
  final AlarmSchedule? staticValue;
  @override
  final String? dynamicValueArgument;

  factory _$AlarmConditionValueAlarmSchedule([
    void Function(AlarmConditionValueAlarmScheduleBuilder)? updates,
  ]) => (AlarmConditionValueAlarmScheduleBuilder()..update(updates))._build();

  _$AlarmConditionValueAlarmSchedule._({
    this.staticValue,
    this.dynamicValueArgument,
  }) : super._();
  @override
  AlarmConditionValueAlarmSchedule rebuild(
    void Function(AlarmConditionValueAlarmScheduleBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmConditionValueAlarmScheduleBuilder toBuilder() =>
      AlarmConditionValueAlarmScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmConditionValueAlarmSchedule &&
        staticValue == other.staticValue &&
        dynamicValueArgument == other.dynamicValueArgument;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, staticValue.hashCode);
    _$hash = $jc(_$hash, dynamicValueArgument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmConditionValueAlarmSchedule')
          ..add('staticValue', staticValue)
          ..add('dynamicValueArgument', dynamicValueArgument))
        .toString();
  }
}

class AlarmConditionValueAlarmScheduleBuilder
    implements
        Builder<
          AlarmConditionValueAlarmSchedule,
          AlarmConditionValueAlarmScheduleBuilder
        > {
  _$AlarmConditionValueAlarmSchedule? _$v;

  AlarmSchedule? _staticValue;
  AlarmSchedule? get staticValue => _$this._staticValue;
  set staticValue(AlarmSchedule? staticValue) =>
      _$this._staticValue = staticValue;

  String? _dynamicValueArgument;
  String? get dynamicValueArgument => _$this._dynamicValueArgument;
  set dynamicValueArgument(String? dynamicValueArgument) =>
      _$this._dynamicValueArgument = dynamicValueArgument;

  AlarmConditionValueAlarmScheduleBuilder() {
    AlarmConditionValueAlarmSchedule._defaults(this);
  }

  AlarmConditionValueAlarmScheduleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staticValue = $v.staticValue;
      _dynamicValueArgument = $v.dynamicValueArgument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmConditionValueAlarmSchedule other) {
    _$v = other as _$AlarmConditionValueAlarmSchedule;
  }

  @override
  void update(void Function(AlarmConditionValueAlarmScheduleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmConditionValueAlarmSchedule build() => _build();

  _$AlarmConditionValueAlarmSchedule _build() {
    final _$result =
        _$v ??
        _$AlarmConditionValueAlarmSchedule._(
          staticValue: staticValue,
          dynamicValueArgument: dynamicValueArgument,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
