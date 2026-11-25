// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_two_fa_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SmsTwoFaProviderConfig extends SmsTwoFaProviderConfig {
  @override
  final int? verificationCodeLifetime;
  @override
  final String smsVerificationMessageTemplate;
  @override
  final String providerType;

  factory _$SmsTwoFaProviderConfig([
    void Function(SmsTwoFaProviderConfigBuilder)? updates,
  ]) => (SmsTwoFaProviderConfigBuilder()..update(updates))._build();

  _$SmsTwoFaProviderConfig._({
    this.verificationCodeLifetime,
    required this.smsVerificationMessageTemplate,
    required this.providerType,
  }) : super._();
  @override
  SmsTwoFaProviderConfig rebuild(
    void Function(SmsTwoFaProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SmsTwoFaProviderConfigBuilder toBuilder() =>
      SmsTwoFaProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmsTwoFaProviderConfig &&
        verificationCodeLifetime == other.verificationCodeLifetime &&
        smsVerificationMessageTemplate ==
            other.smsVerificationMessageTemplate &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, verificationCodeLifetime.hashCode);
    _$hash = $jc(_$hash, smsVerificationMessageTemplate.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmsTwoFaProviderConfig')
          ..add('verificationCodeLifetime', verificationCodeLifetime)
          ..add(
            'smsVerificationMessageTemplate',
            smsVerificationMessageTemplate,
          )
          ..add('providerType', providerType))
        .toString();
  }
}

class SmsTwoFaProviderConfigBuilder
    implements
        Builder<SmsTwoFaProviderConfig, SmsTwoFaProviderConfigBuilder>,
        TwoFaProviderConfigBuilder {
  _$SmsTwoFaProviderConfig? _$v;

  int? _verificationCodeLifetime;
  int? get verificationCodeLifetime => _$this._verificationCodeLifetime;
  set verificationCodeLifetime(covariant int? verificationCodeLifetime) =>
      _$this._verificationCodeLifetime = verificationCodeLifetime;

  String? _smsVerificationMessageTemplate;
  String? get smsVerificationMessageTemplate =>
      _$this._smsVerificationMessageTemplate;
  set smsVerificationMessageTemplate(
    covariant String? smsVerificationMessageTemplate,
  ) => _$this._smsVerificationMessageTemplate = smsVerificationMessageTemplate;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  SmsTwoFaProviderConfigBuilder() {
    SmsTwoFaProviderConfig._defaults(this);
  }

  SmsTwoFaProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _verificationCodeLifetime = $v.verificationCodeLifetime;
      _smsVerificationMessageTemplate = $v.smsVerificationMessageTemplate;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SmsTwoFaProviderConfig other) {
    _$v = other as _$SmsTwoFaProviderConfig;
  }

  @override
  void update(void Function(SmsTwoFaProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmsTwoFaProviderConfig build() => _build();

  _$SmsTwoFaProviderConfig _build() {
    final _$result =
        _$v ??
        _$SmsTwoFaProviderConfig._(
          verificationCodeLifetime: verificationCodeLifetime,
          smsVerificationMessageTemplate: BuiltValueNullFieldError.checkNotNull(
            smsVerificationMessageTemplate,
            r'SmsTwoFaProviderConfig',
            'smsVerificationMessageTemplate',
          ),
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'SmsTwoFaProviderConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
