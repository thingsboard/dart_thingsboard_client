// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_two_fa_account_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailTwoFaAccountConfig extends EmailTwoFaAccountConfig {
  @override
  final String email;
  @override
  final bool? useByDefault;
  @override
  final String providerType;

  factory _$EmailTwoFaAccountConfig([
    void Function(EmailTwoFaAccountConfigBuilder)? updates,
  ]) => (EmailTwoFaAccountConfigBuilder()..update(updates))._build();

  _$EmailTwoFaAccountConfig._({
    required this.email,
    this.useByDefault,
    required this.providerType,
  }) : super._();
  @override
  EmailTwoFaAccountConfig rebuild(
    void Function(EmailTwoFaAccountConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EmailTwoFaAccountConfigBuilder toBuilder() =>
      EmailTwoFaAccountConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailTwoFaAccountConfig &&
        email == other.email &&
        useByDefault == other.useByDefault &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, useByDefault.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmailTwoFaAccountConfig')
          ..add('email', email)
          ..add('useByDefault', useByDefault)
          ..add('providerType', providerType))
        .toString();
  }
}

class EmailTwoFaAccountConfigBuilder
    implements
        Builder<EmailTwoFaAccountConfig, EmailTwoFaAccountConfigBuilder>,
        TwoFaAccountConfigBuilder {
  _$EmailTwoFaAccountConfig? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(covariant String? email) => _$this._email = email;

  bool? _useByDefault;
  bool? get useByDefault => _$this._useByDefault;
  set useByDefault(covariant bool? useByDefault) =>
      _$this._useByDefault = useByDefault;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  EmailTwoFaAccountConfigBuilder() {
    EmailTwoFaAccountConfig._defaults(this);
  }

  EmailTwoFaAccountConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _useByDefault = $v.useByDefault;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EmailTwoFaAccountConfig other) {
    _$v = other as _$EmailTwoFaAccountConfig;
  }

  @override
  void update(void Function(EmailTwoFaAccountConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmailTwoFaAccountConfig build() => _build();

  _$EmailTwoFaAccountConfig _build() {
    final _$result =
        _$v ??
        _$EmailTwoFaAccountConfig._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'EmailTwoFaAccountConfig',
            'email',
          ),
          useByDefault: useByDefault,
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'EmailTwoFaAccountConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
