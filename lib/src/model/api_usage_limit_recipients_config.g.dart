// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage_limit_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiUsageLimitRecipientsConfig extends ApiUsageLimitRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$ApiUsageLimitRecipientsConfig([
    void Function(ApiUsageLimitRecipientsConfigBuilder)? updates,
  ]) => (ApiUsageLimitRecipientsConfigBuilder()..update(updates))._build();

  _$ApiUsageLimitRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  ApiUsageLimitRecipientsConfig rebuild(
    void Function(ApiUsageLimitRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiUsageLimitRecipientsConfigBuilder toBuilder() =>
      ApiUsageLimitRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiUsageLimitRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'ApiUsageLimitRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class ApiUsageLimitRecipientsConfigBuilder
    implements
        Builder<
          ApiUsageLimitRecipientsConfig,
          ApiUsageLimitRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$ApiUsageLimitRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  ApiUsageLimitRecipientsConfigBuilder() {
    ApiUsageLimitRecipientsConfig._defaults(this);
  }

  ApiUsageLimitRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ApiUsageLimitRecipientsConfig other) {
    _$v = other as _$ApiUsageLimitRecipientsConfig;
  }

  @override
  void update(void Function(ApiUsageLimitRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiUsageLimitRecipientsConfig build() => _build();

  _$ApiUsageLimitRecipientsConfig _build() {
    _$ApiUsageLimitRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$ApiUsageLimitRecipientsConfig._(
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
          r'ApiUsageLimitRecipientsConfig',
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
