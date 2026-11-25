// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_alarm_condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SimpleAlarmCondition extends SimpleAlarmCondition {
  @override
  final AlarmConditionExpression expression;
  @override
  final AlarmConditionValueAlarmSchedule? schedule;
  @override
  final String type;

  factory _$SimpleAlarmCondition([
    void Function(SimpleAlarmConditionBuilder)? updates,
  ]) => (SimpleAlarmConditionBuilder()..update(updates))._build();

  _$SimpleAlarmCondition._({
    required this.expression,
    this.schedule,
    required this.type,
  }) : super._();
  @override
  SimpleAlarmCondition rebuild(
    void Function(SimpleAlarmConditionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SimpleAlarmConditionBuilder toBuilder() =>
      SimpleAlarmConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleAlarmCondition &&
        expression == other.expression &&
        schedule == other.schedule &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, expression.hashCode);
    _$hash = $jc(_$hash, schedule.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SimpleAlarmCondition')
          ..add('expression', expression)
          ..add('schedule', schedule)
          ..add('type', type))
        .toString();
  }
}

class SimpleAlarmConditionBuilder
    implements
        Builder<SimpleAlarmCondition, SimpleAlarmConditionBuilder>,
        AlarmConditionBuilder {
  _$SimpleAlarmCondition? _$v;

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

  SimpleAlarmConditionBuilder() {
    SimpleAlarmCondition._defaults(this);
  }

  SimpleAlarmConditionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _schedule = $v.schedule?.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SimpleAlarmCondition other) {
    _$v = other as _$SimpleAlarmCondition;
  }

  @override
  void update(void Function(SimpleAlarmConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SimpleAlarmCondition build() => _build();

  _$SimpleAlarmCondition _build() {
    _$SimpleAlarmCondition _$result;
    try {
      _$result =
          _$v ??
          _$SimpleAlarmCondition._(
            expression: BuiltValueNullFieldError.checkNotNull(
              expression,
              r'SimpleAlarmCondition',
              'expression',
            ),
            schedule: _schedule?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'SimpleAlarmCondition',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'schedule';
        _schedule?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SimpleAlarmCondition',
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
