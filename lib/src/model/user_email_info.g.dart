// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_email_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserEmailInfo extends UserEmailInfo {
  @override
  final UserId? id;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;

  factory _$UserEmailInfo([void Function(UserEmailInfoBuilder)? updates]) =>
      (UserEmailInfoBuilder()..update(updates))._build();

  _$UserEmailInfo._({this.id, this.email, this.firstName, this.lastName})
    : super._();
  @override
  UserEmailInfo rebuild(void Function(UserEmailInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserEmailInfoBuilder toBuilder() => UserEmailInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserEmailInfo &&
        id == other.id &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserEmailInfo')
          ..add('id', id)
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName))
        .toString();
  }
}

class UserEmailInfoBuilder
    implements Builder<UserEmailInfo, UserEmailInfoBuilder> {
  _$UserEmailInfo? _$v;

  UserIdBuilder? _id;
  UserIdBuilder get id => _$this._id ??= UserIdBuilder();
  set id(UserIdBuilder? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  UserEmailInfoBuilder() {
    UserEmailInfo._defaults(this);
  }

  UserEmailInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserEmailInfo other) {
    _$v = other as _$UserEmailInfo;
  }

  @override
  void update(void Function(UserEmailInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserEmailInfo build() => _build();

  _$UserEmailInfo _build() {
    _$UserEmailInfo _$result;
    try {
      _$result =
          _$v ??
          _$UserEmailInfo._(
            id: _id?.build(),
            email: email,
            firstName: firstName,
            lastName: lastName,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserEmailInfo',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
