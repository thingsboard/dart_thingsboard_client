// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage_limit_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiUsageLimitNotificationInfo extends ApiUsageLimitNotificationInfo {
  @override
  final ApiFeature? feature;
  @override
  final String? tenantName;
  @override
  final UserId? affectedUserId;
  @override
  final ApiUsageRecordKey? recordKey;
  @override
  final String? limit;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? currentValue;
  @override
  final ApiUsageStateValue? status;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$ApiUsageLimitNotificationInfo([
    void Function(ApiUsageLimitNotificationInfoBuilder)? updates,
  ]) => (ApiUsageLimitNotificationInfoBuilder()..update(updates))._build();

  _$ApiUsageLimitNotificationInfo._({
    this.feature,
    this.tenantName,
    this.affectedUserId,
    this.recordKey,
    this.limit,
    this.tenantId,
    this.affectedCustomerId,
    this.affectedTenantId,
    this.currentValue,
    this.status,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  ApiUsageLimitNotificationInfo rebuild(
    void Function(ApiUsageLimitNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ApiUsageLimitNotificationInfoBuilder toBuilder() =>
      ApiUsageLimitNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiUsageLimitNotificationInfo &&
        feature == other.feature &&
        tenantName == other.tenantName &&
        affectedUserId == other.affectedUserId &&
        recordKey == other.recordKey &&
        limit == other.limit &&
        tenantId == other.tenantId &&
        affectedCustomerId == other.affectedCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        currentValue == other.currentValue &&
        status == other.status &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, feature.hashCode);
    _$hash = $jc(_$hash, tenantName.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, recordKey.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, currentValue.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiUsageLimitNotificationInfo')
          ..add('feature', feature)
          ..add('tenantName', tenantName)
          ..add('affectedUserId', affectedUserId)
          ..add('recordKey', recordKey)
          ..add('limit', limit)
          ..add('tenantId', tenantId)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('currentValue', currentValue)
          ..add('status', status)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class ApiUsageLimitNotificationInfoBuilder
    implements
        Builder<
          ApiUsageLimitNotificationInfo,
          ApiUsageLimitNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$ApiUsageLimitNotificationInfo? _$v;

  ApiFeature? _feature;
  ApiFeature? get feature => _$this._feature;
  set feature(covariant ApiFeature? feature) => _$this._feature = feature;

  String? _tenantName;
  String? get tenantName => _$this._tenantName;
  set tenantName(covariant String? tenantName) =>
      _$this._tenantName = tenantName;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  ApiUsageRecordKey? _recordKey;
  ApiUsageRecordKey? get recordKey => _$this._recordKey;
  set recordKey(covariant ApiUsageRecordKey? recordKey) =>
      _$this._recordKey = recordKey;

  String? _limit;
  String? get limit => _$this._limit;
  set limit(covariant String? limit) => _$this._limit = limit;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(covariant TenantIdBuilder? tenantId) =>
      _$this._tenantId = tenantId;

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

  String? _currentValue;
  String? get currentValue => _$this._currentValue;
  set currentValue(covariant String? currentValue) =>
      _$this._currentValue = currentValue;

  ApiUsageStateValue? _status;
  ApiUsageStateValue? get status => _$this._status;
  set status(covariant ApiUsageStateValue? status) => _$this._status = status;

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

  ApiUsageLimitNotificationInfoBuilder() {
    ApiUsageLimitNotificationInfo._defaults(this);
  }

  ApiUsageLimitNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feature = $v.feature;
      _tenantName = $v.tenantName;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _recordKey = $v.recordKey;
      _limit = $v.limit;
      _tenantId = $v.tenantId?.toBuilder();
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _currentValue = $v.currentValue;
      _status = $v.status;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ApiUsageLimitNotificationInfo other) {
    _$v = other as _$ApiUsageLimitNotificationInfo;
  }

  @override
  void update(void Function(ApiUsageLimitNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiUsageLimitNotificationInfo build() => _build();

  _$ApiUsageLimitNotificationInfo _build() {
    _$ApiUsageLimitNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$ApiUsageLimitNotificationInfo._(
            feature: feature,
            tenantName: tenantName,
            affectedUserId: _affectedUserId?.build(),
            recordKey: recordKey,
            limit: limit,
            tenantId: _tenantId?.build(),
            affectedCustomerId: _affectedCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            currentValue: currentValue,
            status: status,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ApiUsageLimitNotificationInfo',
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
          r'ApiUsageLimitNotificationInfo',
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
