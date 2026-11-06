// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amazon_bedrock_provider_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AmazonBedrockProviderConfig extends AmazonBedrockProviderConfig {
  @override
  final String region;
  @override
  final String accessKeyId;
  @override
  final String secretAccessKey;

  factory _$AmazonBedrockProviderConfig([
    void Function(AmazonBedrockProviderConfigBuilder)? updates,
  ]) => (AmazonBedrockProviderConfigBuilder()..update(updates))._build();

  _$AmazonBedrockProviderConfig._({
    required this.region,
    required this.accessKeyId,
    required this.secretAccessKey,
  }) : super._();
  @override
  AmazonBedrockProviderConfig rebuild(
    void Function(AmazonBedrockProviderConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AmazonBedrockProviderConfigBuilder toBuilder() =>
      AmazonBedrockProviderConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmazonBedrockProviderConfig &&
        region == other.region &&
        accessKeyId == other.accessKeyId &&
        secretAccessKey == other.secretAccessKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, region.hashCode);
    _$hash = $jc(_$hash, accessKeyId.hashCode);
    _$hash = $jc(_$hash, secretAccessKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmazonBedrockProviderConfig')
          ..add('region', region)
          ..add('accessKeyId', accessKeyId)
          ..add('secretAccessKey', secretAccessKey))
        .toString();
  }
}

class AmazonBedrockProviderConfigBuilder
    implements
        Builder<
          AmazonBedrockProviderConfig,
          AmazonBedrockProviderConfigBuilder
        > {
  _$AmazonBedrockProviderConfig? _$v;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _accessKeyId;
  String? get accessKeyId => _$this._accessKeyId;
  set accessKeyId(String? accessKeyId) => _$this._accessKeyId = accessKeyId;

  String? _secretAccessKey;
  String? get secretAccessKey => _$this._secretAccessKey;
  set secretAccessKey(String? secretAccessKey) =>
      _$this._secretAccessKey = secretAccessKey;

  AmazonBedrockProviderConfigBuilder() {
    AmazonBedrockProviderConfig._defaults(this);
  }

  AmazonBedrockProviderConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _region = $v.region;
      _accessKeyId = $v.accessKeyId;
      _secretAccessKey = $v.secretAccessKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AmazonBedrockProviderConfig other) {
    _$v = other as _$AmazonBedrockProviderConfig;
  }

  @override
  void update(void Function(AmazonBedrockProviderConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmazonBedrockProviderConfig build() => _build();

  _$AmazonBedrockProviderConfig _build() {
    final _$result =
        _$v ??
        _$AmazonBedrockProviderConfig._(
          region: BuiltValueNullFieldError.checkNotNull(
            region,
            r'AmazonBedrockProviderConfig',
            'region',
          ),
          accessKeyId: BuiltValueNullFieldError.checkNotNull(
            accessKeyId,
            r'AmazonBedrockProviderConfig',
            'accessKeyId',
          ),
          secretAccessKey: BuiltValueNullFieldError.checkNotNull(
            secretAccessKey,
            r'AmazonBedrockProviderConfig',
            'secretAccessKey',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
