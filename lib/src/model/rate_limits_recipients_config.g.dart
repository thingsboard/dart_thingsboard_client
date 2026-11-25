// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_limits_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RateLimitsRecipientsConfig extends RateLimitsRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$RateLimitsRecipientsConfig([
    void Function(RateLimitsRecipientsConfigBuilder)? updates,
  ]) => (RateLimitsRecipientsConfigBuilder()..update(updates))._build();

  _$RateLimitsRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  RateLimitsRecipientsConfig rebuild(
    void Function(RateLimitsRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RateLimitsRecipientsConfigBuilder toBuilder() =>
      RateLimitsRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimitsRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'RateLimitsRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class RateLimitsRecipientsConfigBuilder
    implements
        Builder<RateLimitsRecipientsConfig, RateLimitsRecipientsConfigBuilder>,
        NotificationRuleRecipientsConfigBuilder {
  _$RateLimitsRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  RateLimitsRecipientsConfigBuilder() {
    RateLimitsRecipientsConfig._defaults(this);
  }

  RateLimitsRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RateLimitsRecipientsConfig other) {
    _$v = other as _$RateLimitsRecipientsConfig;
  }

  @override
  void update(void Function(RateLimitsRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RateLimitsRecipientsConfig build() => _build();

  _$RateLimitsRecipientsConfig _build() {
    _$RateLimitsRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$RateLimitsRecipientsConfig._(
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
          r'RateLimitsRecipientsConfig',
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
