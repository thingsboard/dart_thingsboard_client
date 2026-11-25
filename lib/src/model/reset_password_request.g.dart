// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPasswordRequest extends ResetPasswordRequest {
  @override
  final String? resetToken;
  @override
  final String? password;

  factory _$ResetPasswordRequest([
    void Function(ResetPasswordRequestBuilder)? updates,
  ]) => (ResetPasswordRequestBuilder()..update(updates))._build();

  _$ResetPasswordRequest._({this.resetToken, this.password}) : super._();
  @override
  ResetPasswordRequest rebuild(
    void Function(ResetPasswordRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResetPasswordRequestBuilder toBuilder() =>
      ResetPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordRequest &&
        resetToken == other.resetToken &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, resetToken.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResetPasswordRequest')
          ..add('resetToken', resetToken)
          ..add('password', password))
        .toString();
  }
}

class ResetPasswordRequestBuilder
    implements Builder<ResetPasswordRequest, ResetPasswordRequestBuilder> {
  _$ResetPasswordRequest? _$v;

  String? _resetToken;
  String? get resetToken => _$this._resetToken;
  set resetToken(String? resetToken) => _$this._resetToken = resetToken;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ResetPasswordRequestBuilder() {
    ResetPasswordRequest._defaults(this);
  }

  ResetPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resetToken = $v.resetToken;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPasswordRequest other) {
    _$v = other as _$ResetPasswordRequest;
  }

  @override
  void update(void Function(ResetPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPasswordRequest build() => _build();

  _$ResetPasswordRequest _build() {
    final _$result =
        _$v ??
        _$ResetPasswordRequest._(resetToken: resetToken, password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
