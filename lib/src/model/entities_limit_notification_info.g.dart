// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entities_limit_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntitiesLimitNotificationInfo extends EntitiesLimitNotificationInfo {
  @override
  final String? tenantName;
  @override
  final UserId? affectedUserId;
  @override
  final EntityType? entityType;
  @override
  final int? currentCount;
  @override
  final int? limit;
  @override
  final TenantId? tenantId;
  @override
  final int? percents;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$EntitiesLimitNotificationInfo([
    void Function(EntitiesLimitNotificationInfoBuilder)? updates,
  ]) => (EntitiesLimitNotificationInfoBuilder()..update(updates))._build();

  _$EntitiesLimitNotificationInfo._({
    this.tenantName,
    this.affectedUserId,
    this.entityType,
    this.currentCount,
    this.limit,
    this.tenantId,
    this.percents,
    this.affectedCustomerId,
    this.affectedTenantId,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  EntitiesLimitNotificationInfo rebuild(
    void Function(EntitiesLimitNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntitiesLimitNotificationInfoBuilder toBuilder() =>
      EntitiesLimitNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntitiesLimitNotificationInfo &&
        tenantName == other.tenantName &&
        affectedUserId == other.affectedUserId &&
        entityType == other.entityType &&
        currentCount == other.currentCount &&
        limit == other.limit &&
        tenantId == other.tenantId &&
        percents == other.percents &&
        affectedCustomerId == other.affectedCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantName.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, currentCount.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, percents.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntitiesLimitNotificationInfo')
          ..add('tenantName', tenantName)
          ..add('affectedUserId', affectedUserId)
          ..add('entityType', entityType)
          ..add('currentCount', currentCount)
          ..add('limit', limit)
          ..add('tenantId', tenantId)
          ..add('percents', percents)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class EntitiesLimitNotificationInfoBuilder
    implements
        Builder<
          EntitiesLimitNotificationInfo,
          EntitiesLimitNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$EntitiesLimitNotificationInfo? _$v;

  String? _tenantName;
  String? get tenantName => _$this._tenantName;
  set tenantName(covariant String? tenantName) =>
      _$this._tenantName = tenantName;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  int? _currentCount;
  int? get currentCount => _$this._currentCount;
  set currentCount(covariant int? currentCount) =>
      _$this._currentCount = currentCount;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(covariant int? limit) => _$this._limit = limit;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(covariant TenantIdBuilder? tenantId) =>
      _$this._tenantId = tenantId;

  int? _percents;
  int? get percents => _$this._percents;
  set percents(covariant int? percents) => _$this._percents = percents;

  CustomerIdBuilder? _affectedCustomerId;
  CustomerIdBuilder get affectedCustomerId =>
      _$this._affectedCustomerId ??= CustomerIdBuilder();
  set affectedCustomerId(covariant CustomerIdBuilder? affectedCustomerId) =>
      _$this._affectedCustomerId = affectedCustomerId;

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

  EntitiesLimitNotificationInfoBuilder() {
    EntitiesLimitNotificationInfo._defaults(this);
  }

  EntitiesLimitNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantName = $v.tenantName;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _entityType = $v.entityType;
      _currentCount = $v.currentCount;
      _limit = $v.limit;
      _tenantId = $v.tenantId?.toBuilder();
      _percents = $v.percents;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntitiesLimitNotificationInfo other) {
    _$v = other as _$EntitiesLimitNotificationInfo;
  }

  @override
  void update(void Function(EntitiesLimitNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntitiesLimitNotificationInfo build() => _build();

  _$EntitiesLimitNotificationInfo _build() {
    _$EntitiesLimitNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$EntitiesLimitNotificationInfo._(
            tenantName: tenantName,
            affectedUserId: _affectedUserId?.build(),
            entityType: entityType,
            currentCount: currentCount,
            limit: limit,
            tenantId: _tenantId?.build(),
            percents: percents,
            affectedCustomerId: _affectedCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntitiesLimitNotificationInfo',
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
          r'EntitiesLimitNotificationInfo',
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
