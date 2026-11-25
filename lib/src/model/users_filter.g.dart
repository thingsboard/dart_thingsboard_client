// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class UsersFilterBuilder {
  void replace(UsersFilter other);
  void update(void Function(UsersFilterBuilder) updates);
  String? get type;
  set type(String? type);
}

class _$$UsersFilter extends $UsersFilter {
  @override
  final String type;

  factory _$$UsersFilter([void Function($UsersFilterBuilder)? updates]) =>
      ($UsersFilterBuilder()..update(updates))._build();

  _$$UsersFilter._({required this.type}) : super._();
  @override
  $UsersFilter rebuild(void Function($UsersFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $UsersFilterBuilder toBuilder() => $UsersFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $UsersFilter && type == other.type;
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
      r'$UsersFilter',
    )..add('type', type)).toString();
  }
}

class $UsersFilterBuilder
    implements Builder<$UsersFilter, $UsersFilterBuilder>, UsersFilterBuilder {
  _$$UsersFilter? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  $UsersFilterBuilder() {
    $UsersFilter._defaults(this);
  }

  $UsersFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $UsersFilter other) {
    _$v = other as _$$UsersFilter;
  }

  @override
  void update(void Function($UsersFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $UsersFilter build() => _build();

  _$$UsersFilter _build() {
    final _$result =
        _$v ??
        _$$UsersFilter._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$UsersFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
