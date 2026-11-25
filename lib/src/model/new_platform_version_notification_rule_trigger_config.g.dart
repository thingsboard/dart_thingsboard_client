// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_platform_version_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewPlatformVersionNotificationRuleTriggerConfig
    extends NewPlatformVersionNotificationRuleTriggerConfig {
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$NewPlatformVersionNotificationRuleTriggerConfig([
    void Function(NewPlatformVersionNotificationRuleTriggerConfigBuilder)?
    updates,
  ]) =>
      (NewPlatformVersionNotificationRuleTriggerConfigBuilder()
            ..update(updates))
          ._build();

  _$NewPlatformVersionNotificationRuleTriggerConfig._({
    required this.triggerType,
  }) : super._();
  @override
  NewPlatformVersionNotificationRuleTriggerConfig rebuild(
    void Function(NewPlatformVersionNotificationRuleTriggerConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NewPlatformVersionNotificationRuleTriggerConfigBuilder toBuilder() =>
      NewPlatformVersionNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewPlatformVersionNotificationRuleTriggerConfig &&
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
      r'NewPlatformVersionNotificationRuleTriggerConfig',
    )..add('triggerType', triggerType)).toString();
  }
}

class NewPlatformVersionNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          NewPlatformVersionNotificationRuleTriggerConfig,
          NewPlatformVersionNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$NewPlatformVersionNotificationRuleTriggerConfig? _$v;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  NewPlatformVersionNotificationRuleTriggerConfigBuilder() {
    NewPlatformVersionNotificationRuleTriggerConfig._defaults(this);
  }

  NewPlatformVersionNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
    covariant NewPlatformVersionNotificationRuleTriggerConfig other,
  ) {
    _$v = other as _$NewPlatformVersionNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(NewPlatformVersionNotificationRuleTriggerConfigBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NewPlatformVersionNotificationRuleTriggerConfig build() => _build();

  _$NewPlatformVersionNotificationRuleTriggerConfig _build() {
    final _$result =
        _$v ??
        _$NewPlatformVersionNotificationRuleTriggerConfig._(
          triggerType: BuiltValueNullFieldError.checkNotNull(
            triggerType,
            r'NewPlatformVersionNotificationRuleTriggerConfig',
            'triggerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
