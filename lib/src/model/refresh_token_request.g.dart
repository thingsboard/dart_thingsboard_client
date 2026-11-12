// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshTokenRequest extends RefreshTokenRequest {
  @override
  final String? refreshToken;

  factory _$RefreshTokenRequest([
    void Function(RefreshTokenRequestBuilder)? updates,
  ]) => (RefreshTokenRequestBuilder()..update(updates))._build();

  _$RefreshTokenRequest._({this.refreshToken}) : super._();
  @override
  RefreshTokenRequest rebuild(
    void Function(RefreshTokenRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RefreshTokenRequestBuilder toBuilder() =>
      RefreshTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenRequest && refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RefreshTokenRequest',
    )..add('refreshToken', refreshToken)).toString();
  }
}

class RefreshTokenRequestBuilder
    implements Builder<RefreshTokenRequest, RefreshTokenRequestBuilder> {
  _$RefreshTokenRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  RefreshTokenRequestBuilder() {
    RefreshTokenRequest._defaults(this);
  }

  RefreshTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenRequest other) {
    _$v = other as _$RefreshTokenRequest;
  }

  @override
  void update(void Function(RefreshTokenRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RefreshTokenRequest build() => _build();

  _$RefreshTokenRequest _build() {
    final _$result = _$v ?? _$RefreshTokenRequest._(refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
