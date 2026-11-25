// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_activity_notification_rule_trigger_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceActivityNotificationRuleTriggerConfig
    extends DeviceActivityNotificationRuleTriggerConfig {
  @override
  final BuiltSet<String>? devices;
  @override
  final BuiltSet<DeviceEvent> notifyOn;
  @override
  final BuiltSet<String>? deviceProfiles;
  @override
  final NotificationRuleTriggerType triggerType;

  factory _$DeviceActivityNotificationRuleTriggerConfig([
    void Function(DeviceActivityNotificationRuleTriggerConfigBuilder)? updates,
  ]) => (DeviceActivityNotificationRuleTriggerConfigBuilder()..update(updates))
      ._build();

  _$DeviceActivityNotificationRuleTriggerConfig._({
    this.devices,
    required this.notifyOn,
    this.deviceProfiles,
    required this.triggerType,
  }) : super._();
  @override
  DeviceActivityNotificationRuleTriggerConfig rebuild(
    void Function(DeviceActivityNotificationRuleTriggerConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeviceActivityNotificationRuleTriggerConfigBuilder toBuilder() =>
      DeviceActivityNotificationRuleTriggerConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceActivityNotificationRuleTriggerConfig &&
        devices == other.devices &&
        notifyOn == other.notifyOn &&
        deviceProfiles == other.deviceProfiles &&
        triggerType == other.triggerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, devices.hashCode);
    _$hash = $jc(_$hash, notifyOn.hashCode);
    _$hash = $jc(_$hash, deviceProfiles.hashCode);
    _$hash = $jc(_$hash, triggerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'DeviceActivityNotificationRuleTriggerConfig',
          )
          ..add('devices', devices)
          ..add('notifyOn', notifyOn)
          ..add('deviceProfiles', deviceProfiles)
          ..add('triggerType', triggerType))
        .toString();
  }
}

class DeviceActivityNotificationRuleTriggerConfigBuilder
    implements
        Builder<
          DeviceActivityNotificationRuleTriggerConfig,
          DeviceActivityNotificationRuleTriggerConfigBuilder
        >,
        NotificationRuleTriggerConfigBuilder {
  _$DeviceActivityNotificationRuleTriggerConfig? _$v;

  SetBuilder<String>? _devices;
  SetBuilder<String> get devices => _$this._devices ??= SetBuilder<String>();
  set devices(covariant SetBuilder<String>? devices) =>
      _$this._devices = devices;

  SetBuilder<DeviceEvent>? _notifyOn;
  SetBuilder<DeviceEvent> get notifyOn =>
      _$this._notifyOn ??= SetBuilder<DeviceEvent>();
  set notifyOn(covariant SetBuilder<DeviceEvent>? notifyOn) =>
      _$this._notifyOn = notifyOn;

  SetBuilder<String>? _deviceProfiles;
  SetBuilder<String> get deviceProfiles =>
      _$this._deviceProfiles ??= SetBuilder<String>();
  set deviceProfiles(covariant SetBuilder<String>? deviceProfiles) =>
      _$this._deviceProfiles = deviceProfiles;

  NotificationRuleTriggerType? _triggerType;
  NotificationRuleTriggerType? get triggerType => _$this._triggerType;
  set triggerType(covariant NotificationRuleTriggerType? triggerType) =>
      _$this._triggerType = triggerType;

  DeviceActivityNotificationRuleTriggerConfigBuilder() {
    DeviceActivityNotificationRuleTriggerConfig._defaults(this);
  }

  DeviceActivityNotificationRuleTriggerConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _devices = $v.devices?.toBuilder();
      _notifyOn = $v.notifyOn.toBuilder();
      _deviceProfiles = $v.deviceProfiles?.toBuilder();
      _triggerType = $v.triggerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DeviceActivityNotificationRuleTriggerConfig other) {
    _$v = other as _$DeviceActivityNotificationRuleTriggerConfig;
  }

  @override
  void update(
    void Function(DeviceActivityNotificationRuleTriggerConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  DeviceActivityNotificationRuleTriggerConfig build() => _build();

  _$DeviceActivityNotificationRuleTriggerConfig _build() {
    _$DeviceActivityNotificationRuleTriggerConfig _$result;
    try {
      _$result =
          _$v ??
          _$DeviceActivityNotificationRuleTriggerConfig._(
            devices: _devices?.build(),
            notifyOn: notifyOn.build(),
            deviceProfiles: _deviceProfiles?.build(),
            triggerType: BuiltValueNullFieldError.checkNotNull(
              triggerType,
              r'DeviceActivityNotificationRuleTriggerConfig',
              'triggerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'devices';
        _devices?.build();
        _$failedField = 'notifyOn';
        notifyOn.build();
        _$failedField = 'deviceProfiles';
        _deviceProfiles?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceActivityNotificationRuleTriggerConfig',
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
