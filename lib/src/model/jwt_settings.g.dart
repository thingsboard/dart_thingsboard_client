// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_settings.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JwtSettings extends JwtSettings {
  @override
  final int? tokenExpirationTime;
  @override
  final int? refreshTokenExpTime;
  @override
  final String? tokenIssuer;
  @override
  final String? tokenSigningKey;

  factory _$JwtSettings([void Function(JwtSettingsBuilder)? updates]) =>
      (JwtSettingsBuilder()..update(updates))._build();

  _$JwtSettings._({
    this.tokenExpirationTime,
    this.refreshTokenExpTime,
    this.tokenIssuer,
    this.tokenSigningKey,
  }) : super._();
  @override
  JwtSettings rebuild(void Function(JwtSettingsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JwtSettingsBuilder toBuilder() => JwtSettingsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JwtSettings &&
        tokenExpirationTime == other.tokenExpirationTime &&
        refreshTokenExpTime == other.refreshTokenExpTime &&
        tokenIssuer == other.tokenIssuer &&
        tokenSigningKey == other.tokenSigningKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenExpirationTime.hashCode);
    _$hash = $jc(_$hash, refreshTokenExpTime.hashCode);
    _$hash = $jc(_$hash, tokenIssuer.hashCode);
    _$hash = $jc(_$hash, tokenSigningKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'JwtSettings')
          ..add('tokenExpirationTime', tokenExpirationTime)
          ..add('refreshTokenExpTime', refreshTokenExpTime)
          ..add('tokenIssuer', tokenIssuer)
          ..add('tokenSigningKey', tokenSigningKey))
        .toString();
  }
}

class JwtSettingsBuilder implements Builder<JwtSettings, JwtSettingsBuilder> {
  _$JwtSettings? _$v;

  int? _tokenExpirationTime;
  int? get tokenExpirationTime => _$this._tokenExpirationTime;
  set tokenExpirationTime(int? tokenExpirationTime) =>
      _$this._tokenExpirationTime = tokenExpirationTime;

  int? _refreshTokenExpTime;
  int? get refreshTokenExpTime => _$this._refreshTokenExpTime;
  set refreshTokenExpTime(int? refreshTokenExpTime) =>
      _$this._refreshTokenExpTime = refreshTokenExpTime;

  String? _tokenIssuer;
  String? get tokenIssuer => _$this._tokenIssuer;
  set tokenIssuer(String? tokenIssuer) => _$this._tokenIssuer = tokenIssuer;

  String? _tokenSigningKey;
  String? get tokenSigningKey => _$this._tokenSigningKey;
  set tokenSigningKey(String? tokenSigningKey) =>
      _$this._tokenSigningKey = tokenSigningKey;

  JwtSettingsBuilder() {
    JwtSettings._defaults(this);
  }

  JwtSettingsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenExpirationTime = $v.tokenExpirationTime;
      _refreshTokenExpTime = $v.refreshTokenExpTime;
      _tokenIssuer = $v.tokenIssuer;
      _tokenSigningKey = $v.tokenSigningKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JwtSettings other) {
    _$v = other as _$JwtSettings;
  }

  @override
  void update(void Function(JwtSettingsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JwtSettings build() => _build();

  _$JwtSettings _build() {
    final _$result =
        _$v ??
        _$JwtSettings._(
          tokenExpirationTime: tokenExpirationTime,
          refreshTokenExpTime: refreshTokenExpTime,
          tokenIssuer: tokenIssuer,
          tokenSigningKey: tokenSigningKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
