// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_activity_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceActivityNotificationInfo extends DeviceActivityNotificationInfo {
  @override
  final String? deviceType;
  @override
  final UserId? affectedUserId;
  @override
  final String? deviceLabel;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final String? eventType;
  @override
  final CustomerId? deviceCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? deviceId;
  @override
  final String? deviceName;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$DeviceActivityNotificationInfo([
    void Function(DeviceActivityNotificationInfoBuilder)? updates,
  ]) => (DeviceActivityNotificationInfoBuilder()..update(updates))._build();

  _$DeviceActivityNotificationInfo._({
    this.deviceType,
    this.affectedUserId,
    this.deviceLabel,
    this.affectedCustomerId,
    this.eventType,
    this.deviceCustomerId,
    this.affectedTenantId,
    this.deviceId,
    this.deviceName,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  DeviceActivityNotificationInfo rebuild(
    void Function(DeviceActivityNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DeviceActivityNotificationInfoBuilder toBuilder() =>
      DeviceActivityNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceActivityNotificationInfo &&
        deviceType == other.deviceType &&
        affectedUserId == other.affectedUserId &&
        deviceLabel == other.deviceLabel &&
        affectedCustomerId == other.affectedCustomerId &&
        eventType == other.eventType &&
        deviceCustomerId == other.deviceCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, deviceType.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, deviceLabel.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, eventType.hashCode);
    _$hash = $jc(_$hash, deviceCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, deviceId.hashCode);
    _$hash = $jc(_$hash, deviceName.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceActivityNotificationInfo')
          ..add('deviceType', deviceType)
          ..add('affectedUserId', affectedUserId)
          ..add('deviceLabel', deviceLabel)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('eventType', eventType)
          ..add('deviceCustomerId', deviceCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('deviceId', deviceId)
          ..add('deviceName', deviceName)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class DeviceActivityNotificationInfoBuilder
    implements
        Builder<
          DeviceActivityNotificationInfo,
          DeviceActivityNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$DeviceActivityNotificationInfo? _$v;

  String? _deviceType;
  String? get deviceType => _$this._deviceType;
  set deviceType(covariant String? deviceType) =>
      _$this._deviceType = deviceType;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  String? _deviceLabel;
  String? get deviceLabel => _$this._deviceLabel;
  set deviceLabel(covariant String? deviceLabel) =>
      _$this._deviceLabel = deviceLabel;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  String? _eventType;
  String? get eventType => _$this._eventType;
  set eventType(covariant String? eventType) => _$this._eventType = eventType;

  CustomerIdBuilder? _deviceCustomerId;
  CustomerIdBuilder get deviceCustomerId =>
      _$this._deviceCustomerId ??= CustomerIdBuilder();
  set deviceCustomerId(covariant CustomerIdBuilder? deviceCustomerId) =>
      _$this._deviceCustomerId = deviceCustomerId;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  String? _deviceId;
  String? get deviceId => _$this._deviceId;
  set deviceId(covariant String? deviceId) => _$this._deviceId = deviceId;

  String? _deviceName;
  String? get deviceName => _$this._deviceName;
  set deviceName(covariant String? deviceName) =>
      _$this._deviceName = deviceName;

  DashboardIdBuilder? _dashboardId;
  DashboardIdBuilder get dashboardId =>
      _$this._dashboardId ??= DashboardIdBuilder();
  set dashboardId(covariant DashboardIdBuilder? dashboardId) =>
      _$this._dashboardId = dashboardId;

  EntityId? _stateEntityId;
  EntityId? get stateEntityId => _$this._stateEntityId;
  set stateEntityId(covariant EntityId? stateEntityId) =>
      _$this._stateEntityId = stateEntityId;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  DeviceActivityNotificationInfoBuilder() {
    DeviceActivityNotificationInfo._defaults(this);
  }

  DeviceActivityNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceType = $v.deviceType;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _deviceLabel = $v.deviceLabel;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _eventType = $v.eventType;
      _deviceCustomerId = $v.deviceCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _deviceId = $v.deviceId;
      _deviceName = $v.deviceName;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DeviceActivityNotificationInfo other) {
    _$v = other as _$DeviceActivityNotificationInfo;
  }

  @override
  void update(void Function(DeviceActivityNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceActivityNotificationInfo build() => _build();

  _$DeviceActivityNotificationInfo _build() {
    _$DeviceActivityNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$DeviceActivityNotificationInfo._(
            deviceType: deviceType,
            affectedUserId: _affectedUserId?.build(),
            deviceLabel: deviceLabel,
            affectedCustomerId: _affectedCustomerId?.build(),
            eventType: eventType,
            deviceCustomerId: _deviceCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            deviceId: deviceId,
            deviceName: deviceName,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DeviceActivityNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();

        _$failedField = 'deviceCustomerId';
        _deviceCustomerId?.build();
        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'DeviceActivityNotificationInfo',
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
