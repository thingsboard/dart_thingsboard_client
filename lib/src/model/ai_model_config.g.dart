// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class AiModelConfigBuilder {
  void replace(AiModelConfig other);
  void update(void Function(AiModelConfigBuilder) updates);
  AiProvider? get provider;
  set provider(AiProvider? provider);
}

class _$$AiModelConfig extends $AiModelConfig {
  @override
  final AiProvider provider;

  factory _$$AiModelConfig([void Function($AiModelConfigBuilder)? updates]) =>
      ($AiModelConfigBuilder()..update(updates))._build();

  _$$AiModelConfig._({required this.provider}) : super._();
  @override
  $AiModelConfig rebuild(void Function($AiModelConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $AiModelConfigBuilder toBuilder() => $AiModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $AiModelConfig && provider == other.provider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'$AiModelConfig',
    )..add('provider', provider)).toString();
  }
}

class $AiModelConfigBuilder
    implements
        Builder<$AiModelConfig, $AiModelConfigBuilder>,
        AiModelConfigBuilder {
  _$$AiModelConfig? _$v;

  AiProvider? _provider;
  AiProvider? get provider => _$this._provider;
  set provider(covariant AiProvider? provider) => _$this._provider = provider;

  $AiModelConfigBuilder() {
    $AiModelConfig._defaults(this);
  }

  $AiModelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $AiModelConfig other) {
    _$v = other as _$$AiModelConfig;
  }

  @override
  void update(void Function($AiModelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $AiModelConfig build() => _build();

  _$$AiModelConfig _build() {
    final _$result =
        _$v ??
        _$$AiModelConfig._(
          provider: BuiltValueNullFieldError.checkNotNull(
            provider,
            r'$AiModelConfig',
            'provider',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
