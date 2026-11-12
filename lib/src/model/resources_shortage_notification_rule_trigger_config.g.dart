// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_shortage_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResourcesShortageNotificationRuleTriggerConfig
    extends ResourcesShortageNotificationRuleTriggerConfig {
  @override
  final double? ramThreshold;
  @override
  final double? cpuThreshold;
  @override
  final double? storageThreshold;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$ResourcesShortageNotificationRuleTriggerConfig([
    void Function(ResourcesShortageNotificationRuleTriggerConfigBuilder)?
    updates,
  ]) =>
      (ResourcesShortageNotificationRuleTriggerConfigBuilder()..update(updates))
          ._build();

  _$ResourcesShortageNotificationRuleTriggerConfig._({
    this.ramThreshold,
    this.cpuThreshold,
    this.storageThreshold,
    required this.triggerType,
  }) : super._();
  @override
  ResourcesShortageNotificationRuleTriggerConfig rebuild(
    void Function(ResourcesShortageNotificationRuleTriggerConfigBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResourcesShortageNotificationRuleTriggerConfigBuilder toBuilder() =>
      ResourcesShortageNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourcesShortageNotificationRuleTriggerConfig &&
        ramThreshold == other.ramThreshold &&
        cpuThreshold == other.cpuThreshold &&
        storageThreshold == other.storageThreshold &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, ramThreshold.hashCode);
    _$hash = $jc(_$hash, cpuThreshold.hashCode);
    _$hash = $jc(_$hash, storageThreshold.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ResourcesShortageNotificationRuleTriggerConfig',
          )
          ..add('ramThreshold', ramThreshold)
          ..add('cpuThreshold', cpuThreshold)
          ..add('storageThreshold', storageThreshold)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class ResourcesShortageNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          ResourcesShortageNotificationRuleTriggerConfig,
          ResourcesShortageNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$ResourcesShortageNotificationRuleTriggerConfig? _$v;

  double? _ramThreshold;
  double? get ramThreshold => _$this._ramThreshold;
  set ramThreshold(covariant double? ramThreshold) =>
      _$this._ramThreshold = ramThreshold;

  double? _cpuThreshold;
  double? get cpuThreshold => _$this._cpuThreshold;
  set cpuThreshold(covariant double? cpuThreshold) =>
      _$this._cpuThreshold = cpuThreshold;

  double? _storageThreshold;
  double? get storageThreshold => _$this._storageThreshold;
  set storageThreshold(covariant double? storageThreshold) =>
      _$this._storageThreshold = storageThreshold;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  ResourcesShortageNotificationRuleTriggerConfigBuilder() {
    ResourcesShortageNotificationRuleTriggerConfig._defaults(this);
  }

  ResourcesShortageNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ramThreshold = $v.ramThreshold;
      _cpuThreshold = $v.cpuThreshold;
      _storageThreshold = $v.storageThreshold;
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ResourcesShortageNotificationRuleTriggerConfig other) {
    _$v = other as _$ResourcesShortageNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(ResourcesShortageNotificationRuleTriggerConfigBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  ResourcesShortageNotificationRuleTriggerConfig build() => _build();

  _$ResourcesShortageNotificationRuleTriggerConfig _build() {
    final _$result =
        _$v ??
        _$ResourcesShortageNotificationRuleTriggerConfig._(
          ramThreshold: ramThreshold,
          cpuThreshold: cpuThreshold,
          storageThreshold: storageThreshold,
          triggerType: BuiltValueNullFieldError.checkNotNull(
            triggerType,
            r'ResourcesShortageNotificationRuleTriggerConfig',
            'triggerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
