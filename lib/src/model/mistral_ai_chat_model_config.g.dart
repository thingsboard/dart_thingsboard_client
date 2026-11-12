// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mistral_ai_chat_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MistralAiChatModelConfig extends MistralAiChatModelConfig {
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
  final MistralAiProviderConfig providerConfig;
  @override
  final double? topP;
  @override
  final double? frequencyPenalty;
  @override
  final int? maxOutputTokens;
  @override
  final AiProvider provider;

  factory _$MistralAiChatModelConfig([
    void Function(MistralAiChatModelConfigBuilder)? updates,
  ]) => (MistralAiChatModelConfigBuilder()..update(updates))._build();

  _$MistralAiChatModelConfig._({
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
  MistralAiChatModelConfig rebuild(
    void Function(MistralAiChatModelConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MistralAiChatModelConfigBuilder toBuilder() =>
      MistralAiChatModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MistralAiChatModelConfig &&
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
    return (newBuiltValueToStringHelper(r'MistralAiChatModelConfig')
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

class MistralAiChatModelConfigBuilder
    implements
        Builder<MistralAiChatModelConfig, MistralAiChatModelConfigBuilder>,
        AiModelConfigBuilder {
  _$MistralAiChatModelConfig? _$v;

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

  MistralAiProviderConfigBuilder? _providerConfig;
  MistralAiProviderConfigBuilder get providerConfig =>
      _$this._providerConfig ??= MistralAiProviderConfigBuilder();
  set providerConfig(
    covariant MistralAiProviderConfigBuilder? providerConfig,
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

  AiProvider? _provider;
  AiProvider? get provider => _$this._provider;
  set provider(covariant AiProvider? provider) => _$this._provider = provider;

  MistralAiChatModelConfigBuilder() {
    MistralAiChatModelConfig._defaults(this);
  }

  MistralAiChatModelConfigBuilder get _$this {
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
  void replace(covariant MistralAiChatModelConfig other) {
    _$v = other as _$MistralAiChatModelConfig;
  }

  @override
  void update(void Function(MistralAiChatModelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MistralAiChatModelConfig build() => _build();

  _$MistralAiChatModelConfig _build() {
    _$MistralAiChatModelConfig _$result;
    try {
      _$result =
          _$v ??
          _$MistralAiChatModelConfig._(
            presencePenalty: presencePenalty,
            maxRetries: maxRetries,
            modelId: BuiltValueNullFieldError.checkNotNull(
              modelId,
              r'MistralAiChatModelConfig',
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
              r'MistralAiChatModelConfig',
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
          r'MistralAiChatModelConfig',
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
