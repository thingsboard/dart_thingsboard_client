// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tb_user_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TbUserMessage extends TbUserMessage {
  @override
  final BuiltList<TbContent> contents;

  factory _$TbUserMessage([void Function(TbUserMessageBuilder)? updates]) =>
      (TbUserMessageBuilder()..update(updates))._build();

  _$TbUserMessage._({required this.contents}) : super._();
  @override
  TbUserMessage rebuild(void Function(TbUserMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TbUserMessageBuilder toBuilder() => TbUserMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TbUserMessage && contents == other.contents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'TbUserMessage',
    )..add('contents', contents)).toString();
  }
}

class TbUserMessageBuilder
    implements Builder<TbUserMessage, TbUserMessageBuilder> {
  _$TbUserMessage? _$v;

  ListBuilder<TbContent>? _contents;
  ListBuilder<TbContent> get contents =>
      _$this._contents ??= ListBuilder<TbContent>();
  set contents(ListBuilder<TbContent>? contents) => _$this._contents = contents;

  TbUserMessageBuilder() {
    TbUserMessage._defaults(this);
  }

  TbUserMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contents = $v.contents.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TbUserMessage other) {
    _$v = other as _$TbUserMessage;
  }

  @override
  void update(void Function(TbUserMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TbUserMessage build() => _build();

  _$TbUserMessage _build() {
    _$TbUserMessage _$result;
    try {
      _$result = _$v ?? _$TbUserMessage._(contents: contents.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contents';
        contents.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'TbUserMessage',
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
