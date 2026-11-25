// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_upgrade_request_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlanUpgradeRequestNotificationInfo
    extends PlanUpgradeRequestNotificationInfo {
  @override
  final String? baseUrl;
  @override
  final String? planName;
  @override
  final String? userEmail;
  @override
  final String? upgradePlanLink;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$PlanUpgradeRequestNotificationInfo([
    void Function(PlanUpgradeRequestNotificationInfoBuilder)? updates,
  ]) => (PlanUpgradeRequestNotificationInfoBuilder()..update(updates))._build();

  _$PlanUpgradeRequestNotificationInfo._({
    this.baseUrl,
    this.planName,
    this.userEmail,
    this.upgradePlanLink,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  PlanUpgradeRequestNotificationInfo rebuild(
    void Function(PlanUpgradeRequestNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlanUpgradeRequestNotificationInfoBuilder toBuilder() =>
      PlanUpgradeRequestNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlanUpgradeRequestNotificationInfo &&
        baseUrl == other.baseUrl &&
        planName == other.planName &&
        userEmail == other.userEmail &&
        upgradePlanLink == other.upgradePlanLink &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, planName.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, upgradePlanLink.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlanUpgradeRequestNotificationInfo')
          ..add('baseUrl', baseUrl)
          ..add('planName', planName)
          ..add('userEmail', userEmail)
          ..add('upgradePlanLink', upgradePlanLink)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class PlanUpgradeRequestNotificationInfoBuilder
    implements
        Builder<
          PlanUpgradeRequestNotificationInfo,
          PlanUpgradeRequestNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$PlanUpgradeRequestNotificationInfo? _$v;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(covariant String? baseUrl) => _$this._baseUrl = baseUrl;

  String? _planName;
  String? get planName => _$this._planName;
  set planName(covariant String? planName) => _$this._planName = planName;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(covariant String? userEmail) => _$this._userEmail = userEmail;

  String? _upgradePlanLink;
  String? get upgradePlanLink => _$this._upgradePlanLink;
  set upgradePlanLink(covariant String? upgradePlanLink) =>
      _$this._upgradePlanLink = upgradePlanLink;

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

  PlanUpgradeRequestNotificationInfoBuilder() {
    PlanUpgradeRequestNotificationInfo._defaults(this);
  }

  PlanUpgradeRequestNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseUrl = $v.baseUrl;
      _planName = $v.planName;
      _userEmail = $v.userEmail;
      _upgradePlanLink = $v.upgradePlanLink;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant PlanUpgradeRequestNotificationInfo other) {
    _$v = other as _$PlanUpgradeRequestNotificationInfo;
  }

  @override
  void update(
    void Function(PlanUpgradeRequestNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  PlanUpgradeRequestNotificationInfo build() => _build();

  _$PlanUpgradeRequestNotificationInfo _build() {
    _$PlanUpgradeRequestNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$PlanUpgradeRequestNotificationInfo._(
            baseUrl: baseUrl,
            planName: planName,
            userEmail: userEmail,
            upgradePlanLink: upgradePlanLink,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'PlanUpgradeRequestNotificationInfo',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlanUpgradeRequestNotificationInfo',
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
