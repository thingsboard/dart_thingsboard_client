// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_engine_component_lifecycle_event_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig
    extends RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig {
  @override
  final bool? trackRuleNodeEvents;
  @override
  final BuiltSet<ComponentLifecycleEvent>? ruleNodeEvents;
  @override
  final BuiltSet<String>? ruleChains;
  @override
  final BuiltSet<ComponentLifecycleEvent>? ruleChainEvents;
  @override
  final bool? onlyRuleNodeLifecycleFailures;
  @override
  final bool? onlyRuleChainLifecycleFailures;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig([
    void Function(
      RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder,
    )?
    updates,
  ]) =>
      (RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder()
            ..update(updates))
          ._build();

  _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig._({
    this.trackRuleNodeEvents,
    this.ruleNodeEvents,
    this.ruleChains,
    this.ruleChainEvents,
    this.onlyRuleNodeLifecycleFailures,
    this.onlyRuleChainLifecycleFailures,
    required this.triggerType,
  }) : super._();
  @override
  RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig rebuild(
    void Function(
      RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder,
    )
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder
  toBuilder() =>
      RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig &&
        trackRuleNodeEvents == other.trackRuleNodeEvents &&
        ruleNodeEvents == other.ruleNodeEvents &&
        ruleChains == other.ruleChains &&
        ruleChainEvents == other.ruleChainEvents &&
        onlyRuleNodeLifecycleFailures == other.onlyRuleNodeLifecycleFailures &&
        onlyRuleChainLifecycleFailures ==
            other.onlyRuleChainLifecycleFailures &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trackRuleNodeEvents.hashCode);
    _$hash = $jc(_$hash, ruleNodeEvents.hashCode);
    _$hash = $jc(_$hash, ruleChains.hashCode);
    _$hash = $jc(_$hash, ruleChainEvents.hashCode);
    _$hash = $jc(_$hash, onlyRuleNodeLifecycleFailures.hashCode);
    _$hash = $jc(_$hash, onlyRuleChainLifecycleFailures.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig',
          )
          ..add('trackRuleNodeEvents', trackRuleNodeEvents)
          ..add('ruleNodeEvents', ruleNodeEvents)
          ..add('ruleChains', ruleChains)
          ..add('ruleChainEvents', ruleChainEvents)
          ..add('onlyRuleNodeLifecycleFailures', onlyRuleNodeLifecycleFailures)
          ..add(
            'onlyRuleChainLifecycleFailures',
            onlyRuleChainLifecycleFailures,
          )
          ..add('triggerType', triggerType))
        .toString();
  }
}

class RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig,
          RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig? _$v;

  bool? _trackRuleNodeEvents;
  bool? get trackRuleNodeEvents => _$this._trackRuleNodeEvents;
  set trackRuleNodeEvents(covariant bool? trackRuleNodeEvents) =>
      _$this._trackRuleNodeEvents = trackRuleNodeEvents;

  SetBuilder<ComponentLifecycleEvent>? _ruleNodeEvents;
  SetBuilder<ComponentLifecycleEvent> get ruleNodeEvents =>
      _$this._ruleNodeEvents ??= SetBuilder<ComponentLifecycleEvent>();
  set ruleNodeEvents(
    covariant SetBuilder<ComponentLifecycleEvent>? ruleNodeEvents,
  ) => _$this._ruleNodeEvents = ruleNodeEvents;

  SetBuilder<String>? _ruleChains;
  SetBuilder<String> get ruleChains =>
      _$this._ruleChains ??= SetBuilder<String>();
  set ruleChains(covariant SetBuilder<String>? ruleChains) =>
      _$this._ruleChains = ruleChains;

  SetBuilder<ComponentLifecycleEvent>? _ruleChainEvents;
  SetBuilder<ComponentLifecycleEvent> get ruleChainEvents =>
      _$this._ruleChainEvents ??= SetBuilder<ComponentLifecycleEvent>();
  set ruleChainEvents(
    covariant SetBuilder<ComponentLifecycleEvent>? ruleChainEvents,
  ) => _$this._ruleChainEvents = ruleChainEvents;

  bool? _onlyRuleNodeLifecycleFailures;
  bool? get onlyRuleNodeLifecycleFailures =>
      _$this._onlyRuleNodeLifecycleFailures;
  set onlyRuleNodeLifecycleFailures(
    covariant bool? onlyRuleNodeLifecycleFailures,
  ) => _$this._onlyRuleNodeLifecycleFailures = onlyRuleNodeLifecycleFailures;

  bool? _onlyRuleChainLifecycleFailures;
  bool? get onlyRuleChainLifecycleFailures =>
      _$this._onlyRuleChainLifecycleFailures;
  set onlyRuleChainLifecycleFailures(
    covariant bool? onlyRuleChainLifecycleFailures,
  ) => _$this._onlyRuleChainLifecycleFailures = onlyRuleChainLifecycleFailures;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder() {
    RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig._defaults(
      this,
    );
  }

  RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder
  get _$this {
    final $v = _$v;
    if ($v != null) {
      _trackRuleNodeEvents = $v.trackRuleNodeEvents;
      _ruleNodeEvents = $v.ruleNodeEvents?.toBuilder();
      _ruleChains = $v.ruleChains?.toBuilder();
      _ruleChainEvents = $v.ruleChainEvents?.toBuilder();
      _onlyRuleNodeLifecycleFailures = $v.onlyRuleNodeLifecycleFailures;
      _onlyRuleChainLifecycleFailures = $v.onlyRuleChainLifecycleFailures;
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig
    other,
  ) {
    _$v =
        other
            as _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(
      RuleEngineComponentLifecycleEventNotificationRuleTriggerConfigBuilder,
    )?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig build() =>
      _build();

  _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig _build() {
    _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig._(
            trackRuleNodeEvents: trackRuleNodeEvents,
            ruleNodeEvents: _ruleNodeEvents?.build(),
            ruleChains: _ruleChains?.build(),
            ruleChainEvents: _ruleChainEvents?.build(),
            onlyRuleNodeLifecycleFailures: onlyRuleNodeLifecycleFailures,
            onlyRuleChainLifecycleFailures: onlyRuleChainLifecycleFailures,
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ruleNodeEvents';
        _ruleNodeEvents?.build();
        _$failedField = 'ruleChains';
        _ruleChains?.build();
        _$failedField = 'ruleChainEvents';
        _ruleChainEvents?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleEngineComponentLifecycleEventNotificationRuleTriggerConfig',
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
