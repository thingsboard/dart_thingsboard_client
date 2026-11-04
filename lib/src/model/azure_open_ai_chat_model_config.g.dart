// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azure_open_ai_chat_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AzureOpenAiChatModelConfig extends AzureOpenAiChatModelConfig {
  @override
  final double? presencePenalty;
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
  final AzureOpenAiProviderConfig providerConfig;
  @override
  final double? topP;
  @override
  final double? frequencyPenalty;
  @override
  final int? maxOutputTokens;
  @override
  final String provider;

  factory _$AzureOpenAiChatModelConfig([
    void Function(AzureOpenAiChatModelConfigBuilder)? updates,
  ]) => (AzureOpenAiChatModelConfigBuilder()..update(updates))._build();

  _$AzureOpenAiChatModelConfig._({
    this.presencePenalty,
    this.maxRetries,
    required this.modelId,
    this.temperature,
    this.timeoutSeconds,
    this.modelType,
    required this.providerConfig,
    this.topP,
    this.frequencyPenalty,
    this.maxOutputTokens,
    required this.provider,
  }) : super._();
  @override
  AzureOpenAiChatModelConfig rebuild(
    void Function(AzureOpenAiChatModelConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AzureOpenAiChatModelConfigBuilder toBuilder() =>
      AzureOpenAiChatModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AzureOpenAiChatModelConfig &&
        presencePenalty == other.presencePenalty &&
        maxRetries == other.maxRetries &&
        modelId == other.modelId &&
        temperature == other.temperature &&
        timeoutSeconds == other.timeoutSeconds &&
        modelType == other.modelType &&
        providerConfig == other.providerConfig &&
        topP == other.topP &&
        frequencyPenalty == other.frequencyPenalty &&
        maxOutputTokens == other.maxOutputTokens &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, presencePenalty.hashCode);
    _$hash = $jc(_$hash, maxRetries.hashCode);
    _$hash = $jc(_$hash, modelId.hashCode);
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jc(_$hash, timeoutSeconds.hashCode);
    _$hash = $jc(_$hash, modelType.hashCode);
    _$hash = $jc(_$hash, providerConfig.hashCode);
    _$hash = $jc(_$hash, topP.hashCode);
    _$hash = $jc(_$hash, frequencyPenalty.hashCode);
    _$hash = $jc(_$hash, maxOutputTokens.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AzureOpenAiChatModelConfig')
          ..add('presencePenalty', presencePenalty)
          ..add('maxRetries', maxRetries)
          ..add('modelId', modelId)
          ..add('temperature', temperature)
          ..add('timeoutSeconds', timeoutSeconds)
          ..add('modelType', modelType)
          ..add('providerConfig', providerConfig)
          ..add('topP', topP)
          ..add('frequencyPenalty', frequencyPenalty)
          ..add('maxOutputTokens', maxOutputTokens)
          ..add('provider', provider))
        .toString();
  }
}

class AzureOpenAiChatModelConfigBuilder
    implements
        Builder<AzureOpenAiChatModelConfig, AzureOpenAiChatModelConfigBuilder>,
        AiModelConfigBuilder {
  _$AzureOpenAiChatModelConfig? _$v;

  double? _presencePenalty;
  double? get presencePenalty => _$this._presencePenalty;
  set presencePenalty(covariant double? presencePenalty) =>
      _$this._presencePenalty = presencePenalty;

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

  AzureOpenAiProviderConfigBuilder? _providerConfig;
  AzureOpenAiProviderConfigBuilder get providerConfig =>
      _$this._providerConfig ??= AzureOpenAiProviderConfigBuilder();
  set providerConfig(
    covariant AzureOpenAiProviderConfigBuilder? providerConfig,
  ) => _$this._providerConfig = providerConfig;

  double? _topP;
  double? get topP => _$this._topP;
  set topP(covariant double? topP) => _$this._topP = topP;

  double? _frequencyPenalty;
  double? get frequencyPenalty => _$this._frequencyPenalty;
  set frequencyPenalty(covariant double? frequencyPenalty) =>
      _$this._frequencyPenalty = frequencyPenalty;

  int? _maxOutputTokens;
  int? get maxOutputTokens => _$this._maxOutputTokens;
  set maxOutputTokens(covariant int? maxOutputTokens) =>
      _$this._maxOutputTokens = maxOutputTokens;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(covariant String? provider) => _$this._provider = provider;

  AzureOpenAiChatModelConfigBuilder() {
    AzureOpenAiChatModelConfig._defaults(this);
  }

  AzureOpenAiChatModelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _presencePenalty = $v.presencePenalty;
      _maxRetries = $v.maxRetries;
      _modelId = $v.modelId;
      _temperature = $v.temperature;
      _timeoutSeconds = $v.timeoutSeconds;
      _modelType = $v.modelType;
      _providerConfig = $v.providerConfig.toBuilder();
      _topP = $v.topP;
      _frequencyPenalty = $v.frequencyPenalty;
      _maxOutputTokens = $v.maxOutputTokens;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AzureOpenAiChatModelConfig other) {
    _$v = other as _$AzureOpenAiChatModelConfig;
  }

  @override
  void update(void Function(AzureOpenAiChatModelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AzureOpenAiChatModelConfig build() => _build();

  _$AzureOpenAiChatModelConfig _build() {
    _$AzureOpenAiChatModelConfig _$result;
    try {
      _$result =
          _$v ??
          _$AzureOpenAiChatModelConfig._(
            presencePenalty: presencePenalty,
            maxRetries: maxRetries,
            modelId: BuiltValueNullFieldError.checkNotNull(
              modelId,
              r'AzureOpenAiChatModelConfig',
              'modelId',
            ),
            temperature: temperature,
            timeoutSeconds: timeoutSeconds,
            modelType: modelType,
            providerConfig: providerConfig.build(),
            topP: topP,
            frequencyPenalty: frequencyPenalty,
            maxOutputTokens: maxOutputTokens,
            provider: BuiltValueNullFieldError.checkNotNull(
              provider,
              r'AzureOpenAiChatModelConfig',
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
          r'AzureOpenAiChatModelConfig',
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
