// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repeating_alarm_condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RepeatingAlarmCondition extends RepeatingAlarmCondition {
  @override
  final AlarmConditionValueInteger count;
  @override
  final AlarmConditionExpression expression;
  @override
  final AlarmConditionValueAlarmSchedule? schedule;
  @override
  final String type;

  factory _$RepeatingAlarmCondition([
    void Function(RepeatingAlarmConditionBuilder)? updates,
  ]) => (RepeatingAlarmConditionBuilder()..update(updates))._build();

  _$RepeatingAlarmCondition._({
    required this.count,
    required this.expression,
    this.schedule,
    required this.type,
  }) : super._();
  @override
  RepeatingAlarmCondition rebuild(
    void Function(RepeatingAlarmConditionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RepeatingAlarmConditionBuilder toBuilder() =>
      RepeatingAlarmConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepeatingAlarmCondition &&
        count == other.count &&
        expression == other.expression &&
        schedule == other.schedule &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, count.hashCode);
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RepeatingAlarmCondition')
          ..add('count', count)
          ..add('expression', expression)
          ..add('schedule', schedule)
          ..add('type', type))
        .toString();
  }
}

class RepeatingAlarmConditionBuilder
    implements
        Builder<RepeatingAlarmCondition, RepeatingAlarmConditionBuilder>,
        AlarmConditionBuilder {
  _$RepeatingAlarmCondition? _$v;

  AlarmConditionValueIntegerBuilder? _count;
  AlarmConditionValueIntegerBuilder get count =>
      _$this._count ??= AlarmConditionValueIntegerBuilder();
  set count(covariant AlarmConditionValueIntegerBuilder? count) =>
      _$this._count = count;

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

  RepeatingAlarmConditionBuilder() {
    RepeatingAlarmCondition._defaults(this);
  }

  RepeatingAlarmConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count.toBuilder();
      _expression = $v.expression;
      _schedule = $v.schedule?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RepeatingAlarmCondition other) {
    _$v = other as _$RepeatingAlarmCondition;
  }

  @override
  void update(void Function(RepeatingAlarmConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepeatingAlarmCondition build() => _build();

  _$RepeatingAlarmCondition _build() {
    _$RepeatingAlarmCondition _$result;
    try {
      _$result =
          _$v ??
          _$RepeatingAlarmCondition._(
            count: count.build(),
            expression: BuiltValueNullFieldError.checkNotNull(
              expression,
              r'RepeatingAlarmCondition',
              'expression',
            ),
            schedule: _schedule?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RepeatingAlarmCondition',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'count';
        count.build();

        _$failedField = 'schedule';
        _schedule?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RepeatingAlarmCondition',
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
