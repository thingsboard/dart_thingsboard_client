// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmNotificationRuleTriggerConfig
    extends AlarmNotificationRuleTriggerConfig {
  @override
  final BuiltSet<AlarmAction> notifyOn;
  @override
  final BuiltSet<AlarmSeverity>? alarmSeverities;
  @override
  final ClearRule? clearRule;
  @override
  final BuiltSet<String>? alarmTypes;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$AlarmNotificationRuleTriggerConfig([
    void Function(AlarmNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (AlarmNotificationRuleTriggerConfigBuilder()..update(updates))._build();

  _$AlarmNotificationRuleTriggerConfig._({
    required this.notifyOn,
    this.alarmSeverities,
    this.clearRule,
    this.alarmTypes,
    required this.triggerType,
  }) : super._();
  @override
  AlarmNotificationRuleTriggerConfig rebuild(
    void Function(AlarmNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmNotificationRuleTriggerConfigBuilder toBuilder() =>
      AlarmNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmNotificationRuleTriggerConfig &&
        notifyOn == other.notifyOn &&
        alarmSeverities == other.alarmSeverities &&
        clearRule == other.clearRule &&
        alarmTypes == other.alarmTypes &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notifyOn.hashCode);
    _$hash = $jc(_$hash, alarmSeverities.hashCode);
    _$hash = $jc(_$hash, clearRule.hashCode);
    _$hash = $jc(_$hash, alarmTypes.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmNotificationRuleTriggerConfig')
          ..add('notifyOn', notifyOn)
          ..add('alarmSeverities', alarmSeverities)
          ..add('clearRule', clearRule)
          ..add('alarmTypes', alarmTypes)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class AlarmNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          AlarmNotificationRuleTriggerConfig,
          AlarmNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$AlarmNotificationRuleTriggerConfig? _$v;

  SetBuilder<AlarmAction>? _notifyOn;
  SetBuilder<AlarmAction> get notifyOn =>
      _$this._notifyOn ??= SetBuilder<AlarmAction>();
  set notifyOn(covariant SetBuilder<AlarmAction>? notifyOn) =>
      _$this._notifyOn = notifyOn;

  SetBuilder<AlarmSeverity>? _alarmSeverities;
  SetBuilder<AlarmSeverity> get alarmSeverities =>
      _$this._alarmSeverities ??= SetBuilder<AlarmSeverity>();
  set alarmSeverities(covariant SetBuilder<AlarmSeverity>? alarmSeverities) =>
      _$this._alarmSeverities = alarmSeverities;

  ClearRuleBuilder? _clearRule;
  ClearRuleBuilder get clearRule => _$this._clearRule ??= ClearRuleBuilder();
  set clearRule(covariant ClearRuleBuilder? clearRule) =>
      _$this._clearRule = clearRule;

  SetBuilder<String>? _alarmTypes;
  SetBuilder<String> get alarmTypes =>
      _$this._alarmTypes ??= SetBuilder<String>();
  set alarmTypes(covariant SetBuilder<String>? alarmTypes) =>
      _$this._alarmTypes = alarmTypes;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  AlarmNotificationRuleTriggerConfigBuilder() {
    AlarmNotificationRuleTriggerConfig._defaults(this);
  }

  AlarmNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notifyOn = $v.notifyOn.toBuilder();
      _alarmSeverities = $v.alarmSeverities?.toBuilder();
      _clearRule = $v.clearRule?.toBuilder();
      _alarmTypes = $v.alarmTypes?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmNotificationRuleTriggerConfig other) {
    _$v = other as _$AlarmNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(AlarmNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AlarmNotificationRuleTriggerConfig build() => _build();

  _$AlarmNotificationRuleTriggerConfig _build() {
    _$AlarmNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$AlarmNotificationRuleTriggerConfig._(
            notifyOn: notifyOn.build(),
            alarmSeverities: _alarmSeverities?.build(),
            clearRule: _clearRule?.build(),
            alarmTypes: _alarmTypes?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'AlarmNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notifyOn';
        notifyOn.build();
        _$failedField = 'alarmSeverities';
        _alarmSeverities?.build();
        _$failedField = 'clearRule';
        _clearRule?.build();
        _$failedField = 'alarmTypes';
        _alarmTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmNotificationRuleTriggerConfig',
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
