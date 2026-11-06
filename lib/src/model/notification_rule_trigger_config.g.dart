// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class NotificationRuleTriggerConfigBuilder {
  void replace(NotificationRuleTriggerConfig other);
  void update(void Function(NotificationRuleTriggerConfigBuilder) updates);
  NotificationRuleTriggerType? get triggerType;
  set triggerType(NotificationRuleTriggerType? triggerType);
}

class _$$NotificationRuleTriggerConfig extends $NotificationRuleTriggerConfig {
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$$NotificationRuleTriggerConfig([
    void Function($NotificationRuleTriggerConfigBuilder)? updates,
  ]) => ($NotificationRuleTriggerConfigBuilder()..update(updates))._build();

  _$$NotificationRuleTriggerConfig._({required this.triggerType}) : super._();
  @override
  $NotificationRuleTriggerConfig rebuild(
    void Function($NotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $NotificationRuleTriggerConfigBuilder toBuilder() =>
      $NotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $NotificationRuleTriggerConfig &&
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
      r'$NotificationRuleTriggerConfig',
    )..add('triggerType', triggerType)).toString();
  }
}

class $NotificationRuleTriggerConfigBuilder
    implements
        Builder<
          $NotificationRuleTriggerConfig,
          $NotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$$NotificationRuleTriggerConfig? _$v;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  $NotificationRuleTriggerConfigBuilder() {
    $NotificationRuleTriggerConfig._defaults(this);
  }

  $NotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $NotificationRuleTriggerConfig other) {
    _$v = other as _$$NotificationRuleTriggerConfig;
  }

  @override
  void update(void Function($NotificationRuleTriggerConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $NotificationRuleTriggerConfig build() => _build();

  _$$NotificationRuleTriggerConfig _build() {
    final _$result =
        _$v ??
        _$$NotificationRuleTriggerConfig._(
          triggerType: BuiltValueNullFieldError.checkNotNull(
            triggerType,
            r'$NotificationRuleTriggerConfig',
            'triggerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
