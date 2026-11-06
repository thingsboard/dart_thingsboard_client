// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmRule extends AlarmRule {
  @override
  final AlarmCondition condition;
  @override
  final String? alarmDetails;
  @override
  final DashboardId? dashboardId;

  factory _$AlarmRule([void Function(AlarmRuleBuilder)? updates]) =>
      (AlarmRuleBuilder()..update(updates))._build();

  _$AlarmRule._({required this.condition, this.alarmDetails, this.dashboardId})
    : super._();
  @override
  AlarmRule rebuild(void Function(AlarmRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmRuleBuilder toBuilder() => AlarmRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmRule &&
        condition == other.condition &&
        alarmDetails == other.alarmDetails &&
        dashboardId == other.dashboardId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, alarmDetails.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmRule')
          ..add('condition', condition)
          ..add('alarmDetails', alarmDetails)
          ..add('dashboardId', dashboardId))
        .toString();
  }
}

class AlarmRuleBuilder implements Builder<AlarmRule, AlarmRuleBuilder> {
  _$AlarmRule? _$v;

  AlarmCondition? _condition;
  AlarmCondition? get condition => _$this._condition;
  set condition(AlarmCondition? condition) => _$this._condition = condition;

  String? _alarmDetails;
  String? get alarmDetails => _$this._alarmDetails;
  set alarmDetails(String? alarmDetails) => _$this._alarmDetails = alarmDetails;

  DashboardIdBuilder? _dashboardId;
  DashboardIdBuilder get dashboardId =>
      _$this._dashboardId ??= DashboardIdBuilder();
  set dashboardId(DashboardIdBuilder? dashboardId) =>
      _$this._dashboardId = dashboardId;

  AlarmRuleBuilder() {
    AlarmRule._defaults(this);
  }

  AlarmRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _condition = $v.condition;
      _alarmDetails = $v.alarmDetails;
      _dashboardId = $v.dashboardId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmRule other) {
    _$v = other as _$AlarmRule;
  }

  @override
  void update(void Function(AlarmRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmRule build() => _build();

  _$AlarmRule _build() {
    _$AlarmRule _$result;
    try {
      _$result =
          _$v ??
          _$AlarmRule._(
            condition: BuiltValueNullFieldError.checkNotNull(
              condition,
              r'AlarmRule',
              'condition',
            ),
            alarmDetails: alarmDetails,
            dashboardId: _dashboardId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmRule',
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
