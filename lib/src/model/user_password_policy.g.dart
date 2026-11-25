// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_password_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPasswordPolicy extends UserPasswordPolicy {
  @override
  final int? minimumLength;
  @override
  final int? maximumLength;
  @override
  final int? minimumUppercaseLetters;
  @override
  final int? minimumLowercaseLetters;
  @override
  final int? minimumDigits;
  @override
  final int? minimumSpecialCharacters;
  @override
  final bool? allowWhitespaces;
  @override
  final bool? forceUserToResetPasswordIfNotValid;
  @override
  final int? passwordExpirationPeriodDays;
  @override
  final int? passwordReuseFrequencyDays;

  factory _$UserPasswordPolicy([
    void Function(UserPasswordPolicyBuilder)? updates,
  ]) => (UserPasswordPolicyBuilder()..update(updates))._build();

  _$UserPasswordPolicy._({
    this.minimumLength,
    this.maximumLength,
    this.minimumUppercaseLetters,
    this.minimumLowercaseLetters,
    this.minimumDigits,
    this.minimumSpecialCharacters,
    this.allowWhitespaces,
    this.forceUserToResetPasswordIfNotValid,
    this.passwordExpirationPeriodDays,
    this.passwordReuseFrequencyDays,
  }) : super._();
  @override
  UserPasswordPolicy rebuild(
    void Function(UserPasswordPolicyBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserPasswordPolicyBuilder toBuilder() =>
      UserPasswordPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPasswordPolicy &&
        minimumLength == other.minimumLength &&
        maximumLength == other.maximumLength &&
        minimumUppercaseLetters == other.minimumUppercaseLetters &&
        minimumLowercaseLetters == other.minimumLowercaseLetters &&
        minimumDigits == other.minimumDigits &&
        minimumSpecialCharacters == other.minimumSpecialCharacters &&
        allowWhitespaces == other.allowWhitespaces &&
        forceUserToResetPasswordIfNotValid ==
            other.forceUserToResetPasswordIfNotValid &&
        passwordExpirationPeriodDays == other.passwordExpirationPeriodDays &&
        passwordReuseFrequencyDays == other.passwordReuseFrequencyDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minimumLength.hashCode);
    _$hash = $jc(_$hash, maximumLength.hashCode);
    _$hash = $jc(_$hash, minimumUppercaseLetters.hashCode);
    _$hash = $jc(_$hash, minimumLowercaseLetters.hashCode);
    _$hash = $jc(_$hash, minimumDigits.hashCode);
    _$hash = $jc(_$hash, minimumSpecialCharacters.hashCode);
    _$hash = $jc(_$hash, allowWhitespaces.hashCode);
    _$hash = $jc(_$hash, forceUserToResetPasswordIfNotValid.hashCode);
    _$hash = $jc(_$hash, passwordExpirationPeriodDays.hashCode);
    _$hash = $jc(_$hash, passwordReuseFrequencyDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserPasswordPolicy')
          ..add('minimumLength', minimumLength)
          ..add('maximumLength', maximumLength)
          ..add('minimumUppercaseLetters', minimumUppercaseLetters)
          ..add('minimumLowercaseLetters', minimumLowercaseLetters)
          ..add('minimumDigits', minimumDigits)
          ..add('minimumSpecialCharacters', minimumSpecialCharacters)
          ..add('allowWhitespaces', allowWhitespaces)
          ..add(
            'forceUserToResetPasswordIfNotValid',
            forceUserToResetPasswordIfNotValid,
          )
          ..add('passwordExpirationPeriodDays', passwordExpirationPeriodDays)
          ..add('passwordReuseFrequencyDays', passwordReuseFrequencyDays))
        .toString();
  }
}

