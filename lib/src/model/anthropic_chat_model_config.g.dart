// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anthropic_chat_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnthropicChatModelConfig extends AnthropicChatModelConfig {
  @override
  final int? topK;
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
  final AnthropicProviderConfig providerConfig;
  @override
  final double? topP;
  @override
  final int? maxOutputTokens;
  @override
  final String provider;

  factory _$AnthropicChatModelConfig([
    void Function(AnthropicChatModelConfigBuilder)? updates,
  ]) => (AnthropicChatModelConfigBuilder()..update(updates))._build();

  _$AnthropicChatModelConfig._({
    this.topK,
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
  AnthropicChatModelConfig rebuild(
    void Function(AnthropicChatModelConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnthropicChatModelConfigBuilder toBuilder() =>
      AnthropicChatModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnthropicChatModelConfig &&
        topK == other.topK &&
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
    _$hash = $jc(_$hash, topK.hashCode);
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
    return (newBuiltValueToStringHelper(r'AnthropicChatModelConfig')
          ..add('topK', topK)
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

class AnthropicChatModelConfigBuilder
    implements
        Builder<AnthropicChatModelConfig, AnthropicChatModelConfigBuilder>,
        AiModelConfigBuilder {
  _$AnthropicChatModelConfig? _$v;

  int? _topK;
  int? get topK => _$this._topK;
  set topK(covariant int? topK) => _$this._topK = topK;

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

  AnthropicProviderConfigBuilder? _providerConfig;
  AnthropicProviderConfigBuilder get providerConfig =>
      _$this._providerConfig ??= AnthropicProviderConfigBuilder();
  set providerConfig(
    covariant AnthropicProviderConfigBuilder? providerConfig,
  ) => _$this._providerConfig = providerConfig;

  double? _topP;
  double? get topP => _$this._topP;
  set topP(covariant double? topP) => _$this._topP = topP;

  int? _maxOutputTokens;
  int? get maxOutputTokens => _$this._maxOutputTokens;
  set maxOutputTokens(covariant int? maxOutputTokens) =>
      _$this._maxOutputTokens = maxOutputTokens;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(covariant String? provider) => _$this._provider = provider;

  AnthropicChatModelConfigBuilder() {
    AnthropicChatModelConfig._defaults(this);
  }

  AnthropicChatModelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _topK = $v.topK;
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
  void replace(covariant AnthropicChatModelConfig other) {
    _$v = other as _$AnthropicChatModelConfig;
  }

  @override
  void update(void Function(AnthropicChatModelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnthropicChatModelConfig build() => _build();

  _$AnthropicChatModelConfig _build() {
    _$AnthropicChatModelConfig _$result;
    try {
      _$result =
          _$v ??
          _$AnthropicChatModelConfig._(
            topK: topK,
            maxRetries: maxRetries,
            modelId: BuiltValueNullFieldError.checkNotNull(
              modelId,
              r'AnthropicChatModelConfig',
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
              r'AnthropicChatModelConfig',
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
          r'AnthropicChatModelConfig',
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
