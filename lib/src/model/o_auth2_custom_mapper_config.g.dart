// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_custom_mapper_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2CustomMapperConfig extends OAuth2CustomMapperConfig {
  @override
  final String? url;
  @override
  final String? username;
  @override
  final String? password;
  @override
  final bool? sendToken;

  factory _$OAuth2CustomMapperConfig([
    void Function(OAuth2CustomMapperConfigBuilder)? updates,
  ]) => (OAuth2CustomMapperConfigBuilder()..update(updates))._build();

  _$OAuth2CustomMapperConfig._({
    this.url,
    this.username,
    this.password,
    this.sendToken,
  }) : super._();
  @override
  OAuth2CustomMapperConfig rebuild(
    void Function(OAuth2CustomMapperConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OAuth2CustomMapperConfigBuilder toBuilder() =>
      OAuth2CustomMapperConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2CustomMapperConfig &&
        url == other.url &&
        username == other.username &&
        password == other.password &&
        sendToken == other.sendToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, sendToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2CustomMapperConfig')
          ..add('url', url)
          ..add('username', username)
          ..add('password', password)
          ..add('sendToken', sendToken))
        .toString();
  }
}

class OAuth2CustomMapperConfigBuilder
    implements
        Builder<OAuth2CustomMapperConfig, OAuth2CustomMapperConfigBuilder> {
  _$OAuth2CustomMapperConfig? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _sendToken;
  bool? get sendToken => _$this._sendToken;
  set sendToken(bool? sendToken) => _$this._sendToken = sendToken;

  OAuth2CustomMapperConfigBuilder() {
    OAuth2CustomMapperConfig._defaults(this);
  }

  OAuth2CustomMapperConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _username = $v.username;
      _password = $v.password;
      _sendToken = $v.sendToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2CustomMapperConfig other) {
    _$v = other as _$OAuth2CustomMapperConfig;
  }

  @override
  void update(void Function(OAuth2CustomMapperConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2CustomMapperConfig build() => _build();

  _$OAuth2CustomMapperConfig _build() {
    final _$result =
        _$v ??
        _$OAuth2CustomMapperConfig._(
          url: url,
          username: username,
          password: password,
          sendToken: sendToken,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
