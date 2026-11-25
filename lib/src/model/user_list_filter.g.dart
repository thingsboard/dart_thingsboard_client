// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserListFilter extends UserListFilter {
  @override
  final BuiltList<String> usersIds;
  @override
  final String type;

  factory _$UserListFilter([void Function(UserListFilterBuilder)? updates]) =>
      (UserListFilterBuilder()..update(updates))._build();

  _$UserListFilter._({required this.usersIds, required this.type}) : super._();
  @override
  UserListFilter rebuild(void Function(UserListFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserListFilterBuilder toBuilder() => UserListFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserListFilter &&
        usersIds == other.usersIds &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, usersIds.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserListFilter')
          ..add('usersIds', usersIds)
          ..add('type', type))
        .toString();
  }
}

class UserListFilterBuilder
    implements
        Builder<UserListFilter, UserListFilterBuilder>,
        UsersFilterBuilder {
  _$UserListFilter? _$v;

  ListBuilder<String>? _usersIds;
  ListBuilder<String> get usersIds =>
      _$this._usersIds ??= ListBuilder<String>();
  set usersIds(covariant ListBuilder<String>? usersIds) =>
      _$this._usersIds = usersIds;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  UserListFilterBuilder() {
    UserListFilter._defaults(this);
  }

  UserListFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _usersIds = $v.usersIds.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserListFilter other) {
    _$v = other as _$UserListFilter;
  }

  @override
  void update(void Function(UserListFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserListFilter build() => _build();

  _$UserListFilter _build() {
    _$UserListFilter _$result;
    try {
      _$result =
          _$v ??
          _$UserListFilter._(
            usersIds: usersIds.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'UserListFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'usersIds';
        usersIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserListFilter',
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
