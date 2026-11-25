// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'originator_entity_owner_users_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OriginatorEntityOwnerUsersFilter
    extends OriginatorEntityOwnerUsersFilter {
  @override
  final String type;

  factory _$OriginatorEntityOwnerUsersFilter([
    void Function(OriginatorEntityOwnerUsersFilterBuilder)? updates,
  ]) => (OriginatorEntityOwnerUsersFilterBuilder()..update(updates))._build();

  _$OriginatorEntityOwnerUsersFilter._({required this.type}) : super._();
  @override
  OriginatorEntityOwnerUsersFilter rebuild(
    void Function(OriginatorEntityOwnerUsersFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OriginatorEntityOwnerUsersFilterBuilder toBuilder() =>
      OriginatorEntityOwnerUsersFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OriginatorEntityOwnerUsersFilter && type == other.type;
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
      r'OriginatorEntityOwnerUsersFilter',
    )..add('type', type)).toString();
  }
}

class OriginatorEntityOwnerUsersFilterBuilder
    implements
        Builder<
          OriginatorEntityOwnerUsersFilter,
          OriginatorEntityOwnerUsersFilterBuilder
        >,
        UsersFilterBuilder {
  _$OriginatorEntityOwnerUsersFilter? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  OriginatorEntityOwnerUsersFilterBuilder() {
    OriginatorEntityOwnerUsersFilter._defaults(this);
  }

  OriginatorEntityOwnerUsersFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant OriginatorEntityOwnerUsersFilter other) {
    _$v = other as _$OriginatorEntityOwnerUsersFilter;
  }

  @override
  void update(void Function(OriginatorEntityOwnerUsersFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OriginatorEntityOwnerUsersFilter build() => _build();

  _$OriginatorEntityOwnerUsersFilter _build() {
    final _$result =
        _$v ??
        _$OriginatorEntityOwnerUsersFilter._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'OriginatorEntityOwnerUsersFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
