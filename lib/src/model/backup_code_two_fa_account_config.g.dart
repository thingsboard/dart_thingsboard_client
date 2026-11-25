// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_code_two_fa_account_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupCodeTwoFaAccountConfig extends BackupCodeTwoFaAccountConfig {
  @override
  final BuiltSet<String>? codes;
  @override
  final int? codesLeft;
  @override
  final bool? useByDefault;
  @override
  final String providerType;

  factory _$BackupCodeTwoFaAccountConfig([
    void Function(BackupCodeTwoFaAccountConfigBuilder)? updates,
  ]) => (BackupCodeTwoFaAccountConfigBuilder()..update(updates))._build();

  _$BackupCodeTwoFaAccountConfig._({
    this.codes,
    this.codesLeft,
    this.useByDefault,
    required this.providerType,
  }) : super._();
  @override
  BackupCodeTwoFaAccountConfig rebuild(
    void Function(BackupCodeTwoFaAccountConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BackupCodeTwoFaAccountConfigBuilder toBuilder() =>
      BackupCodeTwoFaAccountConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupCodeTwoFaAccountConfig &&
        codes == other.codes &&
        codesLeft == other.codesLeft &&
        useByDefault == other.useByDefault &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codes.hashCode);
    _$hash = $jc(_$hash, codesLeft.hashCode);
    _$hash = $jc(_$hash, useByDefault.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupCodeTwoFaAccountConfig')
          ..add('codes', codes)
          ..add('codesLeft', codesLeft)
          ..add('useByDefault', useByDefault)
          ..add('providerType', providerType))
        .toString();
  }
}

class BackupCodeTwoFaAccountConfigBuilder
    implements
        Builder<
          BackupCodeTwoFaAccountConfig,
          BackupCodeTwoFaAccountConfigBuilder
        >,
        TwoFaAccountConfigBuilder {
  _$BackupCodeTwoFaAccountConfig? _$v;

  SetBuilder<String>? _codes;
  SetBuilder<String> get codes => _$this._codes ??= SetBuilder<String>();
  set codes(covariant SetBuilder<String>? codes) => _$this._codes = codes;

  int? _codesLeft;
  int? get codesLeft => _$this._codesLeft;
  set codesLeft(covariant int? codesLeft) => _$this._codesLeft = codesLeft;

  bool? _useByDefault;
  bool? get useByDefault => _$this._useByDefault;
  set useByDefault(covariant bool? useByDefault) =>
      _$this._useByDefault = useByDefault;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  BackupCodeTwoFaAccountConfigBuilder() {
    BackupCodeTwoFaAccountConfig._defaults(this);
  }

  BackupCodeTwoFaAccountConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codes = $v.codes?.toBuilder();
      _codesLeft = $v.codesLeft;
      _useByDefault = $v.useByDefault;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BackupCodeTwoFaAccountConfig other) {
    _$v = other as _$BackupCodeTwoFaAccountConfig;
  }

  @override
  void update(void Function(BackupCodeTwoFaAccountConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupCodeTwoFaAccountConfig build() => _build();

  _$BackupCodeTwoFaAccountConfig _build() {
    _$BackupCodeTwoFaAccountConfig _$result;
    try {
      _$result =
          _$v ??
          _$BackupCodeTwoFaAccountConfig._(
            codes: _codes?.build(),
            codesLeft: codesLeft,
            useByDefault: useByDefault,
            providerType: BuiltValueNullFieldError.checkNotNull(
              providerType,
              r'BackupCodeTwoFaAccountConfig',
              'providerType',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codes';
        _codes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BackupCodeTwoFaAccountConfig',
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
