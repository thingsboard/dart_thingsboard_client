// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_comment_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmCommentInfo extends AlarmCommentInfo {
  @override
  final AlarmCommentId? id;
  @override
  final int? createdTime;
  @override
  final AlarmId? alarmId;
  @override
  final UserId? userId;
  @override
  final AlarmCommentType? type;
  @override
  final JsonObject? comment;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? email;
  @override
  final String? name;

  factory _$AlarmCommentInfo([
    void Function(AlarmCommentInfoBuilder)? updates,
  ]) => (AlarmCommentInfoBuilder()..update(updates))._build();

  _$AlarmCommentInfo._({
    this.id,
    this.createdTime,
    this.alarmId,
    this.userId,
    this.type,
    this.comment,
    this.firstName,
    this.lastName,
    this.email,
    this.name,
  }) : super._();
  @override
  AlarmCommentInfo rebuild(void Function(AlarmCommentInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmCommentInfoBuilder toBuilder() =>
      AlarmCommentInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmCommentInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        alarmId == other.alarmId &&
        userId == other.userId &&
        type == other.type &&
        comment == other.comment &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, alarmId.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, firstName.hashCode);
    _$hash = $jc(_$hash, lastName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmCommentInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('alarmId', alarmId)
          ..add('userId', userId)
          ..add('type', type)
          ..add('comment', comment)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('email', email)
          ..add('name', name))
        .toString();
  }
}

class AlarmCommentInfoBuilder
    implements Builder<AlarmCommentInfo, AlarmCommentInfoBuilder> {
  _$AlarmCommentInfo? _$v;

  AlarmCommentIdBuilder? _id;
  AlarmCommentIdBuilder get id => _$this._id ??= AlarmCommentIdBuilder();
  set id(AlarmCommentIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  AlarmIdBuilder? _alarmId;
  AlarmIdBuilder get alarmId => _$this._alarmId ??= AlarmIdBuilder();
  set alarmId(AlarmIdBuilder? alarmId) => _$this._alarmId = alarmId;

  UserIdBuilder? _userId;
  UserIdBuilder get userId => _$this._userId ??= UserIdBuilder();
  set userId(UserIdBuilder? userId) => _$this._userId = userId;

  AlarmCommentType? _type;
  AlarmCommentType? get type => _$this._type;
  set type(AlarmCommentType? type) => _$this._type = type;

  JsonObject? _comment;
  JsonObject? get comment => _$this._comment;
  set comment(JsonObject? comment) => _$this._comment = comment;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AlarmCommentInfoBuilder() {
    AlarmCommentInfo._defaults(this);
  }

  AlarmCommentInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _alarmId = $v.alarmId?.toBuilder();
      _userId = $v.userId?.toBuilder();
      _type = $v.type;
      _comment = $v.comment;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _email = $v.email;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmCommentInfo other) {
    _$v = other as _$AlarmCommentInfo;
  }

  @override
  void update(void Function(AlarmCommentInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmCommentInfo build() => _build();

  _$AlarmCommentInfo _build() {
    _$AlarmCommentInfo _$result;
    try {
      _$result =
          _$v ??
          _$AlarmCommentInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            alarmId: _alarmId?.build(),
            userId: _userId?.build(),
            type: type,
            comment: comment,
            firstName: firstName,
            lastName: lastName,
            email: email,
            name: name,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'alarmId';
        _alarmId?.build();
        _$failedField = 'userId';
        _userId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmCommentInfo',
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
