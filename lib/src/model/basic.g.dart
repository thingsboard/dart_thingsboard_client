// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Basic extends Basic {
  @override
  final String password;
  @override
  final String username;
  @override
  final String type;

  factory _$Basic([void Function(BasicBuilder)? updates]) =>
      (BasicBuilder()..update(updates))._build();

  _$Basic._({
    required this.password,
    required this.username,
    required this.type,
  }) : super._();
  @override
  Basic rebuild(void Function(BasicBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasicBuilder toBuilder() => BasicBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Basic &&
        password == other.password &&
        username == other.username &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Basic')
          ..add('password', password)
          ..add('username', username)
          ..add('type', type))
        .toString();
  }
}

class BasicBuilder implements Builder<Basic, BasicBuilder>, OllamaAuthBuilder {
  _$Basic? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(covariant String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(covariant String? username) => _$this._username = username;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  BasicBuilder() {
    Basic._defaults(this);
  }

  BasicBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _username = $v.username;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Basic other) {
    _$v = other as _$Basic;
  }

  @override
  void update(void Function(BasicBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Basic build() => _build();

  _$Basic _build() {
    final _$result =
        _$v ??
        _$Basic._(
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'Basic',
            'password',
          ),
          username: BuiltValueNullFieldError.checkNotNull(
            username,
            r'Basic',
            'username',
          ),
          type: BuiltValueNullFieldError.checkNotNull(type, r'Basic', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
