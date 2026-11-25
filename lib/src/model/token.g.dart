// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Token extends Token {
  @override
  final String token;
  @override
  final String type;

  factory _$Token([void Function(TokenBuilder)? updates]) =>
      (TokenBuilder()..update(updates))._build();

  _$Token._({required this.token, required this.type}) : super._();
  @override
  Token rebuild(void Function(TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenBuilder toBuilder() => TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Token && token == other.token && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Token')
          ..add('token', token)
          ..add('type', type))
        .toString();
  }
}

class TokenBuilder implements Builder<Token, TokenBuilder>, OllamaAuthBuilder {
  _$Token? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(covariant String? token) => _$this._token = token;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  TokenBuilder() {
    Token._defaults(this);
  }

  TokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Token other) {
    _$v = other as _$Token;
  }

  @override
  void update(void Function(TokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Token build() => _build();

  _$Token _build() {
    final _$result =
        _$v ??
        _$Token._(
          token: BuiltValueNullFieldError.checkNotNull(
            token,
            r'Token',
            'token',
          ),
          type: BuiltValueNullFieldError.checkNotNull(type, r'Token', 'type'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
