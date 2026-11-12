// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ollama_chat_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OllamaChatModelConfig extends OllamaChatModelConfig {
  @override
  final int? topK;
  @override
  final int? maxRetries;
  @override
  final int? contextLength;
  @override
  final String modelId;
  @override
  final double? temperature;
  @override
  final int? timeoutSeconds;
  @override
  final AiModelType? modelType;
  @override
  final OllamaProviderConfig providerConfig;
  @override
  final double? topP;
  @override
  final int? maxOutputTokens;
  @override
  final AiProvider provider;

  factory _$OllamaChatModelConfig([
    void Function(OllamaChatModelConfigBuilder)? updates,
  ]) => (OllamaChatModelConfigBuilder()..update(updates))._build();

  _$OllamaChatModelConfig._({
    this.topK,
    this.maxRetries,
    this.contextLength,
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
  OllamaChatModelConfig rebuild(
    void Function(OllamaChatModelConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OllamaChatModelConfigBuilder toBuilder() =>
      OllamaChatModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OllamaChatModelConfig &&
        topK == other.topK &&
        maxRetries == other.maxRetries &&
        contextLength == other.contextLength &&
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
    _$hash = $jc(_$hash, topK.hashCode);
    _$hash = $jc(_$hash, maxRetries.hashCode);
    _$hash = $jc(_$hash, contextLength.hashCode);
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
    return (newBuiltValueToStringHelper(r'OllamaChatModelConfig')
          ..add('topK', topK)
          ..add('maxRetries', maxRetries)
          ..add('contextLength', contextLength)
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

class OllamaChatModelConfigBuilder
    implements
        Builder<OllamaChatModelConfig, OllamaChatModelConfigBuilder>,
        AiModelConfigBuilder {
  _$OllamaChatModelConfig? _$v;

  int? _topK;
  int? get topK => _$this._topK;
  set topK(covariant int? topK) => _$this._topK = topK;

  int? _maxRetries;
  int? get maxRetries => _$this._maxRetries;
  set maxRetries(covariant int? maxRetries) => _$this._maxRetries = maxRetries;

  int? _contextLength;
  int? get contextLength => _$this._contextLength;
  set contextLength(covariant int? contextLength) =>
      _$this._contextLength = contextLength;

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

  OllamaProviderConfigBuilder? _providerConfig;
  OllamaProviderConfigBuilder get providerConfig =>
      _$this._providerConfig ??= OllamaProviderConfigBuilder();
  set providerConfig(covariant OllamaProviderConfigBuilder? providerConfig) =>
      _$this._providerConfig = providerConfig;

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

  OllamaChatModelConfigBuilder() {
    OllamaChatModelConfig._defaults(this);
  }

  OllamaChatModelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topK = $v.topK;
      _maxRetries = $v.maxRetries;
      _contextLength = $v.contextLength;
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
  void replace(covariant OllamaChatModelConfig other) {
    _$v = other as _$OllamaChatModelConfig;
  }

  @override
  void update(void Function(OllamaChatModelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OllamaChatModelConfig build() => _build();

  _$OllamaChatModelConfig _build() {
    _$OllamaChatModelConfig _$result;
    try {
      _$result =
          _$v ??
          _$OllamaChatModelConfig._(
            topK: topK,
            maxRetries: maxRetries,
            contextLength: contextLength,
            modelId: BuiltValueNullFieldError.checkNotNull(
              modelId,
              r'OllamaChatModelConfig',
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
              r'OllamaChatModelConfig',
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
          r'OllamaChatModelConfig',
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
