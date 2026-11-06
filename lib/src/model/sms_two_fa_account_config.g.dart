// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms_two_fa_account_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SmsTwoFaAccountConfig extends SmsTwoFaAccountConfig {
  @override
  final String phoneNumber;
  @override
  final bool? useByDefault;
  @override
  final String providerType;

  factory _$SmsTwoFaAccountConfig([
    void Function(SmsTwoFaAccountConfigBuilder)? updates,
  ]) => (SmsTwoFaAccountConfigBuilder()..update(updates))._build();

  _$SmsTwoFaAccountConfig._({
    required this.phoneNumber,
    this.useByDefault,
    required this.providerType,
  }) : super._();
  @override
  SmsTwoFaAccountConfig rebuild(
    void Function(SmsTwoFaAccountConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SmsTwoFaAccountConfigBuilder toBuilder() =>
      SmsTwoFaAccountConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SmsTwoFaAccountConfig &&
        phoneNumber == other.phoneNumber &&
        useByDefault == other.useByDefault &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, useByDefault.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SmsTwoFaAccountConfig')
          ..add('phoneNumber', phoneNumber)
          ..add('useByDefault', useByDefault)
          ..add('providerType', providerType))
        .toString();
  }
}

class SmsTwoFaAccountConfigBuilder
    implements
        Builder<SmsTwoFaAccountConfig, SmsTwoFaAccountConfigBuilder>,
        TwoFaAccountConfigBuilder {
  _$SmsTwoFaAccountConfig? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(covariant String? phoneNumber) =>
      _$this._phoneNumber = phoneNumber;

  bool? _useByDefault;
  bool? get useByDefault => _$this._useByDefault;
  set useByDefault(covariant bool? useByDefault) =>
      _$this._useByDefault = useByDefault;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  SmsTwoFaAccountConfigBuilder() {
    SmsTwoFaAccountConfig._defaults(this);
  }

  SmsTwoFaAccountConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _useByDefault = $v.useByDefault;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant SmsTwoFaAccountConfig other) {
    _$v = other as _$SmsTwoFaAccountConfig;
  }

  @override
  void update(void Function(SmsTwoFaAccountConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SmsTwoFaAccountConfig build() => _build();

  _$SmsTwoFaAccountConfig _build() {
    final _$result =
        _$v ??
        _$SmsTwoFaAccountConfig._(
          phoneNumber: BuiltValueNullFieldError.checkNotNull(
            phoneNumber,
            r'SmsTwoFaAccountConfig',
            'phoneNumber',
          ),
          useByDefault: useByDefault,
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'SmsTwoFaAccountConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
