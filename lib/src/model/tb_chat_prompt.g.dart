// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_chat_prompt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbChatPrompt extends TbChatPrompt {
  @override
  final String? systemMessage;
  @override
  final TbUserMessage userMessage;

  factory _$TbChatPrompt([void Function(TbChatPromptBuilder)? updates]) =>
      (TbChatPromptBuilder()..update(updates))._build();

  _$TbChatPrompt._({this.systemMessage, required this.userMessage}) : super._();
  @override
  TbChatPrompt rebuild(void Function(TbChatPromptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TbChatPromptBuilder toBuilder() => TbChatPromptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbChatPrompt &&
        systemMessage == other.systemMessage &&
        userMessage == other.userMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, systemMessage.hashCode);
    _$hash = $jc(_$hash, userMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TbChatPrompt')
          ..add('systemMessage', systemMessage)
          ..add('userMessage', userMessage))
        .toString();
  }
}

class TbChatPromptBuilder
    implements Builder<TbChatPrompt, TbChatPromptBuilder> {
  _$TbChatPrompt? _$v;

  String? _systemMessage;
  String? get systemMessage => _$this._systemMessage;
  set systemMessage(String? systemMessage) =>
      _$this._systemMessage = systemMessage;

  TbUserMessageBuilder? _userMessage;
  TbUserMessageBuilder get userMessage =>
      _$this._userMessage ??= TbUserMessageBuilder();
  set userMessage(TbUserMessageBuilder? userMessage) =>
      _$this._userMessage = userMessage;

  TbChatPromptBuilder() {
    TbChatPrompt._defaults(this);
  }

  TbChatPromptBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _systemMessage = $v.systemMessage;
      _userMessage = $v.userMessage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbChatPrompt other) {
    _$v = other as _$TbChatPrompt;
  }

  @override
  void update(void Function(TbChatPromptBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbChatPrompt build() => _build();

  _$TbChatPrompt _build() {
    _$TbChatPrompt _$result;
    try {
      _$result =
          _$v ??
          _$TbChatPrompt._(
            systemMessage: systemMessage,
            userMessage: userMessage.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userMessage';
        userMessage.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TbChatPrompt',
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
