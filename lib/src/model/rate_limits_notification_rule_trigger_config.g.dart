// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_limits_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RateLimitsNotificationRuleTriggerConfig
    extends RateLimitsNotificationRuleTriggerConfig {
  @override
  final BuiltSet<LimitedApi>? apis;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$RateLimitsNotificationRuleTriggerConfig([
    void Function(RateLimitsNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (RateLimitsNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$RateLimitsNotificationRuleTriggerConfig._({
    this.apis,
    required this.triggerType,
  }) : super._();
  @override
  RateLimitsNotificationRuleTriggerConfig rebuild(
    void Function(RateLimitsNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RateLimitsNotificationRuleTriggerConfigBuilder toBuilder() =>
      RateLimitsNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimitsNotificationRuleTriggerConfig &&
        apis == other.apis &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apis.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RateLimitsNotificationRuleTriggerConfig',
          )
          ..add('apis', apis)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class RateLimitsNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          RateLimitsNotificationRuleTriggerConfig,
          RateLimitsNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$RateLimitsNotificationRuleTriggerConfig? _$v;

  SetBuilder<LimitedApi>? _apis;
  SetBuilder<LimitedApi> get apis => _$this._apis ??= SetBuilder<LimitedApi>();
  set apis(covariant SetBuilder<LimitedApi>? apis) => _$this._apis = apis;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  RateLimitsNotificationRuleTriggerConfigBuilder() {
    RateLimitsNotificationRuleTriggerConfig._defaults(this);
  }

  RateLimitsNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apis = $v.apis?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RateLimitsNotificationRuleTriggerConfig other) {
    _$v = other as _$RateLimitsNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(RateLimitsNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  RateLimitsNotificationRuleTriggerConfig build() => _build();

  _$RateLimitsNotificationRuleTriggerConfig _build() {
    _$RateLimitsNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$RateLimitsNotificationRuleTriggerConfig._(
            apis: _apis?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'RateLimitsNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apis';
        _apis?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RateLimitsNotificationRuleTriggerConfig',
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
