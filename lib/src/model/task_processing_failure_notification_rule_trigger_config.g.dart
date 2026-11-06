// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_processing_failure_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskProcessingFailureNotificationRuleTriggerConfig
    extends TaskProcessingFailureNotificationRuleTriggerConfig {
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$TaskProcessingFailureNotificationRuleTriggerConfig([
    void Function(TaskProcessingFailureNotificationRuleTriggerConfigBuilder)?
    updates,
  ]) =>
      (TaskProcessingFailureNotificationRuleTriggerConfigBuilder()
            ..update(updates))
          ._build();

  _$TaskProcessingFailureNotificationRuleTriggerConfig._({
    required this.triggerType,
  }) : super._();
  @override
  TaskProcessingFailureNotificationRuleTriggerConfig rebuild(
    void Function(TaskProcessingFailureNotificationRuleTriggerConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TaskProcessingFailureNotificationRuleTriggerConfigBuilder toBuilder() =>
      TaskProcessingFailureNotificationRuleTriggerConfigBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskProcessingFailureNotificationRuleTriggerConfig &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TaskProcessingFailureNotificationRuleTriggerConfig',
    )..add('triggerType', triggerType)).toString();
  }
}

class TaskProcessingFailureNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          TaskProcessingFailureNotificationRuleTriggerConfig,
          TaskProcessingFailureNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$TaskProcessingFailureNotificationRuleTriggerConfig? _$v;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  TaskProcessingFailureNotificationRuleTriggerConfigBuilder() {
    TaskProcessingFailureNotificationRuleTriggerConfig._defaults(this);
  }

  TaskProcessingFailureNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant TaskProcessingFailureNotificationRuleTriggerConfig other,
  ) {
    _$v = other as _$TaskProcessingFailureNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(TaskProcessingFailureNotificationRuleTriggerConfigBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TaskProcessingFailureNotificationRuleTriggerConfig build() => _build();

  _$TaskProcessingFailureNotificationRuleTriggerConfig _build() {
    final _$result =
        _$v ??
        _$TaskProcessingFailureNotificationRuleTriggerConfig._(
          triggerType: BuiltValueNullFieldError.checkNotNull(
            triggerType,
            r'TaskProcessingFailureNotificationRuleTriggerConfig',
            'triggerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
