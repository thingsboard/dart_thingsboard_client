// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amazon_bedrock_chat_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AmazonBedrockChatModelConfig extends AmazonBedrockChatModelConfig {
  @override
  final int? maxRetries;
  @override
  final String modelId;
  @override
  final double? temperature;
  @override
  final int? timeoutSeconds;
  @override
  final AiModelType? modelType;
  @override
  final AmazonBedrockProviderConfig providerConfig;
  @override
  final double? topP;
  @override
  final int? maxOutputTokens;
  @override
  final AiProvider provider;

  factory _$AmazonBedrockChatModelConfig([
    void Function(AmazonBedrockChatModelConfigBuilder)? updates,
  ]) => (AmazonBedrockChatModelConfigBuilder()..update(updates))._build();

  _$AmazonBedrockChatModelConfig._({
    this.maxRetries,
    required this.modelId,
    this.temperature,
    this.timeoutSeconds,
    this.modelType,
    required this.providerConfig,
    this.topP,
    this.maxOutputTokens,
    required this.provider,
  }) : super._();
  @override
  AmazonBedrockChatModelConfig rebuild(
    void Function(AmazonBedrockChatModelConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AmazonBedrockChatModelConfigBuilder toBuilder() =>
      AmazonBedrockChatModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AmazonBedrockChatModelConfig &&
        maxRetries == other.maxRetries &&
        modelId == other.modelId &&
        temperature == other.temperature &&
        timeoutSeconds == other.timeoutSeconds &&
        modelType == other.modelType &&
        providerConfig == other.providerConfig &&
        topP == other.topP &&
        maxOutputTokens == other.maxOutputTokens &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxRetries.hashCode);
    _$hash = $jc(_$hash, modelId.hashCode);
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jc(_$hash, timeoutSeconds.hashCode);
    _$hash = $jc(_$hash, modelType.hashCode);
    _$hash = $jc(_$hash, providerConfig.hashCode);
    _$hash = $jc(_$hash, topP.hashCode);
    _$hash = $jc(_$hash, maxOutputTokens.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AmazonBedrockChatModelConfig')
          ..add('maxRetries', maxRetries)
          ..add('modelId', modelId)
          ..add('temperature', temperature)
          ..add('timeoutSeconds', timeoutSeconds)
          ..add('modelType', modelType)
          ..add('providerConfig', providerConfig)
          ..add('topP', topP)
          ..add('maxOutputTokens', maxOutputTokens)
          ..add('provider', provider))
        .toString();
  }
}

class AmazonBedrockChatModelConfigBuilder
    implements
        Builder<
          AmazonBedrockChatModelConfig,
          AmazonBedrockChatModelConfigBuilder
        >,
        AiModelConfigBuilder {
  _$AmazonBedrockChatModelConfig? _$v;

  int? _maxRetries;
  int? get maxRetries => _$this._maxRetries;
  set maxRetries(covariant int? maxRetries) => _$this._maxRetries = maxRetries;

  String? _modelId;
  String? get modelId => _$this._modelId;
  set modelId(covariant String? modelId) => _$this._modelId = modelId;

  double? _temperature;
  double? get temperature => _$this._temperature;
  set temperature(covariant double? temperature) =>
      _$this._temperature = temperature;

  int? _timeoutSeconds;
  int? get timeoutSeconds => _$this._timeoutSeconds;
  set timeoutSeconds(covariant int? timeoutSeconds) =>
      _$this._timeoutSeconds = timeoutSeconds;

  AiModelType? _modelType;
  AiModelType? get modelType => _$this._modelType;
  set modelType(covariant AiModelType? modelType) =>
      _$this._modelType = modelType;

  AmazonBedrockProviderConfigBuilder? _providerConfig;
  AmazonBedrockProviderConfigBuilder get providerConfig =>
      _$this._providerConfig ??= AmazonBedrockProviderConfigBuilder();
  set providerConfig(
    covariant AmazonBedrockProviderConfigBuilder? providerConfig,
  ) => _$this._providerConfig = providerConfig;

  double? _topP;
  double? get topP => _$this._topP;
  set topP(covariant double? topP) => _$this._topP = topP;

  int? _maxOutputTokens;
  int? get maxOutputTokens => _$this._maxOutputTokens;
  set maxOutputTokens(covariant int? maxOutputTokens) =>
      _$this._maxOutputTokens = maxOutputTokens;

  AiProvider? _provider;
  AiProvider? get provider => _$this._provider;
  set provider(covariant AiProvider? provider) => _$this._provider = provider;

  AmazonBedrockChatModelConfigBuilder() {
    AmazonBedrockChatModelConfig._defaults(this);
  }

  AmazonBedrockChatModelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxRetries = $v.maxRetries;
      _modelId = $v.modelId;
      _temperature = $v.temperature;
      _timeoutSeconds = $v.timeoutSeconds;
      _modelType = $v.modelType;
      _providerConfig = $v.providerConfig.toBuilder();
      _topP = $v.topP;
      _maxOutputTokens = $v.maxOutputTokens;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AmazonBedrockChatModelConfig other) {
    _$v = other as _$AmazonBedrockChatModelConfig;
  }

  @override
  void update(void Function(AmazonBedrockChatModelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AmazonBedrockChatModelConfig build() => _build();

  _$AmazonBedrockChatModelConfig _build() {
    _$AmazonBedrockChatModelConfig _$result;
    try {
      _$result =
          _$v ??
          _$AmazonBedrockChatModelConfig._(
            maxRetries: maxRetries,
            modelId: BuiltValueNullFieldError.checkNotNull(
              modelId,
              r'AmazonBedrockChatModelConfig',
              'modelId',
            ),
            temperature: temperature,
            timeoutSeconds: timeoutSeconds,
            modelType: modelType,
            providerConfig: providerConfig.build(),
            topP: topP,
            maxOutputTokens: maxOutputTokens,
            provider: BuiltValueNullFieldError.checkNotNull(
              provider,
              r'AmazonBedrockChatModelConfig',
              'provider',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'providerConfig';
        providerConfig.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AmazonBedrockChatModelConfig',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
