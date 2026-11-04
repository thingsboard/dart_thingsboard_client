// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clear_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClearRule extends ClearRule {
  @override
  final BuiltSet<AlarmSearchStatus>? alarmStatuses;

  factory _$ClearRule([void Function(ClearRuleBuilder)? updates]) =>
      (ClearRuleBuilder()..update(updates))._build();

  _$ClearRule._({this.alarmStatuses}) : super._();
  @override
  ClearRule rebuild(void Function(ClearRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClearRuleBuilder toBuilder() => ClearRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClearRule && alarmStatuses == other.alarmStatuses;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alarmStatuses.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ClearRule',
    )..add('alarmStatuses', alarmStatuses)).toString();
  }
}

class ClearRuleBuilder implements Builder<ClearRule, ClearRuleBuilder> {
  _$ClearRule? _$v;

  SetBuilder<AlarmSearchStatus>? _alarmStatuses;
  SetBuilder<AlarmSearchStatus> get alarmStatuses =>
      _$this._alarmStatuses ??= SetBuilder<AlarmSearchStatus>();
  set alarmStatuses(SetBuilder<AlarmSearchStatus>? alarmStatuses) =>
      _$this._alarmStatuses = alarmStatuses;

  ClearRuleBuilder() {
    ClearRule._defaults(this);
  }

  ClearRuleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alarmStatuses = $v.alarmStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClearRule other) {
    _$v = other as _$ClearRule;
  }

  @override
  void update(void Function(ClearRuleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClearRule build() => _build();

  _$ClearRule _build() {
    _$ClearRule _$result;
    try {
      _$result = _$v ?? _$ClearRule._(alarmStatuses: _alarmStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alarmStatuses';
        _alarmStatuses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ClearRule',
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
