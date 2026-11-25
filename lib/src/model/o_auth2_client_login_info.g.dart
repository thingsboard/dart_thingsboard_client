// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'o_auth2_client_login_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OAuth2ClientLoginInfo extends OAuth2ClientLoginInfo {
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final String? url;

  factory _$OAuth2ClientLoginInfo([
    void Function(OAuth2ClientLoginInfoBuilder)? updates,
  ]) => (OAuth2ClientLoginInfoBuilder()..update(updates))._build();

  _$OAuth2ClientLoginInfo._({this.name, this.icon, this.url}) : super._();
  @override
  OAuth2ClientLoginInfo rebuild(
    void Function(OAuth2ClientLoginInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OAuth2ClientLoginInfoBuilder toBuilder() =>
      OAuth2ClientLoginInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OAuth2ClientLoginInfo &&
        name == other.name &&
        icon == other.icon &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OAuth2ClientLoginInfo')
          ..add('name', name)
          ..add('icon', icon)
          ..add('url', url))
        .toString();
  }
}

class OAuth2ClientLoginInfoBuilder
    implements Builder<OAuth2ClientLoginInfo, OAuth2ClientLoginInfoBuilder> {
  _$OAuth2ClientLoginInfo? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  OAuth2ClientLoginInfoBuilder() {
    OAuth2ClientLoginInfo._defaults(this);
  }

  OAuth2ClientLoginInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _icon = $v.icon;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OAuth2ClientLoginInfo other) {
    _$v = other as _$OAuth2ClientLoginInfo;
  }

  @override
  void update(void Function(OAuth2ClientLoginInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OAuth2ClientLoginInfo build() => _build();

  _$OAuth2ClientLoginInfo _build() {
    final _$result =
        _$v ?? _$OAuth2ClientLoginInfo._(name: name, icon: icon, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
