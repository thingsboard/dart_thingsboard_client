// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_mobile_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginMobileInfo extends LoginMobileInfo {
  @override
  final BuiltList<OAuth2ClientLoginInfo>? oAuth2ClientLoginInfos;
  @override
  final SignUpSelfRegistrationParams? selfRegistrationParams;
  @override
  final StoreInfo? storeInfo;
  @override
  final MobileAppVersionInfo? versionInfo;

  factory _$LoginMobileInfo([void Function(LoginMobileInfoBuilder)? updates]) =>
      (LoginMobileInfoBuilder()..update(updates))._build();

  _$LoginMobileInfo._({
    this.oAuth2ClientLoginInfos,
    this.selfRegistrationParams,
    this.storeInfo,
    this.versionInfo,
  }) : super._();
  @override
  LoginMobileInfo rebuild(void Function(LoginMobileInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginMobileInfoBuilder toBuilder() => LoginMobileInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginMobileInfo &&
        oAuth2ClientLoginInfos == other.oAuth2ClientLoginInfos &&
        selfRegistrationParams == other.selfRegistrationParams &&
        storeInfo == other.storeInfo &&
        versionInfo == other.versionInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oAuth2ClientLoginInfos.hashCode);
    _$hash = $jc(_$hash, selfRegistrationParams.hashCode);
    _$hash = $jc(_$hash, storeInfo.hashCode);
    _$hash = $jc(_$hash, versionInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginMobileInfo')
          ..add('oAuth2ClientLoginInfos', oAuth2ClientLoginInfos)
          ..add('selfRegistrationParams', selfRegistrationParams)
          ..add('storeInfo', storeInfo)
          ..add('versionInfo', versionInfo))
        .toString();
  }
}

class LoginMobileInfoBuilder
    implements Builder<LoginMobileInfo, LoginMobileInfoBuilder> {
  _$LoginMobileInfo? _$v;

  ListBuilder<OAuth2ClientLoginInfo>? _oAuth2ClientLoginInfos;
  ListBuilder<OAuth2ClientLoginInfo> get oAuth2ClientLoginInfos =>
      _$this._oAuth2ClientLoginInfos ??= ListBuilder<OAuth2ClientLoginInfo>();
  set oAuth2ClientLoginInfos(
    ListBuilder<OAuth2ClientLoginInfo>? oAuth2ClientLoginInfos,
  ) => _$this._oAuth2ClientLoginInfos = oAuth2ClientLoginInfos;

  SignUpSelfRegistrationParamsBuilder? _selfRegistrationParams;
  SignUpSelfRegistrationParamsBuilder get selfRegistrationParams =>
      _$this._selfRegistrationParams ??= SignUpSelfRegistrationParamsBuilder();
  set selfRegistrationParams(
    SignUpSelfRegistrationParamsBuilder? selfRegistrationParams,
  ) => _$this._selfRegistrationParams = selfRegistrationParams;

  StoreInfoBuilder? _storeInfo;
  StoreInfoBuilder get storeInfo => _$this._storeInfo ??= StoreInfoBuilder();
  set storeInfo(StoreInfoBuilder? storeInfo) => _$this._storeInfo = storeInfo;

  MobileAppVersionInfoBuilder? _versionInfo;
  MobileAppVersionInfoBuilder get versionInfo =>
      _$this._versionInfo ??= MobileAppVersionInfoBuilder();
  set versionInfo(MobileAppVersionInfoBuilder? versionInfo) =>
      _$this._versionInfo = versionInfo;

  LoginMobileInfoBuilder() {
    LoginMobileInfo._defaults(this);
  }

  LoginMobileInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oAuth2ClientLoginInfos = $v.oAuth2ClientLoginInfos?.toBuilder();
      _selfRegistrationParams = $v.selfRegistrationParams?.toBuilder();
      _storeInfo = $v.storeInfo?.toBuilder();
      _versionInfo = $v.versionInfo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginMobileInfo other) {
    _$v = other as _$LoginMobileInfo;
  }

  @override
  void update(void Function(LoginMobileInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginMobileInfo build() => _build();

  _$LoginMobileInfo _build() {
    _$LoginMobileInfo _$result;
    try {
      _$result =
          _$v ??
          _$LoginMobileInfo._(
            oAuth2ClientLoginInfos: _oAuth2ClientLoginInfos?.build(),
            selfRegistrationParams: _selfRegistrationParams?.build(),
            storeInfo: _storeInfo?.build(),
            versionInfo: _versionInfo?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'oAuth2ClientLoginInfos';
        _oAuth2ClientLoginInfos?.build();
        _$failedField = 'selfRegistrationParams';
        _selfRegistrationParams?.build();
        _$failedField = 'storeInfo';
        _storeInfo?.build();
        _$failedField = 'versionInfo';
        _versionInfo?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'LoginMobileInfo',
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
