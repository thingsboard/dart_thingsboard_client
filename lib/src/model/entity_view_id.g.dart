// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_view_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityViewId extends EntityViewId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$EntityViewId([void Function(EntityViewIdBuilder)? updates]) =>
      (EntityViewIdBuilder()..update(updates))._build();

  _$EntityViewId._({required this.entityType, required this.id}) : super._();
  @override
  EntityViewId rebuild(void Function(EntityViewIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityViewIdBuilder toBuilder() => EntityViewIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityViewId &&
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
    return (newBuiltValueToStringHelper(r'EntityViewId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class EntityViewIdBuilder
    implements Builder<EntityViewId, EntityViewIdBuilder>, EntityIdBuilder {
  _$EntityViewId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  EntityViewIdBuilder() {
    EntityViewId._defaults(this);
  }

  EntityViewIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityViewId other) {
    _$v = other as _$EntityViewId;
  }

  @override
  void update(void Function(EntityViewIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityViewId build() => _build();

  _$EntityViewId _build() {
    final _$result =
        _$v ??
        _$EntityViewId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'EntityViewId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'EntityViewId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
