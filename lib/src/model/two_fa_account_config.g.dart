// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_fa_account_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TwoFaAccountConfigBuilder {
  void replace(TwoFaAccountConfig other);
  void update(void Function(TwoFaAccountConfigBuilder) updates);
  bool? get useByDefault;
  set useByDefault(bool? useByDefault);

  String? get providerType;
  set providerType(String? providerType);
}

class _$$TwoFaAccountConfig extends $TwoFaAccountConfig {
  @override
  final bool? useByDefault;
  @override
  final String providerType;

  factory _$$TwoFaAccountConfig([
    void Function($TwoFaAccountConfigBuilder)? updates,
  ]) => ($TwoFaAccountConfigBuilder()..update(updates))._build();

  _$$TwoFaAccountConfig._({this.useByDefault, required this.providerType})
    : super._();
  @override
  $TwoFaAccountConfig rebuild(
    void Function($TwoFaAccountConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $TwoFaAccountConfigBuilder toBuilder() =>
      $TwoFaAccountConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TwoFaAccountConfig &&
        useByDefault == other.useByDefault &&
        providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useByDefault.hashCode);
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$TwoFaAccountConfig')
          ..add('useByDefault', useByDefault)
          ..add('providerType', providerType))
        .toString();
  }
}

class $TwoFaAccountConfigBuilder
    implements
        Builder<$TwoFaAccountConfig, $TwoFaAccountConfigBuilder>,
        TwoFaAccountConfigBuilder {
  _$$TwoFaAccountConfig? _$v;

  bool? _useByDefault;
  bool? get useByDefault => _$this._useByDefault;
  set useByDefault(covariant bool? useByDefault) =>
      _$this._useByDefault = useByDefault;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  $TwoFaAccountConfigBuilder() {
    $TwoFaAccountConfig._defaults(this);
  }

  $TwoFaAccountConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useByDefault = $v.useByDefault;
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TwoFaAccountConfig other) {
    _$v = other as _$$TwoFaAccountConfig;
  }

  @override
  void update(void Function($TwoFaAccountConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TwoFaAccountConfig build() => _build();

  _$$TwoFaAccountConfig _build() {
    final _$result =
        _$v ??
        _$$TwoFaAccountConfig._(
          useByDefault: useByDefault,
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'$TwoFaAccountConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
