// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_users_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AllUsersFilter extends AllUsersFilter {
  @override
  final String type;

  factory _$AllUsersFilter([void Function(AllUsersFilterBuilder)? updates]) =>
      (AllUsersFilterBuilder()..update(updates))._build();

  _$AllUsersFilter._({required this.type}) : super._();
  @override
  AllUsersFilter rebuild(void Function(AllUsersFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllUsersFilterBuilder toBuilder() => AllUsersFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllUsersFilter && type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AllUsersFilter',
    )..add('type', type)).toString();
  }
}

class AllUsersFilterBuilder
    implements
        Builder<AllUsersFilter, AllUsersFilterBuilder>,
        UsersFilterBuilder {
  _$AllUsersFilter? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  AllUsersFilterBuilder() {
    AllUsersFilter._defaults(this);
  }

  AllUsersFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AllUsersFilter other) {
    _$v = other as _$AllUsersFilter;
  }

  @override
  void update(void Function(AllUsersFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AllUsersFilter build() => _build();

  _$AllUsersFilter _build() {
    final _$result =
        _$v ??
        _$AllUsersFilter._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'AllUsersFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
