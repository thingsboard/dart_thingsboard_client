// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_access_error_notification_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddonAccessErrorNotificationInfo
    extends AddonAccessErrorNotificationInfo {
  @override
  final String? checkConfigurationActionLabel;
  @override
  final String? baseUrl;
  @override
  final String? addonNameOverride;
  @override
  final String? checkConfigurationLink;
  @override
  final AddonType? addonType;
  @override
  final String? userEmail;
  @override
  final DashboardId? dashboardId;
  @override
  final EntityId? stateEntityId;
  @override
  final String type;

  factory _$AddonAccessErrorNotificationInfo([
    void Function(AddonAccessErrorNotificationInfoBuilder)? updates,
  ]) => (AddonAccessErrorNotificationInfoBuilder()..update(updates))._build();

  _$AddonAccessErrorNotificationInfo._({
    this.checkConfigurationActionLabel,
    this.baseUrl,
    this.addonNameOverride,
    this.checkConfigurationLink,
    this.addonType,
    this.userEmail,
    this.dashboardId,
    this.stateEntityId,
    required this.type,
  }) : super._();
  @override
  AddonAccessErrorNotificationInfo rebuild(
    void Function(AddonAccessErrorNotificationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AddonAccessErrorNotificationInfoBuilder toBuilder() =>
      AddonAccessErrorNotificationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddonAccessErrorNotificationInfo &&
        checkConfigurationActionLabel == other.checkConfigurationActionLabel &&
        baseUrl == other.baseUrl &&
        addonNameOverride == other.addonNameOverride &&
        checkConfigurationLink == other.checkConfigurationLink &&
        addonType == other.addonType &&
        userEmail == other.userEmail &&
        dashboardId == other.dashboardId &&
        stateEntityId == other.stateEntityId &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checkConfigurationActionLabel.hashCode);
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, addonNameOverride.hashCode);
    _$hash = $jc(_$hash, checkConfigurationLink.hashCode);
    _$hash = $jc(_$hash, addonType.hashCode);
    _$hash = $jc(_$hash, userEmail.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, stateEntityId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddonAccessErrorNotificationInfo')
          ..add('checkConfigurationActionLabel', checkConfigurationActionLabel)
          ..add('baseUrl', baseUrl)
          ..add('addonNameOverride', addonNameOverride)
          ..add('checkConfigurationLink', checkConfigurationLink)
          ..add('addonType', addonType)
          ..add('userEmail', userEmail)
          ..add('dashboardId', dashboardId)
          ..add('stateEntityId', stateEntityId)
          ..add('type', type))
        .toString();
  }
}

class AddonAccessErrorNotificationInfoBuilder
    implements
        Builder<
          AddonAccessErrorNotificationInfo,
          AddonAccessErrorNotificationInfoBuilder
        >,
        NotificationInfoBuilder {
  _$AddonAccessErrorNotificationInfo? _$v;

  String? _checkConfigurationActionLabel;
  String? get checkConfigurationActionLabel =>
      _$this._checkConfigurationActionLabel;
  set checkConfigurationActionLabel(
    covariant String? checkConfigurationActionLabel,
  ) => _$this._checkConfigurationActionLabel = checkConfigurationActionLabel;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(covariant String? baseUrl) => _$this._baseUrl = baseUrl;

  String? _addonNameOverride;
  String? get addonNameOverride => _$this._addonNameOverride;
  set addonNameOverride(covariant String? addonNameOverride) =>
      _$this._addonNameOverride = addonNameOverride;

  String? _checkConfigurationLink;
  String? get checkConfigurationLink => _$this._checkConfigurationLink;
  set checkConfigurationLink(covariant String? checkConfigurationLink) =>
      _$this._checkConfigurationLink = checkConfigurationLink;

  AddonType? _addonType;
  AddonType? get addonType => _$this._addonType;
  set addonType(covariant AddonType? addonType) =>
      _$this._addonType = addonType;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(covariant String? userEmail) => _$this._userEmail = userEmail;

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

  AddonAccessErrorNotificationInfoBuilder() {
    AddonAccessErrorNotificationInfo._defaults(this);
  }

  AddonAccessErrorNotificationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checkConfigurationActionLabel = $v.checkConfigurationActionLabel;
      _baseUrl = $v.baseUrl;
      _addonNameOverride = $v.addonNameOverride;
      _checkConfigurationLink = $v.checkConfigurationLink;
      _addonType = $v.addonType;
      _userEmail = $v.userEmail;
      _dashboardId = $v.dashboardId?.toBuilder();
      _stateEntityId = $v.stateEntityId;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AddonAccessErrorNotificationInfo other) {
    _$v = other as _$AddonAccessErrorNotificationInfo;
  }

  @override
  void update(void Function(AddonAccessErrorNotificationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddonAccessErrorNotificationInfo build() => _build();

  _$AddonAccessErrorNotificationInfo _build() {
    _$AddonAccessErrorNotificationInfo _$result;
    try {
      _$result =
          _$v ??
          _$AddonAccessErrorNotificationInfo._(
            checkConfigurationActionLabel: checkConfigurationActionLabel,
            baseUrl: baseUrl,
            addonNameOverride: addonNameOverride,
            checkConfigurationLink: checkConfigurationLink,
            addonType: addonType,
            userEmail: userEmail,
            dashboardId: _dashboardId?.build(),
            stateEntityId: stateEntityId,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AddonAccessErrorNotificationInfo',
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
          r'AddonAccessErrorNotificationInfo',
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
