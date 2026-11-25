// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_generated_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReportGeneratedNotificationInfo
    extends ReportGeneratedNotificationInfo {
  @override
  final String? reportName;
  @override
  final UserId? affectedUserId;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final TbReportFormat? reportFormat;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? reportPublicUrl;
  @override
  final UserId? userId;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$ReportGeneratedNotificationInfo([
    void Function(ReportGeneratedNotificationInfoBuilder)? updates,
  ]) => (ReportGeneratedNotificationInfoBuilder()..update(updates))._build();

  _$ReportGeneratedNotificationInfo._({
    this.reportName,
    this.affectedUserId,
    this.tenantId,
    this.customerId,
    this.reportFormat,
    this.affectedCustomerId,
    this.affectedTenantId,
    this.reportPublicUrl,
    this.userId,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  ReportGeneratedNotificationInfo rebuild(
    void Function(ReportGeneratedNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReportGeneratedNotificationInfoBuilder toBuilder() =>
      ReportGeneratedNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReportGeneratedNotificationInfo &&
        reportName == other.reportName &&
        affectedUserId == other.affectedUserId &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        reportFormat == other.reportFormat &&
        affectedCustomerId == other.affectedCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        reportPublicUrl == other.reportPublicUrl &&
        userId == other.userId &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reportName.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, reportFormat.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, reportPublicUrl.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReportGeneratedNotificationInfo')
          ..add('reportName', reportName)
          ..add('affectedUserId', affectedUserId)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('reportFormat', reportFormat)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('reportPublicUrl', reportPublicUrl)
          ..add('userId', userId)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class ReportGeneratedNotificationInfoBuilder
    implements
        Builder<
          ReportGeneratedNotificationInfo,
          ReportGeneratedNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$ReportGeneratedNotificationInfo? _$v;

  String? _reportName;
  String? get reportName => _$this._reportName;
  set reportName(covariant String? reportName) =>
      _$this._reportName = reportName;

  UserIdBuilder? _affectedUserId;
  UserIdBuilder get affectedUserId =>
      _$this._affectedUserId ??= UserIdBuilder();
  set affectedUserId(covariant UserIdBuilder? affectedUserId) =>
      _$this._affectedUserId = affectedUserId;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(covariant TenantIdBuilder? tenantId) =>
      _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(covariant CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  TbReportFormat? _reportFormat;
  TbReportFormat? get reportFormat => _$this._reportFormat;
  set reportFormat(covariant TbReportFormat? reportFormat) =>
      _$this._reportFormat = reportFormat;

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

  String? _reportPublicUrl;
  String? get reportPublicUrl => _$this._reportPublicUrl;
  set reportPublicUrl(covariant String? reportPublicUrl) =>
      _$this._reportPublicUrl = reportPublicUrl;

  UserIdBuilder? _userId;
  UserIdBuilder get userId => _$this._userId ??= UserIdBuilder();
  set userId(covariant UserIdBuilder? userId) => _$this._userId = userId;

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

  ReportGeneratedNotificationInfoBuilder() {
    ReportGeneratedNotificationInfo._defaults(this);
  }

  ReportGeneratedNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reportName = $v.reportName;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _reportFormat = $v.reportFormat;
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _reportPublicUrl = $v.reportPublicUrl;
      _userId = $v.userId?.toBuilder();
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ReportGeneratedNotificationInfo other) {
    _$v = other as _$ReportGeneratedNotificationInfo;
  }

  @override
  void update(void Function(ReportGeneratedNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReportGeneratedNotificationInfo build() => _build();

  _$ReportGeneratedNotificationInfo _build() {
    _$ReportGeneratedNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$ReportGeneratedNotificationInfo._(
            reportName: reportName,
            affectedUserId: _affectedUserId?.build(),
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            reportFormat: reportFormat,
            affectedCustomerId: _affectedCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            reportPublicUrl: reportPublicUrl,
            userId: _userId?.build(),
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'ReportGeneratedNotificationInfo',
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
        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'affectedCustomerId';
        _affectedCustomerId?.build();
        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'userId';
        _userId?.build();
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReportGeneratedNotificationInfo',
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
