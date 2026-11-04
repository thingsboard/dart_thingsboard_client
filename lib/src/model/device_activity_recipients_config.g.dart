// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_activity_recipients_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceActivityRecipientsConfig extends DeviceActivityRecipientsConfig {
  @override
  final BuiltList<String> targets;
  @override
  final NotificationRuleTriggerType? triggerType;

  factory _$DeviceActivityRecipientsConfig([
    void Function(DeviceActivityRecipientsConfigBuilder)? updates,
  ]) => (DeviceActivityRecipientsConfigBuilder()..update(updates))._build();

  _$DeviceActivityRecipientsConfig._({required this.targets, this.triggerType})
    : super._();
  @override
  DeviceActivityRecipientsConfig rebuild(
    void Function(DeviceActivityRecipientsConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeviceActivityRecipientsConfigBuilder toBuilder() =>
      DeviceActivityRecipientsConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceActivityRecipientsConfig &&
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
    return (newBuiltValueToStringHelper(r'DeviceActivityRecipientsConfig')
          ..add('targets', targets)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class DeviceActivityRecipientsConfigBuilder
    implements
        Builder<
          DeviceActivityRecipientsConfig,
          DeviceActivityRecipientsConfigBuilder
        >,
        NotificationRuleRecipientsConfigBuilder {
  _$DeviceActivityRecipientsConfig? _$v;

  ListBuilder<String>? _targets;
  ListBuilder<String> get targets => _$this._targets ??= ListBuilder<String>();
  set targets(covariant ListBuilder<String>? targets) =>
      _$this._targets = targets;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  DeviceActivityRecipientsConfigBuilder() {
    DeviceActivityRecipientsConfig._defaults(this);
  }

  DeviceActivityRecipientsConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _targets = $v.targets.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DeviceActivityRecipientsConfig other) {
    _$v = other as _$DeviceActivityRecipientsConfig;
  }

  @override
  void update(void Function(DeviceActivityRecipientsConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceActivityRecipientsConfig build() => _build();

  _$DeviceActivityRecipientsConfig _build() {
    _$DeviceActivityRecipientsConfig _$result;
    try {
      _$result =
          _$v ??
          _$DeviceActivityRecipientsConfig._(
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
          r'DeviceActivityRecipientsConfig',
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
