// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_ai_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OpenAiProviderConfig extends OpenAiProviderConfig {
  @override
  final String? baseUrl;
  @override
  final String? apiKey;

  factory _$OpenAiProviderConfig([
    void Function(OpenAiProviderConfigBuilder)? updates,
  ]) => (OpenAiProviderConfigBuilder()..update(updates))._build();

  _$OpenAiProviderConfig._({this.baseUrl, this.apiKey}) : super._();
  @override
  OpenAiProviderConfig rebuild(
    void Function(OpenAiProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OpenAiProviderConfigBuilder toBuilder() =>
      OpenAiProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpenAiProviderConfig &&
        baseUrl == other.baseUrl &&
        apiKey == other.apiKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OpenAiProviderConfig')
          ..add('baseUrl', baseUrl)
          ..add('apiKey', apiKey))
        .toString();
  }
}

class OpenAiProviderConfigBuilder
    implements Builder<OpenAiProviderConfig, OpenAiProviderConfigBuilder> {
  _$OpenAiProviderConfig? _$v;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  OpenAiProviderConfigBuilder() {
    OpenAiProviderConfig._defaults(this);
  }

  OpenAiProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseUrl = $v.baseUrl;
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpenAiProviderConfig other) {
    _$v = other as _$OpenAiProviderConfig;
  }

  @override
  void update(void Function(OpenAiProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OpenAiProviderConfig build() => _build();

  _$OpenAiProviderConfig _build() {
    final _$result =
        _$v ?? _$OpenAiProviderConfig._(baseUrl: baseUrl, apiKey: apiKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
