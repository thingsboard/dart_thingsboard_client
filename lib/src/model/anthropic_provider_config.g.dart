// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anthropic_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnthropicProviderConfig extends AnthropicProviderConfig {
  @override
  final String apiKey;

  factory _$AnthropicProviderConfig([
    void Function(AnthropicProviderConfigBuilder)? updates,
  ]) => (AnthropicProviderConfigBuilder()..update(updates))._build();

  _$AnthropicProviderConfig._({required this.apiKey}) : super._();
  @override
  AnthropicProviderConfig rebuild(
    void Function(AnthropicProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnthropicProviderConfigBuilder toBuilder() =>
      AnthropicProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnthropicProviderConfig && apiKey == other.apiKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AnthropicProviderConfig',
    )..add('apiKey', apiKey)).toString();
  }
}

class AnthropicProviderConfigBuilder
    implements
        Builder<AnthropicProviderConfig, AnthropicProviderConfigBuilder> {
  _$AnthropicProviderConfig? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  AnthropicProviderConfigBuilder() {
    AnthropicProviderConfig._defaults(this);
  }

  AnthropicProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnthropicProviderConfig other) {
    _$v = other as _$AnthropicProviderConfig;
  }

  @override
  void update(void Function(AnthropicProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnthropicProviderConfig build() => _build();

  _$AnthropicProviderConfig _build() {
    final _$result =
        _$v ??
        _$AnthropicProviderConfig._(
          apiKey: BuiltValueNullFieldError.checkNotNull(
            apiKey,
            r'AnthropicProviderConfig',
            'apiKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
