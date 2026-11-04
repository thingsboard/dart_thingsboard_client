// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_platform_version_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NewPlatformVersionNotificationInfo
    extends NewPlatformVersionNotificationInfo {
  @override
  final String? latestVersionReleaseNotesUrl;
  @override
  final String? latestVersion;
  @override
  final UserId? affectedUserId;
  @override
  final CustomerId? affectedCustomerId;
  @override
  final String? currentVersionReleaseNotesUrl;
  @override
  final TenantId? affectedTenantId;
  @override
  final String? upgradeInstructionsUrl;
  @override
  final String? currentVersion;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$NewPlatformVersionNotificationInfo([
    void Function(NewPlatformVersionNotificationInfoBuilder)? updates,
  ]) => (NewPlatformVersionNotificationInfoBuilder()..update(updates))._build();

  _$NewPlatformVersionNotificationInfo._({
    this.latestVersionReleaseNotesUrl,
    this.latestVersion,
    this.affectedUserId,
    this.affectedCustomerId,
    this.currentVersionReleaseNotesUrl,
    this.affectedTenantId,
    this.upgradeInstructionsUrl,
    this.currentVersion,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  NewPlatformVersionNotificationInfo rebuild(
    void Function(NewPlatformVersionNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  NewPlatformVersionNotificationInfoBuilder toBuilder() =>
      NewPlatformVersionNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewPlatformVersionNotificationInfo &&
        latestVersionReleaseNotesUrl == other.latestVersionReleaseNotesUrl &&
        latestVersion == other.latestVersion &&
        affectedUserId == other.affectedUserId &&
        affectedCustomerId == other.affectedCustomerId &&
        currentVersionReleaseNotesUrl == other.currentVersionReleaseNotesUrl &&
        affectedTenantId == other.affectedTenantId &&
        upgradeInstructionsUrl == other.upgradeInstructionsUrl &&
        currentVersion == other.currentVersion &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latestVersionReleaseNotesUrl.hashCode);
    _$hash = $jc(_$hash, latestVersion.hashCode);
    _$hash = $jc(_$hash, affectedUserId.hashCode);
    _$hash = $jc(_$hash, affectedCustomerId.hashCode);
    _$hash = $jc(_$hash, currentVersionReleaseNotesUrl.hashCode);
    _$hash = $jc(_$hash, affectedTenantId.hashCode);
    _$hash = $jc(_$hash, upgradeInstructionsUrl.hashCode);
    _$hash = $jc(_$hash, currentVersion.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewPlatformVersionNotificationInfo')
          ..add('latestVersionReleaseNotesUrl', latestVersionReleaseNotesUrl)
          ..add('latestVersion', latestVersion)
          ..add('affectedUserId', affectedUserId)
          ..add('affectedCustomerId', affectedCustomerId)
          ..add('currentVersionReleaseNotesUrl', currentVersionReleaseNotesUrl)
          ..add('affectedTenantId', affectedTenantId)
          ..add('upgradeInstructionsUrl', upgradeInstructionsUrl)
          ..add('currentVersion', currentVersion)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class NewPlatformVersionNotificationInfoBuilder
    implements
        Builder<
          NewPlatformVersionNotificationInfo,
          NewPlatformVersionNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$NewPlatformVersionNotificationInfo? _$v;

  String? _latestVersionReleaseNotesUrl;
  String? get latestVersionReleaseNotesUrl =>
      _$this._latestVersionReleaseNotesUrl;
  set latestVersionReleaseNotesUrl(
    covariant String? latestVersionReleaseNotesUrl,
  ) => _$this._latestVersionReleaseNotesUrl = latestVersionReleaseNotesUrl;

  String? _latestVersion;
  String? get latestVersion => _$this._latestVersion;
  set latestVersion(covariant String? latestVersion) =>
      _$this._latestVersion = latestVersion;

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

  String? _currentVersionReleaseNotesUrl;
  String? get currentVersionReleaseNotesUrl =>
      _$this._currentVersionReleaseNotesUrl;
  set currentVersionReleaseNotesUrl(
    covariant String? currentVersionReleaseNotesUrl,
  ) => _$this._currentVersionReleaseNotesUrl = currentVersionReleaseNotesUrl;

  TenantIdBuilder? _affectedTenantId;
  TenantIdBuilder get affectedTenantId =>
      _$this._affectedTenantId ??= TenantIdBuilder();
  set affectedTenantId(covariant TenantIdBuilder? affectedTenantId) =>
      _$this._affectedTenantId = affectedTenantId;

  String? _upgradeInstructionsUrl;
  String? get upgradeInstructionsUrl => _$this._upgradeInstructionsUrl;
  set upgradeInstructionsUrl(covariant String? upgradeInstructionsUrl) =>
      _$this._upgradeInstructionsUrl = upgradeInstructionsUrl;

  String? _currentVersion;
  String? get currentVersion => _$this._currentVersion;
  set currentVersion(covariant String? currentVersion) =>
      _$this._currentVersion = currentVersion;

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

  NewPlatformVersionNotificationInfoBuilder() {
    NewPlatformVersionNotificationInfo._defaults(this);
  }

  NewPlatformVersionNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latestVersionReleaseNotesUrl = $v.latestVersionReleaseNotesUrl;
      _latestVersion = $v.latestVersion;
      _affectedUserId = $v.affectedUserId?.toBuilder();
      _affectedCustomerId = $v.affectedCustomerId?.toBuilder();
      _currentVersionReleaseNotesUrl = $v.currentVersionReleaseNotesUrl;
      _affectedTenantId = $v.affectedTenantId?.toBuilder();
      _upgradeInstructionsUrl = $v.upgradeInstructionsUrl;
      _currentVersion = $v.currentVersion;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant NewPlatformVersionNotificationInfo other) {
    _$v = other as _$NewPlatformVersionNotificationInfo;
  }

  @override
  void update(
    void Function(NewPlatformVersionNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  NewPlatformVersionNotificationInfo build() => _build();

  _$NewPlatformVersionNotificationInfo _build() {
    _$NewPlatformVersionNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$NewPlatformVersionNotificationInfo._(
            latestVersionReleaseNotesUrl: latestVersionReleaseNotesUrl,
            latestVersion: latestVersion,
            affectedUserId: _affectedUserId?.build(),
            affectedCustomerId: _affectedCustomerId?.build(),
            currentVersionReleaseNotesUrl: currentVersionReleaseNotesUrl,
            affectedTenantId: _affectedTenantId?.build(),
            upgradeInstructionsUrl: upgradeInstructionsUrl,
            currentVersion: currentVersion,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'NewPlatformVersionNotificationInfo',
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

        _$failedField = 'affectedTenantId';
        _affectedTenantId?.build();

        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'NewPlatformVersionNotificationInfo',
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
