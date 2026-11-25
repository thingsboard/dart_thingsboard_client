// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_group_list_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserGroupListFilter extends UserGroupListFilter {
  @override
  final BuiltList<String> groupsIds;
  @override
  final String type;

  factory _$UserGroupListFilter([
    void Function(UserGroupListFilterBuilder)? updates,
  ]) => (UserGroupListFilterBuilder()..update(updates))._build();

  _$UserGroupListFilter._({required this.groupsIds, required this.type})
    : super._();
  @override
  UserGroupListFilter rebuild(
    void Function(UserGroupListFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserGroupListFilterBuilder toBuilder() =>
      UserGroupListFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserGroupListFilter &&
        groupsIds == other.groupsIds &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupsIds.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserGroupListFilter')
          ..add('groupsIds', groupsIds)
          ..add('type', type))
        .toString();
  }
}

class UserGroupListFilterBuilder
    implements
        Builder<UserGroupListFilter, UserGroupListFilterBuilder>,
        UsersFilterBuilder {
  _$UserGroupListFilter? _$v;

  ListBuilder<String>? _groupsIds;
  ListBuilder<String> get groupsIds =>
      _$this._groupsIds ??= ListBuilder<String>();
  set groupsIds(covariant ListBuilder<String>? groupsIds) =>
      _$this._groupsIds = groupsIds;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  UserGroupListFilterBuilder() {
    UserGroupListFilter._defaults(this);
  }

  UserGroupListFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupsIds = $v.groupsIds.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserGroupListFilter other) {
    _$v = other as _$UserGroupListFilter;
  }

  @override
  void update(void Function(UserGroupListFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserGroupListFilter build() => _build();

  _$UserGroupListFilter _build() {
    _$UserGroupListFilter _$result;
    try {
      _$result =
          _$v ??
          _$UserGroupListFilter._(
            groupsIds: groupsIds.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'UserGroupListFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groupsIds';
        groupsIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserGroupListFilter',
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
