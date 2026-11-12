// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_two_fa_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailTwoFaProviderConfig extends EmailTwoFaProviderConfig {
  @override
  final int? verificationCodeLifetime;
  @override
  final String providerType;

  factory _$EmailTwoFaProviderConfig([
    void Function(EmailTwoFaProviderConfigBuilder)? updates,
  ]) => (EmailTwoFaProviderConfigBuilder()..update(updates))._build();

  _$EmailTwoFaProviderConfig._({
    this.verificationCodeLifetime,
    required this.providerType,
  }) : super._();
  @override
  EmailTwoFaProviderConfig rebuild(
    void Function(EmailTwoFaProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EmailTwoFaProviderConfigBuilder toBuilder() =>
      EmailTwoFaProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailTwoFaProviderConfig &&
        verificationCodeLifetime == other.verificationCodeLifetime &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verificationCodeLifetime.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailTwoFaProviderConfig')
          ..add('verificationCodeLifetime', verificationCodeLifetime)
          ..add('providerType', providerType))
        .toString();
  }
}

class EmailTwoFaProviderConfigBuilder
    implements
        Builder<EmailTwoFaProviderConfig, EmailTwoFaProviderConfigBuilder>,
        TwoFaProviderConfigBuilder {
  _$EmailTwoFaProviderConfig? _$v;

  int? _verificationCodeLifetime;
  int? get verificationCodeLifetime => _$this._verificationCodeLifetime;
  set verificationCodeLifetime(covariant int? verificationCodeLifetime) =>
      _$this._verificationCodeLifetime = verificationCodeLifetime;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  EmailTwoFaProviderConfigBuilder() {
    EmailTwoFaProviderConfig._defaults(this);
  }

  EmailTwoFaProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verificationCodeLifetime = $v.verificationCodeLifetime;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EmailTwoFaProviderConfig other) {
    _$v = other as _$EmailTwoFaProviderConfig;
  }

  @override
  void update(void Function(EmailTwoFaProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailTwoFaProviderConfig build() => _build();

  _$EmailTwoFaProviderConfig _build() {
    final _$result =
        _$v ??
        _$EmailTwoFaProviderConfig._(
          verificationCodeLifetime: verificationCodeLifetime,
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'EmailTwoFaProviderConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
