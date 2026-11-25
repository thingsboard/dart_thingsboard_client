// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_rule_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class NotificationRuleRecipientsConfigBuilder {
  void replace(NotificationRuleRecipientsConfig other);
  void update(void Function(NotificationRuleRecipientsConfigBuilder) updates);
  NotificationRuleTriggerType? get triggerType;
  set triggerType(NotificationRuleTriggerType? triggerType);
}

class _$$NotificationRuleRecipientsConfig
    extends $NotificationRuleRecipientsConfig {
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$$NotificationRuleRecipientsConfig([
    void Function($NotificationRuleRecipientsConfigBuilder)? updates,
  ]) => ($NotificationRuleRecipientsConfigBuilder()..update(updates))._build();

  _$$NotificationRuleRecipientsConfig._({this.triggerType}) : super._();
  @override
  $NotificationRuleRecipientsConfig rebuild(
    void Function($NotificationRuleRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $NotificationRuleRecipientsConfigBuilder toBuilder() =>
      $NotificationRuleRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NotificationRuleRecipientsConfig &&
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
      r'$NotificationRuleRecipientsConfig',
    )..add('triggerType', triggerType)).toString();
  }
}

class $NotificationRuleRecipientsConfigBuilder
    implements
        Builder<
          $NotificationRuleRecipientsConfig,
          $NotificationRuleRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$$NotificationRuleRecipientsConfig? _$v;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  $NotificationRuleRecipientsConfigBuilder() {
    $NotificationRuleRecipientsConfig._defaults(this);
  }

  $NotificationRuleRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NotificationRuleRecipientsConfig other) {
    _$v = other as _$$NotificationRuleRecipientsConfig;
  }

  @override
  void update(
    void Function($NotificationRuleRecipientsConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  $NotificationRuleRecipientsConfig build() => _build();

  _$$NotificationRuleRecipientsConfig _build() {
    final _$result =
        _$v ?? _$$NotificationRuleRecipientsConfig._(triggerType: triggerType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
