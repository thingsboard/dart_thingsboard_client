// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'totp_two_fa_account_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TotpTwoFaAccountConfig extends TotpTwoFaAccountConfig {
  @override
  final String authUrl;
  @override
  final bool? useByDefault;
  @override
  final String providerType;

  factory _$TotpTwoFaAccountConfig([
    void Function(TotpTwoFaAccountConfigBuilder)? updates,
  ]) => (TotpTwoFaAccountConfigBuilder()..update(updates))._build();

  _$TotpTwoFaAccountConfig._({
    required this.authUrl,
    this.useByDefault,
    required this.providerType,
  }) : super._();
  @override
  TotpTwoFaAccountConfig rebuild(
    void Function(TotpTwoFaAccountConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TotpTwoFaAccountConfigBuilder toBuilder() =>
      TotpTwoFaAccountConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TotpTwoFaAccountConfig &&
        authUrl == other.authUrl &&
        useByDefault == other.useByDefault &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authUrl.hashCode);
    _$hash = $jc(_$hash, useByDefault.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TotpTwoFaAccountConfig')
          ..add('authUrl', authUrl)
          ..add('useByDefault', useByDefault)
          ..add('providerType', providerType))
        .toString();
  }
}

class TotpTwoFaAccountConfigBuilder
    implements
        Builder<TotpTwoFaAccountConfig, TotpTwoFaAccountConfigBuilder>,
        TwoFaAccountConfigBuilder {
  _$TotpTwoFaAccountConfig? _$v;

  String? _authUrl;
  String? get authUrl => _$this._authUrl;
  set authUrl(covariant String? authUrl) => _$this._authUrl = authUrl;

  bool? _useByDefault;
  bool? get useByDefault => _$this._useByDefault;
  set useByDefault(covariant bool? useByDefault) =>
      _$this._useByDefault = useByDefault;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  TotpTwoFaAccountConfigBuilder() {
    TotpTwoFaAccountConfig._defaults(this);
  }

  TotpTwoFaAccountConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authUrl = $v.authUrl;
      _useByDefault = $v.useByDefault;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TotpTwoFaAccountConfig other) {
    _$v = other as _$TotpTwoFaAccountConfig;
  }

  @override
  void update(void Function(TotpTwoFaAccountConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TotpTwoFaAccountConfig build() => _build();

  _$TotpTwoFaAccountConfig _build() {
    final _$result =
        _$v ??
        _$TotpTwoFaAccountConfig._(
          authUrl: BuiltValueNullFieldError.checkNotNull(
            authUrl,
            r'TotpTwoFaAccountConfig',
            'authUrl',
          ),
          useByDefault: useByDefault,
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'TotpTwoFaAccountConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
