// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserId extends UserId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$UserId([void Function(UserIdBuilder)? updates]) =>
      (UserIdBuilder()..update(updates))._build();

  _$UserId._({required this.entityType, required this.id}) : super._();
  @override
  UserId rebuild(void Function(UserIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserIdBuilder toBuilder() => UserIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserId && entityType == other.entityType && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class UserIdBuilder implements Builder<UserId, UserIdBuilder>, EntityIdBuilder {
  _$UserId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  UserIdBuilder() {
    UserId._defaults(this);
  }

  UserIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserId other) {
    _$v = other as _$UserId;
  }

  @override
  void update(void Function(UserIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserId build() => _build();

  _$UserId _build() {
    final _$result =
        _$v ??
        _$UserId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'UserId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'UserId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
