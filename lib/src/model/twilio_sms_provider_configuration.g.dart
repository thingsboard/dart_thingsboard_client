// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'twilio_sms_provider_configuration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TwilioSmsProviderConfiguration extends TwilioSmsProviderConfiguration {
  @override
  final String? numberFrom;
  @override
  final String? accountSid;
  @override
  final String? accountToken;
  @override
  final String type;

  factory _$TwilioSmsProviderConfiguration([
    void Function(TwilioSmsProviderConfigurationBuilder)? updates,
  ]) => (TwilioSmsProviderConfigurationBuilder()..update(updates))._build();

  _$TwilioSmsProviderConfiguration._({
    this.numberFrom,
    this.accountSid,
    this.accountToken,
    required this.type,
  }) : super._();
  @override
  TwilioSmsProviderConfiguration rebuild(
    void Function(TwilioSmsProviderConfigurationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TwilioSmsProviderConfigurationBuilder toBuilder() =>
      TwilioSmsProviderConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TwilioSmsProviderConfiguration &&
        numberFrom == other.numberFrom &&
        accountSid == other.accountSid &&
        accountToken == other.accountToken &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, numberFrom.hashCode);
    _$hash = $jc(_$hash, accountSid.hashCode);
    _$hash = $jc(_$hash, accountToken.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TwilioSmsProviderConfiguration')
          ..add('numberFrom', numberFrom)
          ..add('accountSid', accountSid)
          ..add('accountToken', accountToken)
          ..add('type', type))
        .toString();
  }
}

class TwilioSmsProviderConfigurationBuilder
    implements
        Builder<
          TwilioSmsProviderConfiguration,
          TwilioSmsProviderConfigurationBuilder
        >,
        SmsProviderConfigurationBuilder {
  _$TwilioSmsProviderConfiguration? _$v;

  String? _numberFrom;
  String? get numberFrom => _$this._numberFrom;
  set numberFrom(covariant String? numberFrom) =>
      _$this._numberFrom = numberFrom;

  String? _accountSid;
  String? get accountSid => _$this._accountSid;
  set accountSid(covariant String? accountSid) =>
      _$this._accountSid = accountSid;

  String? _accountToken;
  String? get accountToken => _$this._accountToken;
  set accountToken(covariant String? accountToken) =>
      _$this._accountToken = accountToken;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TwilioSmsProviderConfigurationBuilder() {
    TwilioSmsProviderConfiguration._defaults(this);
  }

  TwilioSmsProviderConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _numberFrom = $v.numberFrom;
      _accountSid = $v.accountSid;
      _accountToken = $v.accountToken;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TwilioSmsProviderConfiguration other) {
    _$v = other as _$TwilioSmsProviderConfiguration;
  }

  @override
  void update(void Function(TwilioSmsProviderConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TwilioSmsProviderConfiguration build() => _build();

  _$TwilioSmsProviderConfiguration _build() {
    final _$result =
        _$v ??
        _$TwilioSmsProviderConfiguration._(
          numberFrom: numberFrom,
          accountSid: accountSid,
          accountToken: accountToken,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'TwilioSmsProviderConfiguration',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
