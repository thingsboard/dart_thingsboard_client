// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mobile_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserMobileInfo extends UserMobileInfo {
  @override
  final User? user;
  @override
  final StoreInfo? storeInfo;
  @override
  final MobileAppVersionInfo? versionInfo;
  @override
  final HomeDashboardInfo? homeDashboardInfo;
  @override
  final JsonObject? pages;

  factory _$UserMobileInfo([void Function(UserMobileInfoBuilder)? updates]) =>
      (UserMobileInfoBuilder()..update(updates))._build();

  _$UserMobileInfo._({
    this.user,
    this.storeInfo,
    this.versionInfo,
    this.homeDashboardInfo,
    this.pages,
  }) : super._();
  @override
  UserMobileInfo rebuild(void Function(UserMobileInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserMobileInfoBuilder toBuilder() => UserMobileInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserMobileInfo &&
        user == other.user &&
        storeInfo == other.storeInfo &&
        versionInfo == other.versionInfo &&
        homeDashboardInfo == other.homeDashboardInfo &&
        pages == other.pages;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, storeInfo.hashCode);
    _$hash = $jc(_$hash, versionInfo.hashCode);
    _$hash = $jc(_$hash, homeDashboardInfo.hashCode);
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserMobileInfo')
          ..add('user', user)
          ..add('storeInfo', storeInfo)
          ..add('versionInfo', versionInfo)
          ..add('homeDashboardInfo', homeDashboardInfo)
          ..add('pages', pages))
        .toString();
  }
}

class UserMobileInfoBuilder
    implements Builder<UserMobileInfo, UserMobileInfoBuilder> {
  _$UserMobileInfo? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  StoreInfoBuilder? _storeInfo;
  StoreInfoBuilder get storeInfo => _$this._storeInfo ??= StoreInfoBuilder();
  set storeInfo(StoreInfoBuilder? storeInfo) => _$this._storeInfo = storeInfo;

  MobileAppVersionInfoBuilder? _versionInfo;
  MobileAppVersionInfoBuilder get versionInfo =>
      _$this._versionInfo ??= MobileAppVersionInfoBuilder();
  set versionInfo(MobileAppVersionInfoBuilder? versionInfo) =>
      _$this._versionInfo = versionInfo;

  HomeDashboardInfoBuilder? _homeDashboardInfo;
  HomeDashboardInfoBuilder get homeDashboardInfo =>
      _$this._homeDashboardInfo ??= HomeDashboardInfoBuilder();
  set homeDashboardInfo(HomeDashboardInfoBuilder? homeDashboardInfo) =>
      _$this._homeDashboardInfo = homeDashboardInfo;

  JsonObject? _pages;
  JsonObject? get pages => _$this._pages;
  set pages(JsonObject? pages) => _$this._pages = pages;

  UserMobileInfoBuilder() {
    UserMobileInfo._defaults(this);
  }

  UserMobileInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _storeInfo = $v.storeInfo?.toBuilder();
      _versionInfo = $v.versionInfo?.toBuilder();
      _homeDashboardInfo = $v.homeDashboardInfo?.toBuilder();
      _pages = $v.pages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserMobileInfo other) {
    _$v = other as _$UserMobileInfo;
  }

  @override
  void update(void Function(UserMobileInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserMobileInfo build() => _build();

  _$UserMobileInfo _build() {
    _$UserMobileInfo _$result;
    try {
      _$result =
          _$v ??
          _$UserMobileInfo._(
            user: _user?.build(),
            storeInfo: _storeInfo?.build(),
            versionInfo: _versionInfo?.build(),
            homeDashboardInfo: _homeDashboardInfo?.build(),
            pages: pages,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'storeInfo';
        _storeInfo?.build();
        _$failedField = 'versionInfo';
        _versionInfo?.build();
        _$failedField = 'homeDashboardInfo';
        _homeDashboardInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserMobileInfo',
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
