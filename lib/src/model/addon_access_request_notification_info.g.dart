// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_access_request_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddonAccessRequestNotificationInfo
    extends AddonAccessRequestNotificationInfo {
  @override
  final String? baseUrl;
  @override
  final String? addonNameOverride;
  @override
  final AddonType? addonType;
  @override
  final String? enableAddonActionLabel;
  @override
  final String? userEmail;
  @override
  final String? enableAddonLink;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$AddonAccessRequestNotificationInfo([
    void Function(AddonAccessRequestNotificationInfoBuilder)? updates,
  ]) => (AddonAccessRequestNotificationInfoBuilder()..update(updates))._build();

  _$AddonAccessRequestNotificationInfo._({
    this.baseUrl,
    this.addonNameOverride,
    this.addonType,
    this.enableAddonActionLabel,
    this.userEmail,
    this.enableAddonLink,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  AddonAccessRequestNotificationInfo rebuild(
    void Function(AddonAccessRequestNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AddonAccessRequestNotificationInfoBuilder toBuilder() =>
      AddonAccessRequestNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddonAccessRequestNotificationInfo &&
        baseUrl == other.baseUrl &&
        addonNameOverride == other.addonNameOverride &&
        addonType == other.addonType &&
        enableAddonActionLabel == other.enableAddonActionLabel &&
        userEmail == other.userEmail &&
        enableAddonLink == other.enableAddonLink &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, addonNameOverride.hashCode);
    _$hash = $jc(_$hash, addonType.hashCode);
    _$hash = $jc(_$hash, enableAddonActionLabel.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, enableAddonLink.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddonAccessRequestNotificationInfo')
          ..add('baseUrl', baseUrl)
          ..add('addonNameOverride', addonNameOverride)
          ..add('addonType', addonType)
          ..add('enableAddonActionLabel', enableAddonActionLabel)
          ..add('userEmail', userEmail)
          ..add('enableAddonLink', enableAddonLink)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class AddonAccessRequestNotificationInfoBuilder
    implements
        Builder<
          AddonAccessRequestNotificationInfo,
          AddonAccessRequestNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$AddonAccessRequestNotificationInfo? _$v;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(covariant String? baseUrl) => _$this._baseUrl = baseUrl;

  String? _addonNameOverride;
  String? get addonNameOverride => _$this._addonNameOverride;
  set addonNameOverride(covariant String? addonNameOverride) =>
      _$this._addonNameOverride = addonNameOverride;

  AddonType? _addonType;
  AddonType? get addonType => _$this._addonType;
  set addonType(covariant AddonType? addonType) =>
      _$this._addonType = addonType;

  String? _enableAddonActionLabel;
  String? get enableAddonActionLabel => _$this._enableAddonActionLabel;
  set enableAddonActionLabel(covariant String? enableAddonActionLabel) =>
      _$this._enableAddonActionLabel = enableAddonActionLabel;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(covariant String? userEmail) => _$this._userEmail = userEmail;

  String? _enableAddonLink;
  String? get enableAddonLink => _$this._enableAddonLink;
  set enableAddonLink(covariant String? enableAddonLink) =>
      _$this._enableAddonLink = enableAddonLink;

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

  AddonAccessRequestNotificationInfoBuilder() {
    AddonAccessRequestNotificationInfo._defaults(this);
  }

  AddonAccessRequestNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseUrl = $v.baseUrl;
      _addonNameOverride = $v.addonNameOverride;
      _addonType = $v.addonType;
      _enableAddonActionLabel = $v.enableAddonActionLabel;
      _userEmail = $v.userEmail;
      _enableAddonLink = $v.enableAddonLink;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AddonAccessRequestNotificationInfo other) {
    _$v = other as _$AddonAccessRequestNotificationInfo;
  }

  @override
  void update(
    void Function(AddonAccessRequestNotificationInfoBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  AddonAccessRequestNotificationInfo build() => _build();

  _$AddonAccessRequestNotificationInfo _build() {
    _$AddonAccessRequestNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$AddonAccessRequestNotificationInfo._(
            baseUrl: baseUrl,
            addonNameOverride: addonNameOverride,
            addonType: addonType,
            enableAddonActionLabel: enableAddonActionLabel,
            userEmail: userEmail,
            enableAddonLink: enableAddonLink,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AddonAccessRequestNotificationInfo',
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
          r'AddonAccessRequestNotificationInfo',
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
