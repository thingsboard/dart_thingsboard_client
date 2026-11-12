// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmNotificationInfo extends AlarmNotificationInfo {
  @override
  final AlarmSeverity? alarmSeverity;
  @override
  final CustomerId? alarmCustomerId;
  @override
  final bool? acknowledged;
  @override
  final UserId? affectedUserId;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final String? alarmOriginatorLabel;
  @override
  final String? alarmType;
  @override
  final AlarmStatus? alarmStatus;
  @override
  final EntityId? alarmOriginator;
  @override
  final String? alarmId;
  @override
  final String? action;
  @override
  final BuiltMap<String, String>? details;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? alarmOriginatorName;
  @override
  final bool? cleared;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$AlarmNotificationInfo([
    void Function(AlarmNotificationInfoBuilder)? updates,
  ]) => (AlarmNotificationInfoBuilder()..update(updates))._build();

  _$AlarmNotificationInfo._({
    this.alarmSeverity,
    this.alarmCustomerId,
    this.acknowledged,
    this.affectedUserId,
    this.affectedCustomerId,
    this.alarmOriginatorLabel,
    this.alarmType,
    this.alarmStatus,
    this.alarmOriginator,
    this.alarmId,
    this.action,
    this.details,
    this.affectedTenantId,
    this.alarmOriginatorName,
    this.cleared,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  AlarmNotificationInfo rebuild(
    void Function(AlarmNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmNotificationInfoBuilder toBuilder() =>
      AlarmNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmNotificationInfo &&
        alarmSeverity == other.alarmSeverity &&
        alarmCustomerId == other.alarmCustomerId &&
        acknowledged == other.acknowledged &&
        affectedUserId == other.affectedUserId &&
        affectedCustomerId == other.affectedCustomerId &&
        alarmOriginatorLabel == other.alarmOriginatorLabel &&
        alarmType == other.alarmType &&
        alarmStatus == other.alarmStatus &&
        alarmOriginator == other.alarmOriginator &&
        alarmId == other.alarmId &&
        action == other.action &&
        details == other.details &&
        affectedTenantId == other.affectedTenantId &&
        alarmOriginatorName == other.alarmOriginatorName &&
        cleared == other.cleared &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, alarmSeverity.hashCode);
    _$hash = $jc(_$hash, alarmCustomerId.hashCode);
    _$hash = $jc(_$hash, acknowledged.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, alarmOriginatorLabel.hashCode);
    _$hash = $jc(_$hash, alarmType.hashCode);
    _$hash = $jc(_$hash, alarmStatus.hashCode);
    _$hash = $jc(_$hash, alarmOriginator.hashCode);
    _$hash = $jc(_$hash, alarmId.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, alarmOriginatorName.hashCode);
    _$hash = $jc(_$hash, cleared.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmNotificationInfo')
          ..add('alarmSeverity', alarmSeverity)
          ..add('alarmCustomerId', alarmCustomerId)
          ..add('acknowledged', acknowledged)
          ..add('affectedUserId', affectedUserId)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('alarmOriginatorLabel', alarmOriginatorLabel)
          ..add('alarmType', alarmType)
          ..add('alarmStatus', alarmStatus)
          ..add('alarmOriginator', alarmOriginator)
          ..add('alarmId', alarmId)
          ..add('action', action)
          ..add('details', details)
          ..add('affectedTenantId', affectedTenantId)
          ..add('alarmOriginatorName', alarmOriginatorName)
          ..add('cleared', cleared)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class AlarmNotificationInfoBuilder
    implements
        Builder<AlarmNotificationInfo, AlarmNotificationInfoBuilder>,
        NotificationInfoBuilder {
  _$AlarmNotificationInfo? _$v;

  AlarmSeverity? _alarmSeverity;
  AlarmSeverity? get alarmSeverity => _$this._alarmSeverity;
  set alarmSeverity(covariant AlarmSeverity? alarmSeverity) =>
      _$this._alarmSeverity = alarmSeverity;

  CustomerIdBuilder? _alarmCustomerId;
  CustomerIdBuilder get alarmCustomerId =>
      _$this._alarmCustomerId ??= CustomerIdBuilder();
  set alarmCustomerId(covariant CustomerIdBuilder? alarmCustomerId) =>
      _$this._alarmCustomerId = alarmCustomerId;

  bool? _acknowledged;
  bool? get acknowledged => _$this._acknowledged;
  set acknowledged(covariant bool? acknowledged) =>
      _$this._acknowledged = acknowledged;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  String? _alarmOriginatorLabel;
  String? get alarmOriginatorLabel => _$this._alarmOriginatorLabel;
  set alarmOriginatorLabel(covariant String? alarmOriginatorLabel) =>
      _$this._alarmOriginatorLabel = alarmOriginatorLabel;

  String? _alarmType;
  String? get alarmType => _$this._alarmType;
  set alarmType(covariant String? alarmType) => _$this._alarmType = alarmType;

  AlarmStatus? _alarmStatus;
  AlarmStatus? get alarmStatus => _$this._alarmStatus;
  set alarmStatus(covariant AlarmStatus? alarmStatus) =>
      _$this._alarmStatus = alarmStatus;

  EntityId? _alarmOriginator;
  EntityId? get alarmOriginator => _$this._alarmOriginator;
  set alarmOriginator(covariant EntityId? alarmOriginator) =>
      _$this._alarmOriginator = alarmOriginator;

  String? _alarmId;
  String? get alarmId => _$this._alarmId;
  set alarmId(covariant String? alarmId) => _$this._alarmId = alarmId;

  String? _action;
  String? get action => _$this._action;
  set action(covariant String? action) => _$this._action = action;

  MapBuilder<String, String>? _details;
  MapBuilder<String, String> get details =>
      _$this._details ??= MapBuilder<String, String>();
  set details(covariant MapBuilder<String, String>? details) =>
      _$this._details = details;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  String? _alarmOriginatorName;
  String? get alarmOriginatorName => _$this._alarmOriginatorName;
  set alarmOriginatorName(covariant String? alarmOriginatorName) =>
      _$this._alarmOriginatorName = alarmOriginatorName;

  bool? _cleared;
  bool? get cleared => _$this._cleared;
  set cleared(covariant bool? cleared) => _$this._cleared = cleared;

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

  AlarmNotificationInfoBuilder() {
    AlarmNotificationInfo._defaults(this);
  }

  AlarmNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _alarmSeverity = $v.alarmSeverity;
      _alarmCustomerId = $v.alarmCustomerId?.toBuilder();
      _acknowledged = $v.acknowledged;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _alarmOriginatorLabel = $v.alarmOriginatorLabel;
      _alarmType = $v.alarmType;
      _alarmStatus = $v.alarmStatus;
      _alarmOriginator = $v.alarmOriginator;
      _alarmId = $v.alarmId;
      _action = $v.action;
      _details = $v.details?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _alarmOriginatorName = $v.alarmOriginatorName;
      _cleared = $v.cleared;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AlarmNotificationInfo other) {
    _$v = other as _$AlarmNotificationInfo;
  }

  @override
  void update(void Function(AlarmNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmNotificationInfo build() => _build();

  _$AlarmNotificationInfo _build() {
    _$AlarmNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$AlarmNotificationInfo._(
            alarmSeverity: alarmSeverity,
            alarmCustomerId: _alarmCustomerId?.build(),
            acknowledged: acknowledged,
            affectedUserId: _affectedUserId?.build(),
            affectedCustomerId: _affectedCustomerId?.build(),
            alarmOriginatorLabel: alarmOriginatorLabel,
            alarmType: alarmType,
            alarmStatus: alarmStatus,
            alarmOriginator: alarmOriginator,
            alarmId: alarmId,
            action: action,
            details: _details?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            alarmOriginatorName: alarmOriginatorName,
            cleared: cleared,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AlarmNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'alarmCustomerId';
        _alarmCustomerId?.build();

        _$failedField = 'affectedUserId';
        _affectedUserId?.build();
        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();

        _$failedField = 'details';
        _details?.build();
        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmNotificationInfo',
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
