// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activate_user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivateUserRequest extends ActivateUserRequest {
  @override
  final String? activateToken;
  @override
  final String? password;

  factory _$ActivateUserRequest([
    void Function(ActivateUserRequestBuilder)? updates,
  ]) => (ActivateUserRequestBuilder()..update(updates))._build();

  _$ActivateUserRequest._({this.activateToken, this.password}) : super._();
  @override
  ActivateUserRequest rebuild(
    void Function(ActivateUserRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ActivateUserRequestBuilder toBuilder() =>
      ActivateUserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivateUserRequest &&
        activateToken == other.activateToken &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activateToken.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivateUserRequest')
          ..add('activateToken', activateToken)
          ..add('password', password))
        .toString();
  }
}

class ActivateUserRequestBuilder
    implements Builder<ActivateUserRequest, ActivateUserRequestBuilder> {
  _$ActivateUserRequest? _$v;

  String? _activateToken;
  String? get activateToken => _$this._activateToken;
  set activateToken(String? activateToken) =>
      _$this._activateToken = activateToken;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ActivateUserRequestBuilder() {
    ActivateUserRequest._defaults(this);
  }

  ActivateUserRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activateToken = $v.activateToken;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivateUserRequest other) {
    _$v = other as _$ActivateUserRequest;
  }

  @override
  void update(void Function(ActivateUserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivateUserRequest build() => _build();

  _$ActivateUserRequest _build() {
    final _$result =
        _$v ??
        _$ActivateUserRequest._(
          activateToken: activateToken,
          password: password,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
