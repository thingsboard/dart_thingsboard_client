// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_setup_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SystemSetupRequest extends SystemSetupRequest {
  @override
  final String email;
  @override
  final String password;
  @override
  final bool? loadDemo;

  factory _$SystemSetupRequest([
    void Function(SystemSetupRequestBuilder)? updates,
  ]) => (SystemSetupRequestBuilder()..update(updates))._build();

  _$SystemSetupRequest._({
    required this.email,
    required this.password,
    this.loadDemo,
  }) : super._();
  @override
  SystemSetupRequest rebuild(
    void Function(SystemSetupRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SystemSetupRequestBuilder toBuilder() =>
      SystemSetupRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SystemSetupRequest &&
        email == other.email &&
        password == other.password &&
        loadDemo == other.loadDemo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, loadDemo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SystemSetupRequest')
          ..add('email', email)
          ..add('password', password)
          ..add('loadDemo', loadDemo))
        .toString();
  }
}

class SystemSetupRequestBuilder
    implements Builder<SystemSetupRequest, SystemSetupRequestBuilder> {
  _$SystemSetupRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _loadDemo;
  bool? get loadDemo => _$this._loadDemo;
  set loadDemo(bool? loadDemo) => _$this._loadDemo = loadDemo;

  SystemSetupRequestBuilder() {
    SystemSetupRequest._defaults(this);
  }

  SystemSetupRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _loadDemo = $v.loadDemo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SystemSetupRequest other) {
    _$v = other as _$SystemSetupRequest;
  }

  @override
  void update(void Function(SystemSetupRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SystemSetupRequest build() => _build();

  _$SystemSetupRequest _build() {
    final _$result =
        _$v ??
        _$SystemSetupRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
            email,
            r'SystemSetupRequest',
            'email',
          ),
          password: BuiltValueNullFieldError.checkNotNull(
            password,
            r'SystemSetupRequest',
            'password',
          ),
          loadDemo: loadDemo,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
