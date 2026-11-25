// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two_fa_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class TwoFaProviderConfigBuilder {
  void replace(TwoFaProviderConfig other);
  void update(void Function(TwoFaProviderConfigBuilder) updates);
  String? get providerType;
  set providerType(String? providerType);
}

class _$$TwoFaProviderConfig extends $TwoFaProviderConfig {
  @override
  final String providerType;

  factory _$$TwoFaProviderConfig([
    void Function($TwoFaProviderConfigBuilder)? updates,
  ]) => ($TwoFaProviderConfigBuilder()..update(updates))._build();

  _$$TwoFaProviderConfig._({required this.providerType}) : super._();
  @override
  $TwoFaProviderConfig rebuild(
    void Function($TwoFaProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  $TwoFaProviderConfigBuilder toBuilder() =>
      $TwoFaProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $TwoFaProviderConfig && providerType == other.providerType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, providerType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$TwoFaProviderConfig',
    )..add('providerType', providerType)).toString();
  }
}

class $TwoFaProviderConfigBuilder
    implements
        Builder<$TwoFaProviderConfig, $TwoFaProviderConfigBuilder>,
        TwoFaProviderConfigBuilder {
  _$$TwoFaProviderConfig? _$v;

  String? _providerType;
  String? get providerType => _$this._providerType;
  set providerType(covariant String? providerType) =>
      _$this._providerType = providerType;

  $TwoFaProviderConfigBuilder() {
    $TwoFaProviderConfig._defaults(this);
  }

  $TwoFaProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _providerType = $v.providerType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $TwoFaProviderConfig other) {
    _$v = other as _$$TwoFaProviderConfig;
  }

  @override
  void update(void Function($TwoFaProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $TwoFaProviderConfig build() => _build();

  _$$TwoFaProviderConfig _build() {
    final _$result =
        _$v ??
        _$$TwoFaProviderConfig._(
          providerType: BuiltValueNullFieldError.checkNotNull(
            providerType,
            r'$TwoFaProviderConfig',
            'providerType',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
