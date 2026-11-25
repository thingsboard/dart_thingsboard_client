// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login401_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Login401Response extends Login401Response {
  @override
  final OneOf oneOf;

  factory _$Login401Response([
    void Function(Login401ResponseBuilder)? updates,
  ]) => (Login401ResponseBuilder()..update(updates))._build();

  _$Login401Response._({required this.oneOf}) : super._();
  @override
  Login401Response rebuild(void Function(Login401ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Login401ResponseBuilder toBuilder() =>
      Login401ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login401Response && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'Login401Response',
    )..add('oneOf', oneOf)).toString();
  }
}

class Login401ResponseBuilder
    implements Builder<Login401Response, Login401ResponseBuilder> {
  _$Login401Response? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  Login401ResponseBuilder() {
    Login401Response._defaults(this);
  }

  Login401ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login401Response other) {
    _$v = other as _$Login401Response;
  }

  @override
  void update(void Function(Login401ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Login401Response build() => _build();

  _$Login401Response _build() {
    final _$result =
        _$v ??
        _$Login401Response._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
            oneOf,
            r'Login401Response',
            'oneOf',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
