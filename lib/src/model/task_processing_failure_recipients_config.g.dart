// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_processing_failure_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TaskProcessingFailureRecipientsConfig
    extends TaskProcessingFailureRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$TaskProcessingFailureRecipientsConfig([
    void Function(TaskProcessingFailureRecipientsConfigBuilder)? updates,
  ]) => (TaskProcessingFailureRecipientsConfigBuilder()..update(updates))
      ._build();

  _$TaskProcessingFailureRecipientsConfig._({
    required this.targets,
    this.triggerType,
  }) : super._();
  @override
  TaskProcessingFailureRecipientsConfig rebuild(
    void Function(TaskProcessingFailureRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TaskProcessingFailureRecipientsConfigBuilder toBuilder() =>
      TaskProcessingFailureRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TaskProcessingFailureRecipientsConfig &&
        targets == other.targets &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, targets.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'TaskProcessingFailureRecipientsConfig',
          )
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class TaskProcessingFailureRecipientsConfigBuilder
    implements
        Builder<
          TaskProcessingFailureRecipientsConfig,
          TaskProcessingFailureRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$TaskProcessingFailureRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  TaskProcessingFailureRecipientsConfigBuilder() {
    TaskProcessingFailureRecipientsConfig._defaults(this);
  }

  TaskProcessingFailureRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TaskProcessingFailureRecipientsConfig other) {
    _$v = other as _$TaskProcessingFailureRecipientsConfig;
  }

  @override
  void update(
    void Function(TaskProcessingFailureRecipientsConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  TaskProcessingFailureRecipientsConfig build() => _build();

  _$TaskProcessingFailureRecipientsConfig _build() {
    _$TaskProcessingFailureRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$TaskProcessingFailureRecipientsConfig._(
            targets: targets.build(),
            triggerType: triggerType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'targets';
        targets.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TaskProcessingFailureRecipientsConfig',
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
