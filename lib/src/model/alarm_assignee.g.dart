// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_assignee.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmAssignee extends AlarmAssignee {
  @override
  final UserId? id;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;

  factory _$AlarmAssignee([void Function(AlarmAssigneeBuilder)? updates]) =>
      (AlarmAssigneeBuilder()..update(updates))._build();

  _$AlarmAssignee._({this.id, this.firstName, this.lastName, this.email})
    : super._();
  @override
  AlarmAssignee rebuild(void Function(AlarmAssigneeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmAssigneeBuilder toBuilder() => AlarmAssigneeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmAssignee &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmAssignee')
          ..add('id', id)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email))
        .toString();
  }
}

class AlarmAssigneeBuilder
    implements Builder<AlarmAssignee, AlarmAssigneeBuilder> {
  _$AlarmAssignee? _$v;

  UserIdBuilder? _id;
  UserIdBuilder get id => _$this._id ??= UserIdBuilder();
  set id(UserIdBuilder? id) => _$this._id = id;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  AlarmAssigneeBuilder() {
    AlarmAssignee._defaults(this);
  }

  AlarmAssigneeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmAssignee other) {
    _$v = other as _$AlarmAssignee;
  }

  @override
  void update(void Function(AlarmAssigneeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmAssignee build() => _build();

  _$AlarmAssignee _build() {
    _$AlarmAssignee _$result;
    try {
      _$result =
          _$v ??
          _$AlarmAssignee._(
            id: _id?.build(),
            firstName: firstName,
            lastName: lastName,
            email: email,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmAssignee',
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
