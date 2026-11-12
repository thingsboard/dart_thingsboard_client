// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mistral_ai_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MistralAiProviderConfig extends MistralAiProviderConfig {
  @override
  final String apiKey;

  factory _$MistralAiProviderConfig([
    void Function(MistralAiProviderConfigBuilder)? updates,
  ]) => (MistralAiProviderConfigBuilder()..update(updates))._build();

  _$MistralAiProviderConfig._({required this.apiKey}) : super._();
  @override
  MistralAiProviderConfig rebuild(
    void Function(MistralAiProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MistralAiProviderConfigBuilder toBuilder() =>
      MistralAiProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MistralAiProviderConfig && apiKey == other.apiKey;
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
      r'MistralAiProviderConfig',
    )..add('apiKey', apiKey)).toString();
  }
}

class MistralAiProviderConfigBuilder
    implements
        Builder<MistralAiProviderConfig, MistralAiProviderConfigBuilder> {
  _$MistralAiProviderConfig? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  MistralAiProviderConfigBuilder() {
    MistralAiProviderConfig._defaults(this);
  }

  MistralAiProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MistralAiProviderConfig other) {
    _$v = other as _$MistralAiProviderConfig;
  }

  @override
  void update(void Function(MistralAiProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MistralAiProviderConfig build() => _build();

  _$MistralAiProviderConfig _build() {
    final _$result =
        _$v ??
        _$MistralAiProviderConfig._(
          apiKey: BuiltValueNullFieldError.checkNotNull(
            apiKey,
            r'MistralAiProviderConfig',
            'apiKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
