// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_vertex_ai_gemini_chat_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GoogleVertexAiGeminiChatModelConfig
    extends GoogleVertexAiGeminiChatModelConfig {
  @override
  final int? topK;
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
  final GoogleVertexAiGeminiProviderConfig providerConfig;
  @override
  final double? topP;
  @override
  final double? frequencyPenalty;
  @override
  final int? maxOutputTokens;
  @override
  final String provider;

  factory _$GoogleVertexAiGeminiChatModelConfig([
    void Function(GoogleVertexAiGeminiChatModelConfigBuilder)? updates,
  ]) =>
      (GoogleVertexAiGeminiChatModelConfigBuilder()..update(updates))._build();

  _$GoogleVertexAiGeminiChatModelConfig._({
    this.topK,
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
  GoogleVertexAiGeminiChatModelConfig rebuild(
    void Function(GoogleVertexAiGeminiChatModelConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GoogleVertexAiGeminiChatModelConfigBuilder toBuilder() =>
      GoogleVertexAiGeminiChatModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoogleVertexAiGeminiChatModelConfig &&
        topK == other.topK &&
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
    _$hash = $jc(_$hash, topK.hashCode);
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
    return (newBuiltValueToStringHelper(r'GoogleVertexAiGeminiChatModelConfig')
          ..add('topK', topK)
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

class GoogleVertexAiGeminiChatModelConfigBuilder
    implements
        Builder<
          GoogleVertexAiGeminiChatModelConfig,
          GoogleVertexAiGeminiChatModelConfigBuilder
        >,
        AiModelConfigBuilder {
  _$GoogleVertexAiGeminiChatModelConfig? _$v;

  int? _topK;
  int? get topK => _$this._topK;
  set topK(covariant int? topK) => _$this._topK = topK;

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

  GoogleVertexAiGeminiProviderConfigBuilder? _providerConfig;
  GoogleVertexAiGeminiProviderConfigBuilder get providerConfig =>
      _$this._providerConfig ??= GoogleVertexAiGeminiProviderConfigBuilder();
  set providerConfig(
    covariant GoogleVertexAiGeminiProviderConfigBuilder? providerConfig,
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

  GoogleVertexAiGeminiChatModelConfigBuilder() {
    GoogleVertexAiGeminiChatModelConfig._defaults(this);
  }

  GoogleVertexAiGeminiChatModelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topK = $v.topK;
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
  void replace(covariant GoogleVertexAiGeminiChatModelConfig other) {
    _$v = other as _$GoogleVertexAiGeminiChatModelConfig;
  }

  @override
  void update(
    void Function(GoogleVertexAiGeminiChatModelConfigBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  GoogleVertexAiGeminiChatModelConfig build() => _build();

  _$GoogleVertexAiGeminiChatModelConfig _build() {
    _$GoogleVertexAiGeminiChatModelConfig _$result;
    try {
      _$result =
          _$v ??
          _$GoogleVertexAiGeminiChatModelConfig._(
            topK: topK,
            presencePenalty: presencePenalty,
            maxRetries: maxRetries,
            modelId: BuiltValueNullFieldError.checkNotNull(
              modelId,
              r'GoogleVertexAiGeminiChatModelConfig',
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
              r'GoogleVertexAiGeminiChatModelConfig',
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
          r'GoogleVertexAiGeminiChatModelConfig',
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
