// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_activation_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserActivationLink extends UserActivationLink {
  @override
  final String? value;
  @override
  final int? ttlMs;

  factory _$UserActivationLink([
    void Function(UserActivationLinkBuilder)? updates,
  ]) => (UserActivationLinkBuilder()..update(updates))._build();

  _$UserActivationLink._({this.value, this.ttlMs}) : super._();
  @override
  UserActivationLink rebuild(
    void Function(UserActivationLinkBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserActivationLinkBuilder toBuilder() =>
      UserActivationLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserActivationLink &&
        value == other.value &&
        ttlMs == other.ttlMs;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, ttlMs.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserActivationLink')
          ..add('value', value)
          ..add('ttlMs', ttlMs))
        .toString();
  }
}

class UserActivationLinkBuilder
    implements Builder<UserActivationLink, UserActivationLinkBuilder> {
  _$UserActivationLink? _$v;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  int? _ttlMs;
  int? get ttlMs => _$this._ttlMs;
  set ttlMs(int? ttlMs) => _$this._ttlMs = ttlMs;

  UserActivationLinkBuilder() {
    UserActivationLink._defaults(this);
  }

  UserActivationLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _ttlMs = $v.ttlMs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserActivationLink other) {
    _$v = other as _$UserActivationLink;
  }

  @override
  void update(void Function(UserActivationLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserActivationLink build() => _build();

  _$UserActivationLink _build() {
    final _$result = _$v ?? _$UserActivationLink._(value: value, ttlMs: ttlMs);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
