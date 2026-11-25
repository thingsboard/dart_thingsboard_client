// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_chat_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbChatRequest extends TbChatRequest {
  @override
  final String? systemMessage;
  @override
  final TbUserMessage userMessage;
  @override
  final AiModelConfig chatModelConfig;

  factory _$TbChatRequest([void Function(TbChatRequestBuilder)? updates]) =>
      (TbChatRequestBuilder()..update(updates))._build();

  _$TbChatRequest._({
    this.systemMessage,
    required this.userMessage,
    required this.chatModelConfig,
  }) : super._();
  @override
  TbChatRequest rebuild(void Function(TbChatRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TbChatRequestBuilder toBuilder() => TbChatRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbChatRequest &&
        systemMessage == other.systemMessage &&
        userMessage == other.userMessage &&
        chatModelConfig == other.chatModelConfig;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, systemMessage.hashCode);
    _$hash = $jc(_$hash, userMessage.hashCode);
    _$hash = $jc(_$hash, chatModelConfig.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbChatRequest')
          ..add('systemMessage', systemMessage)
          ..add('userMessage', userMessage)
          ..add('chatModelConfig', chatModelConfig))
        .toString();
  }
}

class TbChatRequestBuilder
    implements Builder<TbChatRequest, TbChatRequestBuilder> {
  _$TbChatRequest? _$v;

  String? _systemMessage;
  String? get systemMessage => _$this._systemMessage;
  set systemMessage(String? systemMessage) =>
      _$this._systemMessage = systemMessage;

  TbUserMessageBuilder? _userMessage;
  TbUserMessageBuilder get userMessage =>
      _$this._userMessage ??= TbUserMessageBuilder();
  set userMessage(TbUserMessageBuilder? userMessage) =>
      _$this._userMessage = userMessage;

  AiModelConfig? _chatModelConfig;
  AiModelConfig? get chatModelConfig => _$this._chatModelConfig;
  set chatModelConfig(AiModelConfig? chatModelConfig) =>
      _$this._chatModelConfig = chatModelConfig;

  TbChatRequestBuilder() {
    TbChatRequest._defaults(this);
  }

  TbChatRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _systemMessage = $v.systemMessage;
      _userMessage = $v.userMessage.toBuilder();
      _chatModelConfig = $v.chatModelConfig;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbChatRequest other) {
    _$v = other as _$TbChatRequest;
  }

  @override
  void update(void Function(TbChatRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbChatRequest build() => _build();

  _$TbChatRequest _build() {
    _$TbChatRequest _$result;
    try {
      _$result =
          _$v ??
          _$TbChatRequest._(
            systemMessage: systemMessage,
            userMessage: userMessage.build(),
            chatModelConfig: BuiltValueNullFieldError.checkNotNull(
              chatModelConfig,
              r'TbChatRequest',
              'chatModelConfig',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userMessage';
        userMessage.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TbChatRequest',
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
