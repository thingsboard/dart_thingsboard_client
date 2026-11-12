// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform_two_fa_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PlatformTwoFaSettings extends PlatformTwoFaSettings {
  @override
  final bool? useSystemTwoFactorAuthSettings;
  @override
  final BuiltList<TwoFaProviderConfig> providers;
  @override
  final int minVerificationCodeSendPeriod;
  @override
  final String? verificationCodeCheckRateLimit;
  @override
  final int? maxVerificationFailuresBeforeUserLockout;
  @override
  final int totalAllowedTimeForVerification;
  @override
  final bool? enforceTwoFa;
  @override
  final JsonObject? enforcedUsersFilter;

  factory _$PlatformTwoFaSettings([
    void Function(PlatformTwoFaSettingsBuilder)? updates,
  ]) => (PlatformTwoFaSettingsBuilder()..update(updates))._build();

  _$PlatformTwoFaSettings._({
    this.useSystemTwoFactorAuthSettings,
    required this.providers,
    required this.minVerificationCodeSendPeriod,
    this.verificationCodeCheckRateLimit,
    this.maxVerificationFailuresBeforeUserLockout,
    required this.totalAllowedTimeForVerification,
    this.enforceTwoFa,
    this.enforcedUsersFilter,
  }) : super._();
  @override
  PlatformTwoFaSettings rebuild(
    void Function(PlatformTwoFaSettingsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  PlatformTwoFaSettingsBuilder toBuilder() =>
      PlatformTwoFaSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlatformTwoFaSettings &&
        useSystemTwoFactorAuthSettings ==
            other.useSystemTwoFactorAuthSettings &&
        providers == other.providers &&
        minVerificationCodeSendPeriod == other.minVerificationCodeSendPeriod &&
        verificationCodeCheckRateLimit ==
            other.verificationCodeCheckRateLimit &&
        maxVerificationFailuresBeforeUserLockout ==
            other.maxVerificationFailuresBeforeUserLockout &&
        totalAllowedTimeForVerification ==
            other.totalAllowedTimeForVerification &&
        enforceTwoFa == other.enforceTwoFa &&
        enforcedUsersFilter == other.enforcedUsersFilter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useSystemTwoFactorAuthSettings.hashCode);
    _$hash = $jc(_$hash, providers.hashCode);
    _$hash = $jc(_$hash, minVerificationCodeSendPeriod.hashCode);
    _$hash = $jc(_$hash, verificationCodeCheckRateLimit.hashCode);
    _$hash = $jc(_$hash, maxVerificationFailuresBeforeUserLockout.hashCode);
    _$hash = $jc(_$hash, totalAllowedTimeForVerification.hashCode);
    _$hash = $jc(_$hash, enforceTwoFa.hashCode);
    _$hash = $jc(_$hash, enforcedUsersFilter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlatformTwoFaSettings')
          ..add(
            'useSystemTwoFactorAuthSettings',
            useSystemTwoFactorAuthSettings,
          )
          ..add('providers', providers)
          ..add('minVerificationCodeSendPeriod', minVerificationCodeSendPeriod)
          ..add(
            'verificationCodeCheckRateLimit',
            verificationCodeCheckRateLimit,
          )
          ..add(
            'maxVerificationFailuresBeforeUserLockout',
            maxVerificationFailuresBeforeUserLockout,
          )
          ..add(
            'totalAllowedTimeForVerification',
            totalAllowedTimeForVerification,
          )
          ..add('enforceTwoFa', enforceTwoFa)
          ..add('enforcedUsersFilter', enforcedUsersFilter))
        .toString();
  }
}

