// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_chat_model_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AiChatModelConfig extends AiChatModelConfig {
  @override
  final AiModelType? modelType;
  @override
  final AiProvider provider;

  factory _$AiChatModelConfig([
    void Function(AiChatModelConfigBuilder)? updates,
  ]) => (AiChatModelConfigBuilder()..update(updates))._build();

  _$AiChatModelConfig._({this.modelType, required this.provider}) : super._();
  @override
  AiChatModelConfig rebuild(void Function(AiChatModelConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AiChatModelConfigBuilder toBuilder() =>
      AiChatModelConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AiChatModelConfig &&
        modelType == other.modelType &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, modelType.hashCode);
    _$hash = $jc(_$hash, provider.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AiChatModelConfig')
          ..add('modelType', modelType)
          ..add('provider', provider))
        .toString();
  }
}

class AiChatModelConfigBuilder
    implements Builder<AiChatModelConfig, AiChatModelConfigBuilder> {
  _$AiChatModelConfig? _$v;

  AiModelType? _modelType;
  AiModelType? get modelType => _$this._modelType;
  set modelType(AiModelType? modelType) => _$this._modelType = modelType;

  AiProvider? _provider;
  AiProvider? get provider => _$this._provider;
  set provider(AiProvider? provider) => _$this._provider = provider;

  AiChatModelConfigBuilder() {
    AiChatModelConfig._defaults(this);
  }

  AiChatModelConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _modelType = $v.modelType;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AiChatModelConfig other) {
    _$v = other as _$AiChatModelConfig;
  }

  @override
  void update(void Function(AiChatModelConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AiChatModelConfig build() => _build();

  _$AiChatModelConfig _build() {
    final _$result =
        _$v ??
        _$AiChatModelConfig._(
          modelType: modelType,
          provider: BuiltValueNullFieldError.checkNotNull(
            provider,
            r'AiChatModelConfig',
            'provider',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
