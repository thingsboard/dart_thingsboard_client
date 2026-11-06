// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'role_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RoleId extends RoleId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$RoleId([void Function(RoleIdBuilder)? updates]) =>
      (RoleIdBuilder()..update(updates))._build();

  _$RoleId._({required this.entityType, required this.id}) : super._();
  @override
  RoleId rebuild(void Function(RoleIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RoleIdBuilder toBuilder() => RoleIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RoleId && entityType == other.entityType && id == other.id;
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
    return (newBuiltValueToStringHelper(r'RoleId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class RoleIdBuilder implements Builder<RoleId, RoleIdBuilder>, EntityIdBuilder {
  _$RoleId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  RoleIdBuilder() {
    RoleId._defaults(this);
  }

  RoleIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RoleId other) {
    _$v = other as _$RoleId;
  }

  @override
  void update(void Function(RoleIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RoleId build() => _build();

  _$RoleId _build() {
    final _$result =
        _$v ??
        _$RoleId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'RoleId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'RoleId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
