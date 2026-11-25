// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_app.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MobileApp extends MobileApp {
  @override
  final MobileAppId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String pkgName;
  @override
  final String? title;
  @override
  final String appSecret;
  @override
  final PlatformType platformType;
  @override
  final MobileAppStatus status;
  @override
  final MobileAppVersionInfo? versionInfo;
  @override
  final StoreInfo? storeInfo;
  @override
  final String? name;

  factory _$MobileApp([void Function(MobileAppBuilder)? updates]) =>
      (MobileAppBuilder()..update(updates))._build();

  _$MobileApp._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.pkgName,
    this.title,
    required this.appSecret,
    required this.platformType,
    required this.status,
    this.versionInfo,
    this.storeInfo,
    this.name,
  }) : super._();
  @override
  MobileApp rebuild(void Function(MobileAppBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MobileAppBuilder toBuilder() => MobileAppBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MobileApp &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        pkgName == other.pkgName &&
        title == other.title &&
        appSecret == other.appSecret &&
        platformType == other.platformType &&
        status == other.status &&
        versionInfo == other.versionInfo &&
        storeInfo == other.storeInfo &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, pkgName.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, appSecret.hashCode);
    _$hash = $jc(_$hash, platformType.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, versionInfo.hashCode);
    _$hash = $jc(_$hash, storeInfo.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MobileApp')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('pkgName', pkgName)
          ..add('title', title)
          ..add('appSecret', appSecret)
          ..add('platformType', platformType)
          ..add('status', status)
          ..add('versionInfo', versionInfo)
          ..add('storeInfo', storeInfo)
          ..add('name', name))
        .toString();
  }
}

class MobileAppBuilder implements Builder<MobileApp, MobileAppBuilder> {
  _$MobileApp? _$v;

  MobileAppIdBuilder? _id;
  MobileAppIdBuilder get id => _$this._id ??= MobileAppIdBuilder();
  set id(MobileAppIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _pkgName;
  String? get pkgName => _$this._pkgName;
  set pkgName(String? pkgName) => _$this._pkgName = pkgName;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _appSecret;
  String? get appSecret => _$this._appSecret;
  set appSecret(String? appSecret) => _$this._appSecret = appSecret;

  PlatformType? _platformType;
  PlatformType? get platformType => _$this._platformType;
  set platformType(PlatformType? platformType) =>
      _$this._platformType = platformType;

  MobileAppStatus? _status;
  MobileAppStatus? get status => _$this._status;
  set status(MobileAppStatus? status) => _$this._status = status;

  MobileAppVersionInfoBuilder? _versionInfo;
  MobileAppVersionInfoBuilder get versionInfo =>
      _$this._versionInfo ??= MobileAppVersionInfoBuilder();
  set versionInfo(MobileAppVersionInfoBuilder? versionInfo) =>
      _$this._versionInfo = versionInfo;

  StoreInfoBuilder? _storeInfo;
  StoreInfoBuilder get storeInfo => _$this._storeInfo ??= StoreInfoBuilder();
  set storeInfo(StoreInfoBuilder? storeInfo) => _$this._storeInfo = storeInfo;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  MobileAppBuilder() {
    MobileApp._defaults(this);
  }

  MobileAppBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _pkgName = $v.pkgName;
      _title = $v.title;
      _appSecret = $v.appSecret;
      _platformType = $v.platformType;
      _status = $v.status;
      _versionInfo = $v.versionInfo?.toBuilder();
      _storeInfo = $v.storeInfo?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MobileApp other) {
    _$v = other as _$MobileApp;
  }

  @override
  void update(void Function(MobileAppBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MobileApp build() => _build();

  _$MobileApp _build() {
    _$MobileApp _$result;
    try {
      _$result =
          _$v ??
          _$MobileApp._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            pkgName: BuiltValueNullFieldError.checkNotNull(
              pkgName,
              r'MobileApp',
              'pkgName',
            ),
            title: title,
            appSecret: BuiltValueNullFieldError.checkNotNull(
              appSecret,
              r'MobileApp',
              'appSecret',
            ),
            platformType: BuiltValueNullFieldError.checkNotNull(
              platformType,
              r'MobileApp',
              'platformType',
            ),
            status: BuiltValueNullFieldError.checkNotNull(
              status,
              r'MobileApp',
              'status',
            ),
            versionInfo: _versionInfo?.build(),
            storeInfo: _storeInfo?.build(),
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'versionInfo';
        _versionInfo?.build();
        _$failedField = 'storeInfo';
        _storeInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MobileApp',
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
