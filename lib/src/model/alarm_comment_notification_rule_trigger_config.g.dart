// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_comment_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmCommentNotificationRuleTriggerConfig
    extends AlarmCommentNotificationRuleTriggerConfig {
  @override
  final bool? notifyOnCommentUpdate;
  @override
  final BuiltSet<AlarmSeverity>? alarmSeverities;
  @override
  final bool? onlyUserComments;
  @override
  final BuiltSet<String>? alarmTypes;
  @override
  final BuiltSet<AlarmSearchStatus>? alarmStatuses;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$AlarmCommentNotificationRuleTriggerConfig([
    void Function(AlarmCommentNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (AlarmCommentNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$AlarmCommentNotificationRuleTriggerConfig._({
    this.notifyOnCommentUpdate,
    this.alarmSeverities,
    this.onlyUserComments,
    this.alarmTypes,
    this.alarmStatuses,
    required this.triggerType,
  }) : super._();
  @override
  AlarmCommentNotificationRuleTriggerConfig rebuild(
    void Function(AlarmCommentNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmCommentNotificationRuleTriggerConfigBuilder toBuilder() =>
      AlarmCommentNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmCommentNotificationRuleTriggerConfig &&
        notifyOnCommentUpdate == other.notifyOnCommentUpdate &&
        alarmSeverities == other.alarmSeverities &&
        onlyUserComments == other.onlyUserComments &&
        alarmTypes == other.alarmTypes &&
        alarmStatuses == other.alarmStatuses &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, notifyOnCommentUpdate.hashCode);
    _$hash = $jc(_$hash, alarmSeverities.hashCode);
    _$hash = $jc(_$hash, onlyUserComments.hashCode);
    _$hash = $jc(_$hash, alarmTypes.hashCode);
    _$hash = $jc(_$hash, alarmStatuses.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'AlarmCommentNotificationRuleTriggerConfig',
          )
          ..add('notifyOnCommentUpdate', notifyOnCommentUpdate)
          ..add('alarmSeverities', alarmSeverities)
          ..add('onlyUserComments', onlyUserComments)
          ..add('alarmTypes', alarmTypes)
          ..add('alarmStatuses', alarmStatuses)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class AlarmCommentNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          AlarmCommentNotificationRuleTriggerConfig,
          AlarmCommentNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$AlarmCommentNotificationRuleTriggerConfig? _$v;

  bool? _notifyOnCommentUpdate;
  bool? get notifyOnCommentUpdate => _$this._notifyOnCommentUpdate;
  set notifyOnCommentUpdate(covariant bool? notifyOnCommentUpdate) =>
      _$this._notifyOnCommentUpdate = notifyOnCommentUpdate;

  SetBuilder<AlarmSeverity>? _alarmSeverities;
  SetBuilder<AlarmSeverity> get alarmSeverities =>
      _$this._alarmSeverities ??= SetBuilder<AlarmSeverity>();
  set alarmSeverities(covariant SetBuilder<AlarmSeverity>? alarmSeverities) =>
      _$this._alarmSeverities = alarmSeverities;

  bool? _onlyUserComments;
  bool? get onlyUserComments => _$this._onlyUserComments;
  set onlyUserComments(covariant bool? onlyUserComments) =>
      _$this._onlyUserComments = onlyUserComments;

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

  AlarmCommentNotificationRuleTriggerConfigBuilder() {
    AlarmCommentNotificationRuleTriggerConfig._defaults(this);
  }

  AlarmCommentNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notifyOnCommentUpdate = $v.notifyOnCommentUpdate;
      _alarmSeverities = $v.alarmSeverities?.toBuilder();
      _onlyUserComments = $v.onlyUserComments;
      _alarmTypes = $v.alarmTypes?.toBuilder();
      _alarmStatuses = $v.alarmStatuses?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmCommentNotificationRuleTriggerConfig other) {
    _$v = other as _$AlarmCommentNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(AlarmCommentNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AlarmCommentNotificationRuleTriggerConfig build() => _build();

  _$AlarmCommentNotificationRuleTriggerConfig _build() {
    _$AlarmCommentNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$AlarmCommentNotificationRuleTriggerConfig._(
            notifyOnCommentUpdate: notifyOnCommentUpdate,
            alarmSeverities: _alarmSeverities?.build(),
            onlyUserComments: onlyUserComments,
            alarmTypes: _alarmTypes?.build(),
            alarmStatuses: _alarmStatuses?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'AlarmCommentNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alarmSeverities';
        _alarmSeverities?.build();

        _$failedField = 'alarmTypes';
        _alarmTypes?.build();
        _$failedField = 'alarmStatuses';
        _alarmStatuses?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmCommentNotificationRuleTriggerConfig',
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
