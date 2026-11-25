// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'totp_two_fa_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TotpTwoFaProviderConfig extends TotpTwoFaProviderConfig {
  @override
  final String issuerName;
  @override
  final String providerType;

  factory _$TotpTwoFaProviderConfig([
    void Function(TotpTwoFaProviderConfigBuilder)? updates,
  ]) => (TotpTwoFaProviderConfigBuilder()..update(updates))._build();

  _$TotpTwoFaProviderConfig._({
    required this.issuerName,
    required this.providerType,
  }) : super._();
  @override
  TotpTwoFaProviderConfig rebuild(
    void Function(TotpTwoFaProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TotpTwoFaProviderConfigBuilder toBuilder() =>
      TotpTwoFaProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TotpTwoFaProviderConfig &&
        issuerName == other.issuerName &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, issuerName.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TotpTwoFaProviderConfig')
          ..add('issuerName', issuerName)
          ..add('providerType', providerType))
        .toString();
  }
}

class TotpTwoFaProviderConfigBuilder
    implements
        Builder<TotpTwoFaProviderConfig, TotpTwoFaProviderConfigBuilder>,
        TwoFaProviderConfigBuilder {
  _$TotpTwoFaProviderConfig? _$v;

  String? _issuerName;
  String? get issuerName => _$this._issuerName;
  set issuerName(covariant String? issuerName) =>
      _$this._issuerName = issuerName;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  TotpTwoFaProviderConfigBuilder() {
    TotpTwoFaProviderConfig._defaults(this);
  }

  TotpTwoFaProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _issuerName = $v.issuerName;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TotpTwoFaProviderConfig other) {
    _$v = other as _$TotpTwoFaProviderConfig;
  }

  @override
  void update(void Function(TotpTwoFaProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TotpTwoFaProviderConfig build() => _build();

  _$TotpTwoFaProviderConfig _build() {
    final _$result =
        _$v ??
        _$TotpTwoFaProviderConfig._(
          issuerName: BuiltValueNullFieldError.checkNotNull(
            issuerName,
            r'TotpTwoFaProviderConfig',
            'issuerName',
          ),
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'TotpTwoFaProviderConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
