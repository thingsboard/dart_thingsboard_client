// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_email_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResetPasswordEmailRequest extends ResetPasswordEmailRequest {
  @override
  final String? email;

  factory _$ResetPasswordEmailRequest([
    void Function(ResetPasswordEmailRequestBuilder)? updates,
  ]) => (ResetPasswordEmailRequestBuilder()..update(updates))._build();

  _$ResetPasswordEmailRequest._({this.email}) : super._();
  @override
  ResetPasswordEmailRequest rebuild(
    void Function(ResetPasswordEmailRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ResetPasswordEmailRequestBuilder toBuilder() =>
      ResetPasswordEmailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResetPasswordEmailRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'ResetPasswordEmailRequest',
    )..add('email', email)).toString();
  }
}

class ResetPasswordEmailRequestBuilder
    implements
        Builder<ResetPasswordEmailRequest, ResetPasswordEmailRequestBuilder> {
  _$ResetPasswordEmailRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ResetPasswordEmailRequestBuilder() {
    ResetPasswordEmailRequest._defaults(this);
  }

  ResetPasswordEmailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResetPasswordEmailRequest other) {
    _$v = other as _$ResetPasswordEmailRequest;
  }

  @override
  void update(void Function(ResetPasswordEmailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResetPasswordEmailRequest build() => _build();

  _$ResetPasswordEmailRequest _build() {
    final _$result = _$v ?? _$ResetPasswordEmailRequest._(email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
