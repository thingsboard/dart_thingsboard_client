// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_condition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AlarmConditionBuilder {
  void replace(AlarmCondition other);
  void update(void Function(AlarmConditionBuilder) updates);
  AlarmConditionExpression? get expression;
  set expression(AlarmConditionExpression? expression);

  AlarmConditionValueAlarmScheduleBuilder get schedule;
  set schedule(AlarmConditionValueAlarmScheduleBuilder? schedule);

  String? get type;
  set type(String? type);
}

class _$$AlarmCondition extends $AlarmCondition {
  @override
  final AlarmConditionExpression expression;
  @override
  final AlarmConditionValueAlarmSchedule? schedule;
  @override
  final String type;

  factory _$$AlarmCondition([void Function($AlarmConditionBuilder)? updates]) =>
      ($AlarmConditionBuilder()..update(updates))._build();

  _$$AlarmCondition._({
    required this.expression,
    this.schedule,
    required this.type,
  }) : super._();
  @override
  $AlarmCondition rebuild(void Function($AlarmConditionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AlarmConditionBuilder toBuilder() => $AlarmConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AlarmCondition &&
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
    return (newBuiltValueToStringHelper(r'$AlarmCondition')
          ..add('expression', expression)
          ..add('schedule', schedule)
          ..add('type', type))
        .toString();
  }
}

class $AlarmConditionBuilder
    implements
        Builder<$AlarmCondition, $AlarmConditionBuilder>,
        AlarmConditionBuilder {
  _$$AlarmCondition? _$v;

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

  $AlarmConditionBuilder() {
    $AlarmCondition._defaults(this);
  }

  $AlarmConditionBuilder get _$this {
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
  void replace(covariant $AlarmCondition other) {
    _$v = other as _$$AlarmCondition;
  }

  @override
  void update(void Function($AlarmConditionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AlarmCondition build() => _build();

  _$$AlarmCondition _build() {
    _$$AlarmCondition _$result;
    try {
      _$result =
          _$v ??
          _$$AlarmCondition._(
            expression: BuiltValueNullFieldError.checkNotNull(
              expression,
              r'$AlarmCondition',
              'expression',
            ),
            schedule: _schedule?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'$AlarmCondition',
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
          r'$AlarmCondition',
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
