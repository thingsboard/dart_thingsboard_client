// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_ai_gemini_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoogleAiGeminiProviderConfig extends GoogleAiGeminiProviderConfig {
  @override
  final String apiKey;

  factory _$GoogleAiGeminiProviderConfig([
    void Function(GoogleAiGeminiProviderConfigBuilder)? updates,
  ]) => (GoogleAiGeminiProviderConfigBuilder()..update(updates))._build();

  _$GoogleAiGeminiProviderConfig._({required this.apiKey}) : super._();
  @override
  GoogleAiGeminiProviderConfig rebuild(
    void Function(GoogleAiGeminiProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GoogleAiGeminiProviderConfigBuilder toBuilder() =>
      GoogleAiGeminiProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleAiGeminiProviderConfig && apiKey == other.apiKey;
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
      r'GoogleAiGeminiProviderConfig',
    )..add('apiKey', apiKey)).toString();
  }
}

class GoogleAiGeminiProviderConfigBuilder
    implements
        Builder<
          GoogleAiGeminiProviderConfig,
          GoogleAiGeminiProviderConfigBuilder
        > {
  _$GoogleAiGeminiProviderConfig? _$v;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  GoogleAiGeminiProviderConfigBuilder() {
    GoogleAiGeminiProviderConfig._defaults(this);
  }

  GoogleAiGeminiProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoogleAiGeminiProviderConfig other) {
    _$v = other as _$GoogleAiGeminiProviderConfig;
  }

  @override
  void update(void Function(GoogleAiGeminiProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoogleAiGeminiProviderConfig build() => _build();

  _$GoogleAiGeminiProviderConfig _build() {
    final _$result =
        _$v ??
        _$GoogleAiGeminiProviderConfig._(
          apiKey: BuiltValueNullFieldError.checkNotNull(
            apiKey,
            r'GoogleAiGeminiProviderConfig',
            'apiKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
