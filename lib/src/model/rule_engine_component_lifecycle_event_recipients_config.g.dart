// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_engine_component_lifecycle_event_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleEngineComponentLifecycleEventRecipientsConfig
    extends RuleEngineComponentLifecycleEventRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$RuleEngineComponentLifecycleEventRecipientsConfig([
    void Function(RuleEngineComponentLifecycleEventRecipientsConfigBuilder)?
    updates,
  ]) =>
      (RuleEngineComponentLifecycleEventRecipientsConfigBuilder()
            ..update(updates))
          ._build();

  _$RuleEngineComponentLifecycleEventRecipientsConfig._({
    required this.targets,
    this.triggerType,
  }) : super._();
  @override
  RuleEngineComponentLifecycleEventRecipientsConfig rebuild(
    void Function(RuleEngineComponentLifecycleEventRecipientsConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleEngineComponentLifecycleEventRecipientsConfigBuilder toBuilder() =>
      RuleEngineComponentLifecycleEventRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleEngineComponentLifecycleEventRecipientsConfig &&
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
            r'RuleEngineComponentLifecycleEventRecipientsConfig',
          )
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class RuleEngineComponentLifecycleEventRecipientsConfigBuilder
    implements
        Builder<
          RuleEngineComponentLifecycleEventRecipientsConfig,
          RuleEngineComponentLifecycleEventRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$RuleEngineComponentLifecycleEventRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  RuleEngineComponentLifecycleEventRecipientsConfigBuilder() {
    RuleEngineComponentLifecycleEventRecipientsConfig._defaults(this);
  }

  RuleEngineComponentLifecycleEventRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant RuleEngineComponentLifecycleEventRecipientsConfig other,
  ) {
    _$v = other as _$RuleEngineComponentLifecycleEventRecipientsConfig;
  }

  @override
  void update(
    void Function(RuleEngineComponentLifecycleEventRecipientsConfigBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RuleEngineComponentLifecycleEventRecipientsConfig build() => _build();

  _$RuleEngineComponentLifecycleEventRecipientsConfig _build() {
    _$RuleEngineComponentLifecycleEventRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$RuleEngineComponentLifecycleEventRecipientsConfig._(
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
          r'RuleEngineComponentLifecycleEventRecipientsConfig',
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
