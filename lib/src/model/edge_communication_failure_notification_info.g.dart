// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_communication_failure_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeCommunicationFailureNotificationInfo
    extends EdgeCommunicationFailureNotificationInfo {
  @override
  final EdgeId? edgeId;
  @override
  final String? edgeName;
  @override
  final UserId? affectedUserId;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? failureMsg;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$EdgeCommunicationFailureNotificationInfo([
    void Function(EdgeCommunicationFailureNotificationInfoBuilder)? updates,
  ]) => (EdgeCommunicationFailureNotificationInfoBuilder()..update(updates))
      ._build();

  _$EdgeCommunicationFailureNotificationInfo._({
    this.edgeId,
    this.edgeName,
    this.affectedUserId,
    this.tenantId,
    this.customerId,
    this.affectedCustomerId,
    this.affectedTenantId,
    this.failureMsg,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  EdgeCommunicationFailureNotificationInfo rebuild(
    void Function(EdgeCommunicationFailureNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EdgeCommunicationFailureNotificationInfoBuilder toBuilder() =>
      EdgeCommunicationFailureNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeCommunicationFailureNotificationInfo &&
        edgeId == other.edgeId &&
        edgeName == other.edgeName &&
        affectedUserId == other.affectedUserId &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        affectedCustomerId == other.affectedCustomerId &&
        affectedTenantId == other.affectedTenantId &&
        failureMsg == other.failureMsg &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, edgeId.hashCode);
    _$hash = $jc(_$hash, edgeName.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, failureMsg.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'EdgeCommunicationFailureNotificationInfo',
          )
          ..add('edgeId', edgeId)
          ..add('edgeName', edgeName)
          ..add('affectedUserId', affectedUserId)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('affectedTenantId', affectedTenantId)
          ..add('failureMsg', failureMsg)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class EdgeCommunicationFailureNotificationInfoBuilder
    implements
        Builder<
          EdgeCommunicationFailureNotificationInfo,
          EdgeCommunicationFailureNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$EdgeCommunicationFailureNotificationInfo? _$v;

  EdgeIdBuilder? _edgeId;
  EdgeIdBuilder get edgeId => _$this._edgeId ??= EdgeIdBuilder();
  set edgeId(covariant EdgeIdBuilder? edgeId) => _$this._edgeId = edgeId;

  String? _edgeName;
  String? get edgeName => _$this._edgeName;
  set edgeName(covariant String? edgeName) => _$this._edgeName = edgeName;

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

  String? _failureMsg;
  String? get failureMsg => _$this._failureMsg;
  set failureMsg(covariant String? failureMsg) =>
      _$this._failureMsg = failureMsg;

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

  EdgeCommunicationFailureNotificationInfoBuilder() {
    EdgeCommunicationFailureNotificationInfo._defaults(this);
  }

  EdgeCommunicationFailureNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _edgeId = $v.edgeId?.toBuilder();
      _edgeName = $v.edgeName;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _failureMsg = $v.failureMsg;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EdgeCommunicationFailureNotificationInfo other) {
    _$v = other as _$EdgeCommunicationFailureNotificationInfo;
  }

  @override
  void update(
    void Function(EdgeCommunicationFailureNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  EdgeCommunicationFailureNotificationInfo build() => _build();

  _$EdgeCommunicationFailureNotificationInfo _build() {
    _$EdgeCommunicationFailureNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$EdgeCommunicationFailureNotificationInfo._(
            edgeId: _edgeId?.build(),
            edgeName: edgeName,
            affectedUserId: _affectedUserId?.build(),
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            affectedCustomerId: _affectedCustomerId?.build(),
            affectedTenantId: _affectedTenantId?.build(),
            failureMsg: failureMsg,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EdgeCommunicationFailureNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edgeId';
        _edgeId?.build();

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

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdgeCommunicationFailureNotificationInfo',
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
