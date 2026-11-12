// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azure_open_ai_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AzureOpenAiProviderConfig extends AzureOpenAiProviderConfig {
  @override
  final String endpoint;
  @override
  final String? serviceVersion;
  @override
  final String apiKey;

  factory _$AzureOpenAiProviderConfig([
    void Function(AzureOpenAiProviderConfigBuilder)? updates,
  ]) => (AzureOpenAiProviderConfigBuilder()..update(updates))._build();

  _$AzureOpenAiProviderConfig._({
    required this.endpoint,
    this.serviceVersion,
    required this.apiKey,
  }) : super._();
  @override
  AzureOpenAiProviderConfig rebuild(
    void Function(AzureOpenAiProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AzureOpenAiProviderConfigBuilder toBuilder() =>
      AzureOpenAiProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AzureOpenAiProviderConfig &&
        endpoint == other.endpoint &&
        serviceVersion == other.serviceVersion &&
        apiKey == other.apiKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpoint.hashCode);
    _$hash = $jc(_$hash, serviceVersion.hashCode);
    _$hash = $jc(_$hash, apiKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AzureOpenAiProviderConfig')
          ..add('endpoint', endpoint)
          ..add('serviceVersion', serviceVersion)
          ..add('apiKey', apiKey))
        .toString();
  }
}

class AzureOpenAiProviderConfigBuilder
    implements
        Builder<AzureOpenAiProviderConfig, AzureOpenAiProviderConfigBuilder> {
  _$AzureOpenAiProviderConfig? _$v;

  String? _endpoint;
  String? get endpoint => _$this._endpoint;
  set endpoint(String? endpoint) => _$this._endpoint = endpoint;

  String? _serviceVersion;
  String? get serviceVersion => _$this._serviceVersion;
  set serviceVersion(String? serviceVersion) =>
      _$this._serviceVersion = serviceVersion;

  String? _apiKey;
  String? get apiKey => _$this._apiKey;
  set apiKey(String? apiKey) => _$this._apiKey = apiKey;

  AzureOpenAiProviderConfigBuilder() {
    AzureOpenAiProviderConfig._defaults(this);
  }

  AzureOpenAiProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpoint = $v.endpoint;
      _serviceVersion = $v.serviceVersion;
      _apiKey = $v.apiKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AzureOpenAiProviderConfig other) {
    _$v = other as _$AzureOpenAiProviderConfig;
  }

  @override
  void update(void Function(AzureOpenAiProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AzureOpenAiProviderConfig build() => _build();

  _$AzureOpenAiProviderConfig _build() {
    final _$result =
        _$v ??
        _$AzureOpenAiProviderConfig._(
          endpoint: BuiltValueNullFieldError.checkNotNull(
            endpoint,
            r'AzureOpenAiProviderConfig',
            'endpoint',
          ),
          serviceVersion: serviceVersion,
          apiKey: BuiltValueNullFieldError.checkNotNull(
            apiKey,
            r'AzureOpenAiProviderConfig',
            'apiKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
