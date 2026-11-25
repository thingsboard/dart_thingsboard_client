// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slack_conversation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SlackConversation extends SlackConversation {
  @override
  final SlackConversationType type;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? wholeName;
  @override
  final String? email;
  @override
  final String? title;

  factory _$SlackConversation([
    void Function(SlackConversationBuilder)? updates,
  ]) => (SlackConversationBuilder()..update(updates))._build();

  _$SlackConversation._({
    required this.type,
    required this.id,
    required this.name,
    this.wholeName,
    this.email,
    this.title,
  }) : super._();
  @override
  SlackConversation rebuild(void Function(SlackConversationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SlackConversationBuilder toBuilder() =>
      SlackConversationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SlackConversation &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        wholeName == other.wholeName &&
        email == other.email &&
        title == other.title;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, wholeName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SlackConversation')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('wholeName', wholeName)
          ..add('email', email)
          ..add('title', title))
        .toString();
  }
}

class SlackConversationBuilder
    implements Builder<SlackConversation, SlackConversationBuilder> {
  _$SlackConversation? _$v;

  SlackConversationType? _type;
  SlackConversationType? get type => _$this._type;
  set type(SlackConversationType? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _wholeName;
  String? get wholeName => _$this._wholeName;
  set wholeName(String? wholeName) => _$this._wholeName = wholeName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  SlackConversationBuilder() {
    SlackConversation._defaults(this);
  }

  SlackConversationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _name = $v.name;
      _wholeName = $v.wholeName;
      _email = $v.email;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SlackConversation other) {
    _$v = other as _$SlackConversation;
  }

  @override
  void update(void Function(SlackConversationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SlackConversation build() => _build();

  _$SlackConversation _build() {
    final _$result =
        _$v ??
        _$SlackConversation._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'SlackConversation',
            'type',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'SlackConversation',
            'id',
          ),
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'SlackConversation',
            'name',
          ),
          wholeName: wholeName,
          email: email,
          title: title,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
