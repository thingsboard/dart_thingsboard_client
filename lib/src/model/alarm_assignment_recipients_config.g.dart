// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_assignment_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmAssignmentRecipientsConfig
    extends AlarmAssignmentRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$AlarmAssignmentRecipientsConfig([
    void Function(AlarmAssignmentRecipientsConfigBuilder)? updates,
  ]) => (AlarmAssignmentRecipientsConfigBuilder()..update(updates))._build();

  _$AlarmAssignmentRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  AlarmAssignmentRecipientsConfig rebuild(
    void Function(AlarmAssignmentRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmAssignmentRecipientsConfigBuilder toBuilder() =>
      AlarmAssignmentRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmAssignmentRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'AlarmAssignmentRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class AlarmAssignmentRecipientsConfigBuilder
    implements
        Builder<
          AlarmAssignmentRecipientsConfig,
          AlarmAssignmentRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$AlarmAssignmentRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  AlarmAssignmentRecipientsConfigBuilder() {
    AlarmAssignmentRecipientsConfig._defaults(this);
  }

  AlarmAssignmentRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmAssignmentRecipientsConfig other) {
    _$v = other as _$AlarmAssignmentRecipientsConfig;
  }

  @override
  void update(void Function(AlarmAssignmentRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmAssignmentRecipientsConfig build() => _build();

  _$AlarmAssignmentRecipientsConfig _build() {
    _$AlarmAssignmentRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$AlarmAssignmentRecipientsConfig._(
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
          r'AlarmAssignmentRecipientsConfig',
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
