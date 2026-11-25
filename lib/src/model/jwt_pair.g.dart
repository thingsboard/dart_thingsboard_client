// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_pair.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JwtPair extends JwtPair {
  @override
  final String? token;
  @override
  final String? refreshToken;
  @override
  final Authority? scope;

  factory _$JwtPair([void Function(JwtPairBuilder)? updates]) =>
      (JwtPairBuilder()..update(updates))._build();

  _$JwtPair._({this.token, this.refreshToken, this.scope}) : super._();
  @override
  JwtPair rebuild(void Function(JwtPairBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtPairBuilder toBuilder() => JwtPairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtPair &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        scope == other.scope;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, scope.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JwtPair')
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('scope', scope))
        .toString();
  }
}

class JwtPairBuilder implements Builder<JwtPair, JwtPairBuilder> {
  _$JwtPair? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  Authority? _scope;
  Authority? get scope => _$this._scope;
  set scope(Authority? scope) => _$this._scope = scope;

  JwtPairBuilder() {
    JwtPair._defaults(this);
  }

  JwtPairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _scope = $v.scope;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtPair other) {
    _$v = other as _$JwtPair;
  }

  @override
  void update(void Function(JwtPairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JwtPair build() => _build();

  _$JwtPair _build() {
    final _$result =
        _$v ??
        _$JwtPair._(token: token, refreshToken: refreshToken, scope: scope);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
