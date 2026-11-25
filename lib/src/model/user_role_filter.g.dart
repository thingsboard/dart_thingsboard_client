// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_role_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserRoleFilter extends UserRoleFilter {
  @override
  final BuiltList<String> rolesIds;
  @override
  final String type;

  factory _$UserRoleFilter([void Function(UserRoleFilterBuilder)? updates]) =>
      (UserRoleFilterBuilder()..update(updates))._build();

  _$UserRoleFilter._({required this.rolesIds, required this.type}) : super._();
  @override
  UserRoleFilter rebuild(void Function(UserRoleFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRoleFilterBuilder toBuilder() => UserRoleFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRoleFilter &&
        rolesIds == other.rolesIds &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rolesIds.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRoleFilter')
          ..add('rolesIds', rolesIds)
          ..add('type', type))
        .toString();
  }
}

class UserRoleFilterBuilder
    implements
        Builder<UserRoleFilter, UserRoleFilterBuilder>,
        UsersFilterBuilder {
  _$UserRoleFilter? _$v;

  ListBuilder<String>? _rolesIds;
  ListBuilder<String> get rolesIds =>
      _$this._rolesIds ??= ListBuilder<String>();
  set rolesIds(covariant ListBuilder<String>? rolesIds) =>
      _$this._rolesIds = rolesIds;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  UserRoleFilterBuilder() {
    UserRoleFilter._defaults(this);
  }

  UserRoleFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rolesIds = $v.rolesIds.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant UserRoleFilter other) {
    _$v = other as _$UserRoleFilter;
  }

  @override
  void update(void Function(UserRoleFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRoleFilter build() => _build();

  _$UserRoleFilter _build() {
    _$UserRoleFilter _$result;
    try {
      _$result =
          _$v ??
          _$UserRoleFilter._(
            rolesIds: rolesIds.build(),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'UserRoleFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'rolesIds';
        rolesIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserRoleFilter',
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
