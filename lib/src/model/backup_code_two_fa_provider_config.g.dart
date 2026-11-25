// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'backup_code_two_fa_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BackupCodeTwoFaProviderConfig extends BackupCodeTwoFaProviderConfig {
  @override
  final int? codesQuantity;
  @override
  final String providerType;

  factory _$BackupCodeTwoFaProviderConfig([
    void Function(BackupCodeTwoFaProviderConfigBuilder)? updates,
  ]) => (BackupCodeTwoFaProviderConfigBuilder()..update(updates))._build();

  _$BackupCodeTwoFaProviderConfig._({
    this.codesQuantity,
    required this.providerType,
  }) : super._();
  @override
  BackupCodeTwoFaProviderConfig rebuild(
    void Function(BackupCodeTwoFaProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BackupCodeTwoFaProviderConfigBuilder toBuilder() =>
      BackupCodeTwoFaProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BackupCodeTwoFaProviderConfig &&
        codesQuantity == other.codesQuantity &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, codesQuantity.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BackupCodeTwoFaProviderConfig')
          ..add('codesQuantity', codesQuantity)
          ..add('providerType', providerType))
        .toString();
  }
}

class BackupCodeTwoFaProviderConfigBuilder
    implements
        Builder<
          BackupCodeTwoFaProviderConfig,
          BackupCodeTwoFaProviderConfigBuilder
        >,
        TwoFaProviderConfigBuilder {
  _$BackupCodeTwoFaProviderConfig? _$v;

  int? _codesQuantity;
  int? get codesQuantity => _$this._codesQuantity;
  set codesQuantity(covariant int? codesQuantity) =>
      _$this._codesQuantity = codesQuantity;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  BackupCodeTwoFaProviderConfigBuilder() {
    BackupCodeTwoFaProviderConfig._defaults(this);
  }

  BackupCodeTwoFaProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codesQuantity = $v.codesQuantity;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BackupCodeTwoFaProviderConfig other) {
    _$v = other as _$BackupCodeTwoFaProviderConfig;
  }

  @override
  void update(void Function(BackupCodeTwoFaProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BackupCodeTwoFaProviderConfig build() => _build();

  _$BackupCodeTwoFaProviderConfig _build() {
    final _$result =
        _$v ??
        _$BackupCodeTwoFaProviderConfig._(
          codesQuantity: codesQuantity,
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'BackupCodeTwoFaProviderConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
