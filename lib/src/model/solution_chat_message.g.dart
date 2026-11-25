// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solution_chat_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SolutionChatMessage extends SolutionChatMessage {
  @override
  final String? message;
  @override
  final BuiltList<String>? resources;

  factory _$SolutionChatMessage([
    void Function(SolutionChatMessageBuilder)? updates,
  ]) => (SolutionChatMessageBuilder()..update(updates))._build();

  _$SolutionChatMessage._({this.message, this.resources}) : super._();
  @override
  SolutionChatMessage rebuild(
    void Function(SolutionChatMessageBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SolutionChatMessageBuilder toBuilder() =>
      SolutionChatMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SolutionChatMessage &&
        message == other.message &&
        resources == other.resources;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, resources.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SolutionChatMessage')
          ..add('message', message)
          ..add('resources', resources))
        .toString();
  }
}

class SolutionChatMessageBuilder
    implements Builder<SolutionChatMessage, SolutionChatMessageBuilder> {
  _$SolutionChatMessage? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<String>? _resources;
  ListBuilder<String> get resources =>
      _$this._resources ??= ListBuilder<String>();
  set resources(ListBuilder<String>? resources) =>
      _$this._resources = resources;

  SolutionChatMessageBuilder() {
    SolutionChatMessage._defaults(this);
  }

  SolutionChatMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _resources = $v.resources?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SolutionChatMessage other) {
    _$v = other as _$SolutionChatMessage;
  }

  @override
  void update(void Function(SolutionChatMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SolutionChatMessage build() => _build();

  _$SolutionChatMessage _build() {
    _$SolutionChatMessage _$result;
    try {
      _$result =
          _$v ??
          _$SolutionChatMessage._(
            message: message,
            resources: _resources?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resources';
        _resources?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'SolutionChatMessage',
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
