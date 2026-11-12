// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_lifecycle_event_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationLifecycleEventRecipientsConfig
    extends IntegrationLifecycleEventRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$IntegrationLifecycleEventRecipientsConfig([
    void Function(IntegrationLifecycleEventRecipientsConfigBuilder)? updates,
  ]) => (IntegrationLifecycleEventRecipientsConfigBuilder()..update(updates))
      ._build();

  _$IntegrationLifecycleEventRecipientsConfig._({
    required this.targets,
    this.triggerType,
  }) : super._();
  @override
  IntegrationLifecycleEventRecipientsConfig rebuild(
    void Function(IntegrationLifecycleEventRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  IntegrationLifecycleEventRecipientsConfigBuilder toBuilder() =>
      IntegrationLifecycleEventRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationLifecycleEventRecipientsConfig &&
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
            r'IntegrationLifecycleEventRecipientsConfig',
          )
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class IntegrationLifecycleEventRecipientsConfigBuilder
    implements
        Builder<
          IntegrationLifecycleEventRecipientsConfig,
          IntegrationLifecycleEventRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$IntegrationLifecycleEventRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  IntegrationLifecycleEventRecipientsConfigBuilder() {
    IntegrationLifecycleEventRecipientsConfig._defaults(this);
  }

  IntegrationLifecycleEventRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IntegrationLifecycleEventRecipientsConfig other) {
    _$v = other as _$IntegrationLifecycleEventRecipientsConfig;
  }

  @override
  void update(
    void Function(IntegrationLifecycleEventRecipientsConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationLifecycleEventRecipientsConfig build() => _build();

  _$IntegrationLifecycleEventRecipientsConfig _build() {
    _$IntegrationLifecycleEventRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$IntegrationLifecycleEventRecipientsConfig._(
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
          r'IntegrationLifecycleEventRecipientsConfig',
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
