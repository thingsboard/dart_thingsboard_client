// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rate_limits_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RateLimitsNotificationInfo extends RateLimitsNotificationInfo {
  @override
  final String? tenantName;
  @override
  final EntityId? limitLevel;
  @override
  final UserId? affectedUserId;
  @override
  final TenantId? tenantId;
  @override
  final String? limitLevelEntityName;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final LimitedApi? api;
  @override
  final TenantId? affectedTenantId;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$RateLimitsNotificationInfo([
    void Function(RateLimitsNotificationInfoBuilder)? updates,
  ]) => (RateLimitsNotificationInfoBuilder()..update(updates))._build();

  _$RateLimitsNotificationInfo._({
    this.tenantName,
    this.limitLevel,
    this.affectedUserId,
    this.tenantId,
    this.limitLevelEntityName,
    this.affectedCustomerId,
    this.api,
    this.affectedTenantId,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  RateLimitsNotificationInfo rebuild(
    void Function(RateLimitsNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RateLimitsNotificationInfoBuilder toBuilder() =>
      RateLimitsNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimitsNotificationInfo &&
        tenantName == other.tenantName &&
        limitLevel == other.limitLevel &&
        affectedUserId == other.affectedUserId &&
        tenantId == other.tenantId &&
        limitLevelEntityName == other.limitLevelEntityName &&
        affectedCustomerId == other.affectedCustomerId &&
        api == other.api &&
        affectedTenantId == other.affectedTenantId &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantName.hashCode);
    _$hash = $jc(_$hash, limitLevel.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, limitLevelEntityName.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, api.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RateLimitsNotificationInfo')
          ..add('tenantName', tenantName)
          ..add('limitLevel', limitLevel)
          ..add('affectedUserId', affectedUserId)
          ..add('tenantId', tenantId)
          ..add('limitLevelEntityName', limitLevelEntityName)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('api', api)
          ..add('affectedTenantId', affectedTenantId)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class RateLimitsNotificationInfoBuilder
    implements
        Builder<RateLimitsNotificationInfo, RateLimitsNotificationInfoBuilder>,
        NotificationInfoBuilder {
  _$RateLimitsNotificationInfo? _$v;

  String? _tenantName;
  String? get tenantName => _$this._tenantName;
  set tenantName(covariant String? tenantName) =>
      _$this._tenantName = tenantName;

  EntityId? _limitLevel;
  EntityId? get limitLevel => _$this._limitLevel;
  set limitLevel(covariant EntityId? limitLevel) =>
      _$this._limitLevel = limitLevel;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(covariant TenantIdBuilder? tenantId) =>
      _$this._tenantId = tenantId;

  String? _limitLevelEntityName;
  String? get limitLevelEntityName => _$this._limitLevelEntityName;
  set limitLevelEntityName(covariant String? limitLevelEntityName) =>
      _$this._limitLevelEntityName = limitLevelEntityName;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

  LimitedApi? _api;
  LimitedApi? get api => _$this._api;
  set api(covariant LimitedApi? api) => _$this._api = api;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

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

  RateLimitsNotificationInfoBuilder() {
    RateLimitsNotificationInfo._defaults(this);
  }

  RateLimitsNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantName = $v.tenantName;
      _limitLevel = $v.limitLevel;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _tenantId = $v.tenantId?.toBuilder();
      _limitLevelEntityName = $v.limitLevelEntityName;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _api = $v.api;
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RateLimitsNotificationInfo other) {
    _$v = other as _$RateLimitsNotificationInfo;
  }

  @override
  void update(void Function(RateLimitsNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RateLimitsNotificationInfo build() => _build();

  _$RateLimitsNotificationInfo _build() {
    _$RateLimitsNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$RateLimitsNotificationInfo._(
            tenantName: tenantName,
            limitLevel: limitLevel,
            affectedUserId: _affectedUserId?.build(),
            tenantId: _tenantId?.build(),
            limitLevelEntityName: limitLevelEntityName,
            affectedCustomerId: _affectedCustomerId?.build(),
            api: api,
            affectedTenantId: _affectedTenantId?.build(),
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RateLimitsNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedUserId';
        _affectedUserId?.build();
        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();

        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RateLimitsNotificationInfo',
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
