// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_permission_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GroupPermissionId extends GroupPermissionId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$GroupPermissionId([
    void Function(GroupPermissionIdBuilder)? updates,
  ]) => (GroupPermissionIdBuilder()..update(updates))._build();

  _$GroupPermissionId._({required this.entityType, required this.id})
    : super._();
  @override
  GroupPermissionId rebuild(void Function(GroupPermissionIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupPermissionIdBuilder toBuilder() =>
      GroupPermissionIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupPermissionId &&
        entityType == other.entityType &&
        id == other.id;
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
    return (newBuiltValueToStringHelper(r'GroupPermissionId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class GroupPermissionIdBuilder
    implements
        Builder<GroupPermissionId, GroupPermissionIdBuilder>,
        EntityIdBuilder {
  _$GroupPermissionId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  GroupPermissionIdBuilder() {
    GroupPermissionId._defaults(this);
  }

  GroupPermissionIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant GroupPermissionId other) {
    _$v = other as _$GroupPermissionId;
  }

  @override
  void update(void Function(GroupPermissionIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupPermissionId build() => _build();

  _$GroupPermissionId _build() {
    final _$result =
        _$v ??
        _$GroupPermissionId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'GroupPermissionId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'GroupPermissionId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
