// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage_limit_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiUsageLimitNotificationRuleTriggerConfig
    extends ApiUsageLimitNotificationRuleTriggerConfig {
  @override
  final BuiltSet<ApiFeature>? apiFeatures;
  @override
  final BuiltSet<ApiUsageStateValue>? notifyOn;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$ApiUsageLimitNotificationRuleTriggerConfig([
    void Function(ApiUsageLimitNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (ApiUsageLimitNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$ApiUsageLimitNotificationRuleTriggerConfig._({
    this.apiFeatures,
    this.notifyOn,
    required this.triggerType,
  }) : super._();
  @override
  ApiUsageLimitNotificationRuleTriggerConfig rebuild(
    void Function(ApiUsageLimitNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiUsageLimitNotificationRuleTriggerConfigBuilder toBuilder() =>
      ApiUsageLimitNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiUsageLimitNotificationRuleTriggerConfig &&
        apiFeatures == other.apiFeatures &&
        notifyOn == other.notifyOn &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiFeatures.hashCode);
    _$hash = $jc(_$hash, notifyOn.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ApiUsageLimitNotificationRuleTriggerConfig',
          )
          ..add('apiFeatures', apiFeatures)
          ..add('notifyOn', notifyOn)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class ApiUsageLimitNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          ApiUsageLimitNotificationRuleTriggerConfig,
          ApiUsageLimitNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$ApiUsageLimitNotificationRuleTriggerConfig? _$v;

  SetBuilder<ApiFeature>? _apiFeatures;
  SetBuilder<ApiFeature> get apiFeatures =>
      _$this._apiFeatures ??= SetBuilder<ApiFeature>();
  set apiFeatures(covariant SetBuilder<ApiFeature>? apiFeatures) =>
      _$this._apiFeatures = apiFeatures;

  SetBuilder<ApiUsageStateValue>? _notifyOn;
  SetBuilder<ApiUsageStateValue> get notifyOn =>
      _$this._notifyOn ??= SetBuilder<ApiUsageStateValue>();
  set notifyOn(covariant SetBuilder<ApiUsageStateValue>? notifyOn) =>
      _$this._notifyOn = notifyOn;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  ApiUsageLimitNotificationRuleTriggerConfigBuilder() {
    ApiUsageLimitNotificationRuleTriggerConfig._defaults(this);
  }

  ApiUsageLimitNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiFeatures = $v.apiFeatures?.toBuilder();
      _notifyOn = $v.notifyOn?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ApiUsageLimitNotificationRuleTriggerConfig other) {
    _$v = other as _$ApiUsageLimitNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(ApiUsageLimitNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ApiUsageLimitNotificationRuleTriggerConfig build() => _build();

  _$ApiUsageLimitNotificationRuleTriggerConfig _build() {
    _$ApiUsageLimitNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$ApiUsageLimitNotificationRuleTriggerConfig._(
            apiFeatures: _apiFeatures?.build(),
            notifyOn: _notifyOn?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'ApiUsageLimitNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apiFeatures';
        _apiFeatures?.build();
        _$failedField = 'notifyOn';
        _notifyOn?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ApiUsageLimitNotificationRuleTriggerConfig',
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
