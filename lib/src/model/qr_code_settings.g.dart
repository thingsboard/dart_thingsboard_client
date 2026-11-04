// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QrCodeSettings extends QrCodeSettings {
  @override
  final QrCodeSettingsId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final bool? useSystemSettings;
  @override
  final bool? useDefaultApp;
  @override
  final MobileAppBundleId? mobileAppBundleId;
  @override
  final QRCodeConfig qrCodeConfig;
  @override
  final bool? androidEnabled;
  @override
  final bool? iosEnabled;
  @override
  final String? googlePlayLink;
  @override
  final String? appStoreLink;

  factory _$QrCodeSettings([void Function(QrCodeSettingsBuilder)? updates]) =>
      (QrCodeSettingsBuilder()..update(updates))._build();

  _$QrCodeSettings._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.useSystemSettings,
    this.useDefaultApp,
    this.mobileAppBundleId,
    required this.qrCodeConfig,
    this.androidEnabled,
    this.iosEnabled,
    this.googlePlayLink,
    this.appStoreLink,
  }) : super._();
  @override
  QrCodeSettings rebuild(void Function(QrCodeSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QrCodeSettingsBuilder toBuilder() => QrCodeSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QrCodeSettings &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        useSystemSettings == other.useSystemSettings &&
        useDefaultApp == other.useDefaultApp &&
        mobileAppBundleId == other.mobileAppBundleId &&
        qrCodeConfig == other.qrCodeConfig &&
        androidEnabled == other.androidEnabled &&
        iosEnabled == other.iosEnabled &&
        googlePlayLink == other.googlePlayLink &&
        appStoreLink == other.appStoreLink;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, useSystemSettings.hashCode);
    _$hash = $jc(_$hash, useDefaultApp.hashCode);
    _$hash = $jc(_$hash, mobileAppBundleId.hashCode);
    _$hash = $jc(_$hash, qrCodeConfig.hashCode);
    _$hash = $jc(_$hash, androidEnabled.hashCode);
    _$hash = $jc(_$hash, iosEnabled.hashCode);
    _$hash = $jc(_$hash, googlePlayLink.hashCode);
    _$hash = $jc(_$hash, appStoreLink.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QrCodeSettings')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('useSystemSettings', useSystemSettings)
          ..add('useDefaultApp', useDefaultApp)
          ..add('mobileAppBundleId', mobileAppBundleId)
          ..add('qrCodeConfig', qrCodeConfig)
          ..add('androidEnabled', androidEnabled)
          ..add('iosEnabled', iosEnabled)
          ..add('googlePlayLink', googlePlayLink)
          ..add('appStoreLink', appStoreLink))
        .toString();
  }
}

class QrCodeSettingsBuilder
    implements Builder<QrCodeSettings, QrCodeSettingsBuilder> {
  _$QrCodeSettings? _$v;

  QrCodeSettingsIdBuilder? _id;
  QrCodeSettingsIdBuilder get id => _$this._id ??= QrCodeSettingsIdBuilder();
  set id(QrCodeSettingsIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  bool? _useSystemSettings;
  bool? get useSystemSettings => _$this._useSystemSettings;
  set useSystemSettings(bool? useSystemSettings) =>
      _$this._useSystemSettings = useSystemSettings;

  bool? _useDefaultApp;
  bool? get useDefaultApp => _$this._useDefaultApp;
  set useDefaultApp(bool? useDefaultApp) =>
      _$this._useDefaultApp = useDefaultApp;

  MobileAppBundleIdBuilder? _mobileAppBundleId;
  MobileAppBundleIdBuilder get mobileAppBundleId =>
      _$this._mobileAppBundleId ??= MobileAppBundleIdBuilder();
  set mobileAppBundleId(MobileAppBundleIdBuilder? mobileAppBundleId) =>
      _$this._mobileAppBundleId = mobileAppBundleId;

  QRCodeConfigBuilder? _qrCodeConfig;
  QRCodeConfigBuilder get qrCodeConfig =>
      _$this._qrCodeConfig ??= QRCodeConfigBuilder();
  set qrCodeConfig(QRCodeConfigBuilder? qrCodeConfig) =>
      _$this._qrCodeConfig = qrCodeConfig;

  bool? _androidEnabled;
  bool? get androidEnabled => _$this._androidEnabled;
  set androidEnabled(bool? androidEnabled) =>
      _$this._androidEnabled = androidEnabled;

  bool? _iosEnabled;
  bool? get iosEnabled => _$this._iosEnabled;
  set iosEnabled(bool? iosEnabled) => _$this._iosEnabled = iosEnabled;

  String? _googlePlayLink;
  String? get googlePlayLink => _$this._googlePlayLink;
  set googlePlayLink(String? googlePlayLink) =>
      _$this._googlePlayLink = googlePlayLink;

  String? _appStoreLink;
  String? get appStoreLink => _$this._appStoreLink;
  set appStoreLink(String? appStoreLink) => _$this._appStoreLink = appStoreLink;

  QrCodeSettingsBuilder() {
    QrCodeSettings._defaults(this);
  }

  QrCodeSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _useSystemSettings = $v.useSystemSettings;
      _useDefaultApp = $v.useDefaultApp;
      _mobileAppBundleId = $v.mobileAppBundleId?.toBuilder();
      _qrCodeConfig = $v.qrCodeConfig.toBuilder();
      _androidEnabled = $v.androidEnabled;
      _iosEnabled = $v.iosEnabled;
      _googlePlayLink = $v.googlePlayLink;
      _appStoreLink = $v.appStoreLink;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QrCodeSettings other) {
    _$v = other as _$QrCodeSettings;
  }

  @override
  void update(void Function(QrCodeSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QrCodeSettings build() => _build();

  _$QrCodeSettings _build() {
    _$QrCodeSettings _$result;
    try {
      _$result =
          _$v ??
          _$QrCodeSettings._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            useSystemSettings: useSystemSettings,
            useDefaultApp: useDefaultApp,
            mobileAppBundleId: _mobileAppBundleId?.build(),
            qrCodeConfig: qrCodeConfig.build(),
            androidEnabled: androidEnabled,
            iosEnabled: iosEnabled,
            googlePlayLink: googlePlayLink,
            appStoreLink: appStoreLink,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'mobileAppBundleId';
        _mobileAppBundleId?.build();
        _$failedField = 'qrCodeConfig';
        qrCodeConfig.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'QrCodeSettings',
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
