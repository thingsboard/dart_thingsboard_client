// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'duration_alarm_condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DurationAlarmCondition extends DurationAlarmCondition {
  @override
  final TimeUnit unit;
  @override
  final AlarmConditionValueLong value;
  @override
  final AlarmConditionExpression expression;
  @override
  final AlarmConditionValueAlarmSchedule? schedule;
  @override
  final String type;

  factory _$DurationAlarmCondition([
    void Function(DurationAlarmConditionBuilder)? updates,
  ]) => (DurationAlarmConditionBuilder()..update(updates))._build();

  _$DurationAlarmCondition._({
    required this.unit,
    required this.value,
    required this.expression,
    this.schedule,
    required this.type,
  }) : super._();
  @override
  DurationAlarmCondition rebuild(
    void Function(DurationAlarmConditionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DurationAlarmConditionBuilder toBuilder() =>
      DurationAlarmConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DurationAlarmCondition &&
        unit == other.unit &&
        value == other.value &&
        expression == other.expression &&
        schedule == other.schedule &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unit.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DurationAlarmCondition')
          ..add('unit', unit)
          ..add('value', value)
          ..add('expression', expression)
          ..add('schedule', schedule)
          ..add('type', type))
        .toString();
  }
}

class DurationAlarmConditionBuilder
    implements
        Builder<DurationAlarmCondition, DurationAlarmConditionBuilder>,
        AlarmConditionBuilder {
  _$DurationAlarmCondition? _$v;

  TimeUnit? _unit;
  TimeUnit? get unit => _$this._unit;
  set unit(covariant TimeUnit? unit) => _$this._unit = unit;

  AlarmConditionValueLongBuilder? _value;
  AlarmConditionValueLongBuilder get value =>
      _$this._value ??= AlarmConditionValueLongBuilder();
  set value(covariant AlarmConditionValueLongBuilder? value) =>
      _$this._value = value;

  AlarmConditionExpression? _expression;
  AlarmConditionExpression? get expression => _$this._expression;
  set expression(covariant AlarmConditionExpression? expression) =>
      _$this._expression = expression;

  AlarmConditionValueAlarmScheduleBuilder? _schedule;
  AlarmConditionValueAlarmScheduleBuilder get schedule =>
      _$this._schedule ??= AlarmConditionValueAlarmScheduleBuilder();
  set schedule(covariant AlarmConditionValueAlarmScheduleBuilder? schedule) =>
      _$this._schedule = schedule;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DurationAlarmConditionBuilder() {
    DurationAlarmCondition._defaults(this);
  }

  DurationAlarmConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unit = $v.unit;
      _value = $v.value.toBuilder();
      _expression = $v.expression;
      _schedule = $v.schedule?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DurationAlarmCondition other) {
    _$v = other as _$DurationAlarmCondition;
  }

  @override
  void update(void Function(DurationAlarmConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DurationAlarmCondition build() => _build();

  _$DurationAlarmCondition _build() {
    _$DurationAlarmCondition _$result;
    try {
      _$result =
          _$v ??
          _$DurationAlarmCondition._(
            unit: BuiltValueNullFieldError.checkNotNull(
              unit,
              r'DurationAlarmCondition',
              'unit',
            ),
            value: value.build(),
            expression: BuiltValueNullFieldError.checkNotNull(
              expression,
              r'DurationAlarmCondition',
              'expression',
            ),
            schedule: _schedule?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DurationAlarmCondition',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'value';
        value.build();

        _$failedField = 'schedule';
        _schedule?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DurationAlarmCondition',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
