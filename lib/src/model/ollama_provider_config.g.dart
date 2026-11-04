// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ollama_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OllamaProviderConfig extends OllamaProviderConfig {
  @override
  final String baseUrl;
  @override
  final OllamaAuth auth;

  factory _$OllamaProviderConfig([
    void Function(OllamaProviderConfigBuilder)? updates,
  ]) => (OllamaProviderConfigBuilder()..update(updates))._build();

  _$OllamaProviderConfig._({required this.baseUrl, required this.auth})
    : super._();
  @override
  OllamaProviderConfig rebuild(
    void Function(OllamaProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OllamaProviderConfigBuilder toBuilder() =>
      OllamaProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OllamaProviderConfig &&
        baseUrl == other.baseUrl &&
        auth == other.auth;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, auth.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OllamaProviderConfig')
          ..add('baseUrl', baseUrl)
          ..add('auth', auth))
        .toString();
  }
}

class OllamaProviderConfigBuilder
    implements Builder<OllamaProviderConfig, OllamaProviderConfigBuilder> {
  _$OllamaProviderConfig? _$v;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  OllamaAuth? _auth;
  OllamaAuth? get auth => _$this._auth;
  set auth(OllamaAuth? auth) => _$this._auth = auth;

  OllamaProviderConfigBuilder() {
    OllamaProviderConfig._defaults(this);
  }

  OllamaProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseUrl = $v.baseUrl;
      _auth = $v.auth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OllamaProviderConfig other) {
    _$v = other as _$OllamaProviderConfig;
  }

  @override
  void update(void Function(OllamaProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OllamaProviderConfig build() => _build();

  _$OllamaProviderConfig _build() {
    final _$result =
        _$v ??
        _$OllamaProviderConfig._(
          baseUrl: BuiltValueNullFieldError.checkNotNull(
            baseUrl,
            r'OllamaProviderConfig',
            'baseUrl',
          ),
          auth: BuiltValueNullFieldError.checkNotNull(
            auth,
            r'OllamaProviderConfig',
            'auth',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
