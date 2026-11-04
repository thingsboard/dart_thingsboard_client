// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SecuritySettings extends SecuritySettings {
  @override
  final UserPasswordPolicy? passwordPolicy;
  @override
  final int? maxFailedLoginAttempts;
  @override
  final String? userLockoutNotificationEmail;
  @override
  final int? mobileSecretKeyLength;
  @override
  final int userActivationTokenTtl;
  @override
  final int passwordResetTokenTtl;

  factory _$SecuritySettings([
    void Function(SecuritySettingsBuilder)? updates,
  ]) => (SecuritySettingsBuilder()..update(updates))._build();

  _$SecuritySettings._({
    this.passwordPolicy,
    this.maxFailedLoginAttempts,
    this.userLockoutNotificationEmail,
    this.mobileSecretKeyLength,
    required this.userActivationTokenTtl,
    required this.passwordResetTokenTtl,
  }) : super._();
  @override
  SecuritySettings rebuild(void Function(SecuritySettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecuritySettingsBuilder toBuilder() =>
      SecuritySettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecuritySettings &&
        passwordPolicy == other.passwordPolicy &&
        maxFailedLoginAttempts == other.maxFailedLoginAttempts &&
        userLockoutNotificationEmail == other.userLockoutNotificationEmail &&
        mobileSecretKeyLength == other.mobileSecretKeyLength &&
        userActivationTokenTtl == other.userActivationTokenTtl &&
        passwordResetTokenTtl == other.passwordResetTokenTtl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, passwordPolicy.hashCode);
    _$hash = $jc(_$hash, maxFailedLoginAttempts.hashCode);
    _$hash = $jc(_$hash, userLockoutNotificationEmail.hashCode);
    _$hash = $jc(_$hash, mobileSecretKeyLength.hashCode);
    _$hash = $jc(_$hash, userActivationTokenTtl.hashCode);
    _$hash = $jc(_$hash, passwordResetTokenTtl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SecuritySettings')
          ..add('passwordPolicy', passwordPolicy)
          ..add('maxFailedLoginAttempts', maxFailedLoginAttempts)
          ..add('userLockoutNotificationEmail', userLockoutNotificationEmail)
          ..add('mobileSecretKeyLength', mobileSecretKeyLength)
          ..add('userActivationTokenTtl', userActivationTokenTtl)
          ..add('passwordResetTokenTtl', passwordResetTokenTtl))
        .toString();
  }
}

class SecuritySettingsBuilder
    implements Builder<SecuritySettings, SecuritySettingsBuilder> {
  _$SecuritySettings? _$v;

  UserPasswordPolicyBuilder? _passwordPolicy;
  UserPasswordPolicyBuilder get passwordPolicy =>
      _$this._passwordPolicy ??= UserPasswordPolicyBuilder();
  set passwordPolicy(UserPasswordPolicyBuilder? passwordPolicy) =>
      _$this._passwordPolicy = passwordPolicy;

  int? _maxFailedLoginAttempts;
  int? get maxFailedLoginAttempts => _$this._maxFailedLoginAttempts;
  set maxFailedLoginAttempts(int? maxFailedLoginAttempts) =>
      _$this._maxFailedLoginAttempts = maxFailedLoginAttempts;

  String? _userLockoutNotificationEmail;
  String? get userLockoutNotificationEmail =>
      _$this._userLockoutNotificationEmail;
  set userLockoutNotificationEmail(String? userLockoutNotificationEmail) =>
      _$this._userLockoutNotificationEmail = userLockoutNotificationEmail;

  int? _mobileSecretKeyLength;
  int? get mobileSecretKeyLength => _$this._mobileSecretKeyLength;
  set mobileSecretKeyLength(int? mobileSecretKeyLength) =>
      _$this._mobileSecretKeyLength = mobileSecretKeyLength;

  int? _userActivationTokenTtl;
  int? get userActivationTokenTtl => _$this._userActivationTokenTtl;
  set userActivationTokenTtl(int? userActivationTokenTtl) =>
      _$this._userActivationTokenTtl = userActivationTokenTtl;

  int? _passwordResetTokenTtl;
  int? get passwordResetTokenTtl => _$this._passwordResetTokenTtl;
  set passwordResetTokenTtl(int? passwordResetTokenTtl) =>
      _$this._passwordResetTokenTtl = passwordResetTokenTtl;

  SecuritySettingsBuilder() {
    SecuritySettings._defaults(this);
  }

  SecuritySettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _passwordPolicy = $v.passwordPolicy?.toBuilder();
      _maxFailedLoginAttempts = $v.maxFailedLoginAttempts;
      _userLockoutNotificationEmail = $v.userLockoutNotificationEmail;
      _mobileSecretKeyLength = $v.mobileSecretKeyLength;
      _userActivationTokenTtl = $v.userActivationTokenTtl;
      _passwordResetTokenTtl = $v.passwordResetTokenTtl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecuritySettings other) {
    _$v = other as _$SecuritySettings;
  }

  @override
  void update(void Function(SecuritySettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SecuritySettings build() => _build();

  _$SecuritySettings _build() {
    _$SecuritySettings _$result;
    try {
      _$result =
          _$v ??
          _$SecuritySettings._(
            passwordPolicy: _passwordPolicy?.build(),
            maxFailedLoginAttempts: maxFailedLoginAttempts,
            userLockoutNotificationEmail: userLockoutNotificationEmail,
            mobileSecretKeyLength: mobileSecretKeyLength,
            userActivationTokenTtl: BuiltValueNullFieldError.checkNotNull(
              userActivationTokenTtl,
              r'SecuritySettings',
              'userActivationTokenTtl',
            ),
            passwordResetTokenTtl: BuiltValueNullFieldError.checkNotNull(
              passwordResetTokenTtl,
              r'SecuritySettings',
              'passwordResetTokenTtl',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'passwordPolicy';
        _passwordPolicy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SecuritySettings',
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
