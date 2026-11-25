// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_group_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityGroupId extends EntityGroupId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$EntityGroupId([void Function(EntityGroupIdBuilder)? updates]) =>
      (EntityGroupIdBuilder()..update(updates))._build();

  _$EntityGroupId._({required this.entityType, required this.id}) : super._();
  @override
  EntityGroupId rebuild(void Function(EntityGroupIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityGroupIdBuilder toBuilder() => EntityGroupIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityGroupId &&
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
    return (newBuiltValueToStringHelper(r'EntityGroupId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class EntityGroupIdBuilder
    implements Builder<EntityGroupId, EntityGroupIdBuilder>, EntityIdBuilder {
  _$EntityGroupId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  EntityGroupIdBuilder() {
    EntityGroupId._defaults(this);
  }

  EntityGroupIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityGroupId other) {
    _$v = other as _$EntityGroupId;
  }

  @override
  void update(void Function(EntityGroupIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityGroupId build() => _build();

  _$EntityGroupId _build() {
    final _$result =
        _$v ??
        _$EntityGroupId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'EntityGroupId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'EntityGroupId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
