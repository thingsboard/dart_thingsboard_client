// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_assignment_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmAssignmentNotificationRuleTriggerConfig
    extends AlarmAssignmentNotificationRuleTriggerConfig {
  @override
  final BuiltSet<Action> notifyOn;
  @override
  final BuiltSet<AlarmSeverity>? alarmSeverities;
  @override
  final BuiltSet<String>? alarmTypes;
  @override
  final BuiltSet<AlarmSearchStatus>? alarmStatuses;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$AlarmAssignmentNotificationRuleTriggerConfig([
    void Function(AlarmAssignmentNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (AlarmAssignmentNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$AlarmAssignmentNotificationRuleTriggerConfig._({
    required this.notifyOn,
    this.alarmSeverities,
    this.alarmTypes,
    this.alarmStatuses,
    required this.triggerType,
  }) : super._();
  @override
  AlarmAssignmentNotificationRuleTriggerConfig rebuild(
    void Function(AlarmAssignmentNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmAssignmentNotificationRuleTriggerConfigBuilder toBuilder() =>
      AlarmAssignmentNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmAssignmentNotificationRuleTriggerConfig &&
        notifyOn == other.notifyOn &&
        alarmSeverities == other.alarmSeverities &&
        alarmTypes == other.alarmTypes &&
        alarmStatuses == other.alarmStatuses &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notifyOn.hashCode);
    _$hash = $jc(_$hash, alarmSeverities.hashCode);
    _$hash = $jc(_$hash, alarmTypes.hashCode);
    _$hash = $jc(_$hash, alarmStatuses.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AlarmAssignmentNotificationRuleTriggerConfig',
          )
          ..add('notifyOn', notifyOn)
          ..add('alarmSeverities', alarmSeverities)
          ..add('alarmTypes', alarmTypes)
          ..add('alarmStatuses', alarmStatuses)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class AlarmAssignmentNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          AlarmAssignmentNotificationRuleTriggerConfig,
          AlarmAssignmentNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$AlarmAssignmentNotificationRuleTriggerConfig? _$v;

  SetBuilder<Action>? _notifyOn;
  SetBuilder<Action> get notifyOn => _$this._notifyOn ??= SetBuilder<Action>();
  set notifyOn(covariant SetBuilder<Action>? notifyOn) =>
      _$this._notifyOn = notifyOn;

  SetBuilder<AlarmSeverity>? _alarmSeverities;
  SetBuilder<AlarmSeverity> get alarmSeverities =>
      _$this._alarmSeverities ??= SetBuilder<AlarmSeverity>();
  set alarmSeverities(covariant SetBuilder<AlarmSeverity>? alarmSeverities) =>
      _$this._alarmSeverities = alarmSeverities;

  SetBuilder<String>? _alarmTypes;
  SetBuilder<String> get alarmTypes =>
      _$this._alarmTypes ??= SetBuilder<String>();
  set alarmTypes(covariant SetBuilder<String>? alarmTypes) =>
      _$this._alarmTypes = alarmTypes;

  SetBuilder<AlarmSearchStatus>? _alarmStatuses;
  SetBuilder<AlarmSearchStatus> get alarmStatuses =>
      _$this._alarmStatuses ??= SetBuilder<AlarmSearchStatus>();
  set alarmStatuses(covariant SetBuilder<AlarmSearchStatus>? alarmStatuses) =>
      _$this._alarmStatuses = alarmStatuses;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  AlarmAssignmentNotificationRuleTriggerConfigBuilder() {
    AlarmAssignmentNotificationRuleTriggerConfig._defaults(this);
  }

  AlarmAssignmentNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notifyOn = $v.notifyOn.toBuilder();
      _alarmSeverities = $v.alarmSeverities?.toBuilder();
      _alarmTypes = $v.alarmTypes?.toBuilder();
      _alarmStatuses = $v.alarmStatuses?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmAssignmentNotificationRuleTriggerConfig other) {
    _$v = other as _$AlarmAssignmentNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(AlarmAssignmentNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AlarmAssignmentNotificationRuleTriggerConfig build() => _build();

  _$AlarmAssignmentNotificationRuleTriggerConfig _build() {
    _$AlarmAssignmentNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$AlarmAssignmentNotificationRuleTriggerConfig._(
            notifyOn: notifyOn.build(),
            alarmSeverities: _alarmSeverities?.build(),
            alarmTypes: _alarmTypes?.build(),
            alarmStatuses: _alarmStatuses?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'AlarmAssignmentNotificationRuleTriggerConfig',
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
        _$failedField = 'alarmTypes';
        _alarmTypes?.build();
        _$failedField = 'alarmStatuses';
        _alarmStatuses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmAssignmentNotificationRuleTriggerConfig',
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