class PlatformTwoFaSettingsBuilder
    implements Builder<PlatformTwoFaSettings, PlatformTwoFaSettingsBuilder> {
  _$PlatformTwoFaSettings? _$v;

  bool? _useSystemTwoFactorAuthSettings;
  bool? get useSystemTwoFactorAuthSettings =>
      _$this._useSystemTwoFactorAuthSettings;
  set useSystemTwoFactorAuthSettings(bool? useSystemTwoFactorAuthSettings) =>
      _$this._useSystemTwoFactorAuthSettings = useSystemTwoFactorAuthSettings;

  ListBuilder<TwoFaProviderConfig>? _providers;
  ListBuilder<TwoFaProviderConfig> get providers =>
      _$this._providers ??= ListBuilder<TwoFaProviderConfig>();
  set providers(ListBuilder<TwoFaProviderConfig>? providers) =>
      _$this._providers = providers;

  int? _minVerificationCodeSendPeriod;
  int? get minVerificationCodeSendPeriod =>
      _$this._minVerificationCodeSendPeriod;
  set minVerificationCodeSendPeriod(int? minVerificationCodeSendPeriod) =>
      _$this._minVerificationCodeSendPeriod = minVerificationCodeSendPeriod;

  String? _verificationCodeCheckRateLimit;
  String? get verificationCodeCheckRateLimit =>
      _$this._verificationCodeCheckRateLimit;
  set verificationCodeCheckRateLimit(String? verificationCodeCheckRateLimit) =>
      _$this._verificationCodeCheckRateLimit = verificationCodeCheckRateLimit;

  int? _maxVerificationFailuresBeforeUserLockout;
  int? get maxVerificationFailuresBeforeUserLockout =>
      _$this._maxVerificationFailuresBeforeUserLockout;
  set maxVerificationFailuresBeforeUserLockout(
    int? maxVerificationFailuresBeforeUserLockout,
  ) => _$this._maxVerificationFailuresBeforeUserLockout =
      maxVerificationFailuresBeforeUserLockout;

  int? _totalAllowedTimeForVerification;
  int? get totalAllowedTimeForVerification =>
      _$this._totalAllowedTimeForVerification;
  set totalAllowedTimeForVerification(int? totalAllowedTimeForVerification) =>
      _$this._totalAllowedTimeForVerification = totalAllowedTimeForVerification;

  bool? _enforceTwoFa;
  bool? get enforceTwoFa => _$this._enforceTwoFa;
  set enforceTwoFa(bool? enforceTwoFa) => _$this._enforceTwoFa = enforceTwoFa;

  JsonObject? _enforcedUsersFilter;
  JsonObject? get enforcedUsersFilter => _$this._enforcedUsersFilter;
  set enforcedUsersFilter(JsonObject? enforcedUsersFilter) =>
      _$this._enforcedUsersFilter = enforcedUsersFilter;

  PlatformTwoFaSettingsBuilder() {
    PlatformTwoFaSettings._defaults(this);
  }

  PlatformTwoFaSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useSystemTwoFactorAuthSettings = $v.useSystemTwoFactorAuthSettings;
      _providers = $v.providers.toBuilder();
      _minVerificationCodeSendPeriod = $v.minVerificationCodeSendPeriod;
      _verificationCodeCheckRateLimit = $v.verificationCodeCheckRateLimit;
      _maxVerificationFailuresBeforeUserLockout =
          $v.maxVerificationFailuresBeforeUserLockout;
      _totalAllowedTimeForVerification = $v.totalAllowedTimeForVerification;
      _enforceTwoFa = $v.enforceTwoFa;
      _enforcedUsersFilter = $v.enforcedUsersFilter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlatformTwoFaSettings other) {
    _$v = other as _$PlatformTwoFaSettings;
  }

  @override
  void update(void Function(PlatformTwoFaSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlatformTwoFaSettings build() => _build();

  _$PlatformTwoFaSettings _build() {
    _$PlatformTwoFaSettings _$result;
    try {
      _$result =
          _$v ??
          _$PlatformTwoFaSettings._(
            useSystemTwoFactorAuthSettings: useSystemTwoFactorAuthSettings,
            providers: providers.build(),
            minVerificationCodeSendPeriod:
                BuiltValueNullFieldError.checkNotNull(
                  minVerificationCodeSendPeriod,
                  r'PlatformTwoFaSettings',
                  'minVerificationCodeSendPeriod',
                ),
            verificationCodeCheckRateLimit: verificationCodeCheckRateLimit,
            maxVerificationFailuresBeforeUserLockout:
                maxVerificationFailuresBeforeUserLockout,
            totalAllowedTimeForVerification:
                BuiltValueNullFieldError.checkNotNull(
                  totalAllowedTimeForVerification,
                  r'PlatformTwoFaSettings',
                  'totalAllowedTimeForVerification',
                ),
            enforceTwoFa: enforceTwoFa,
            enforcedUsersFilter: enforcedUsersFilter,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providers';
        providers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'PlatformTwoFaSettings',
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