class UserPasswordPolicyBuilder
    implements Builder<UserPasswordPolicy, UserPasswordPolicyBuilder> {
  _$UserPasswordPolicy? _$v;

  int? _minimumLength;
  int? get minimumLength => _$this._minimumLength;
  set minimumLength(int? minimumLength) =>
      _$this._minimumLength = minimumLength;

  int? _maximumLength;
  int? get maximumLength => _$this._maximumLength;
  set maximumLength(int? maximumLength) =>
      _$this._maximumLength = maximumLength;

  int? _minimumUppercaseLetters;
  int? get minimumUppercaseLetters => _$this._minimumUppercaseLetters;
  set minimumUppercaseLetters(int? minimumUppercaseLetters) =>
      _$this._minimumUppercaseLetters = minimumUppercaseLetters;

  int? _minimumLowercaseLetters;
  int? get minimumLowercaseLetters => _$this._minimumLowercaseLetters;
  set minimumLowercaseLetters(int? minimumLowercaseLetters) =>
      _$this._minimumLowercaseLetters = minimumLowercaseLetters;

  int? _minimumDigits;
  int? get minimumDigits => _$this._minimumDigits;
  set minimumDigits(int? minimumDigits) =>
      _$this._minimumDigits = minimumDigits;

  int? _minimumSpecialCharacters;
  int? get minimumSpecialCharacters => _$this._minimumSpecialCharacters;
  set minimumSpecialCharacters(int? minimumSpecialCharacters) =>
      _$this._minimumSpecialCharacters = minimumSpecialCharacters;

  bool? _allowWhitespaces;
  bool? get allowWhitespaces => _$this._allowWhitespaces;
  set allowWhitespaces(bool? allowWhitespaces) =>
      _$this._allowWhitespaces = allowWhitespaces;

  bool? _forceUserToResetPasswordIfNotValid;
  bool? get forceUserToResetPasswordIfNotValid =>
      _$this._forceUserToResetPasswordIfNotValid;
  set forceUserToResetPasswordIfNotValid(
    bool? forceUserToResetPasswordIfNotValid,
  ) => _$this._forceUserToResetPasswordIfNotValid =
      forceUserToResetPasswordIfNotValid;

  int? _passwordExpirationPeriodDays;
  int? get passwordExpirationPeriodDays => _$this._passwordExpirationPeriodDays;
  set passwordExpirationPeriodDays(int? passwordExpirationPeriodDays) =>
      _$this._passwordExpirationPeriodDays = passwordExpirationPeriodDays;

  int? _passwordReuseFrequencyDays;
  int? get passwordReuseFrequencyDays => _$this._passwordReuseFrequencyDays;
  set passwordReuseFrequencyDays(int? passwordReuseFrequencyDays) =>
      _$this._passwordReuseFrequencyDays = passwordReuseFrequencyDays;

  UserPasswordPolicyBuilder() {
    UserPasswordPolicy._defaults(this);
  }

  UserPasswordPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minimumLength = $v.minimumLength;
      _maximumLength = $v.maximumLength;
      _minimumUppercaseLetters = $v.minimumUppercaseLetters;
      _minimumLowercaseLetters = $v.minimumLowercaseLetters;
      _minimumDigits = $v.minimumDigits;
      _minimumSpecialCharacters = $v.minimumSpecialCharacters;
      _allowWhitespaces = $v.allowWhitespaces;
      _forceUserToResetPasswordIfNotValid =
          $v.forceUserToResetPasswordIfNotValid;
      _passwordExpirationPeriodDays = $v.passwordExpirationPeriodDays;
      _passwordReuseFrequencyDays = $v.passwordReuseFrequencyDays;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPasswordPolicy other) {
    _$v = other as _$UserPasswordPolicy;
  }

  @override
  void update(void Function(UserPasswordPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPasswordPolicy build() => _build();

  _$UserPasswordPolicy _build() {
    final _$result =
        _$v ??
        _$UserPasswordPolicy._(
          minimumLength: minimumLength,
          maximumLength: maximumLength,
          minimumUppercaseLetters: minimumUppercaseLetters,
          minimumLowercaseLetters: minimumLowercaseLetters,
          minimumDigits: minimumDigits,
          minimumSpecialCharacters: minimumSpecialCharacters,
          allowWhitespaces: allowWhitespaces,
          forceUserToResetPasswordIfNotValid:
              forceUserToResetPasswordIfNotValid,
          passwordExpirationPeriodDays: passwordExpirationPeriodDays,
          passwordReuseFrequencyDays: passwordReuseFrequencyDays,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
