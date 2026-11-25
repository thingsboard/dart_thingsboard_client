// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_type_load_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityTypeLoadResult extends EntityTypeLoadResult {
  @override
  final EntityType? entityType;
  @override
  final int? created;
  @override
  final int? updated;
  @override
  final int? deleted;
  @override
  final int? groupsCreated;
  @override
  final int? groupsUpdated;
  @override
  final int? groupsDeleted;

  factory _$EntityTypeLoadResult([
    void Function(EntityTypeLoadResultBuilder)? updates,
  ]) => (EntityTypeLoadResultBuilder()..update(updates))._build();

  _$EntityTypeLoadResult._({
    this.entityType,
    this.created,
    this.updated,
    this.deleted,
    this.groupsCreated,
    this.groupsUpdated,
    this.groupsDeleted,
  }) : super._();
  @override
  EntityTypeLoadResult rebuild(
    void Function(EntityTypeLoadResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityTypeLoadResultBuilder toBuilder() =>
      EntityTypeLoadResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTypeLoadResult &&
        entityType == other.entityType &&
        created == other.created &&
        updated == other.updated &&
        deleted == other.deleted &&
        groupsCreated == other.groupsCreated &&
        groupsUpdated == other.groupsUpdated &&
        groupsDeleted == other.groupsDeleted;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, created.hashCode);
    _$hash = $jc(_$hash, updated.hashCode);
    _$hash = $jc(_$hash, deleted.hashCode);
    _$hash = $jc(_$hash, groupsCreated.hashCode);
    _$hash = $jc(_$hash, groupsUpdated.hashCode);
    _$hash = $jc(_$hash, groupsDeleted.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityTypeLoadResult')
          ..add('entityType', entityType)
          ..add('created', created)
          ..add('updated', updated)
          ..add('deleted', deleted)
          ..add('groupsCreated', groupsCreated)
          ..add('groupsUpdated', groupsUpdated)
          ..add('groupsDeleted', groupsDeleted))
        .toString();
  }
}

class EntityTypeLoadResultBuilder
    implements Builder<EntityTypeLoadResult, EntityTypeLoadResultBuilder> {
  _$EntityTypeLoadResult? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(EntityType? entityType) => _$this._entityType = entityType;

  int? _created;
  int? get created => _$this._created;
  set created(int? created) => _$this._created = created;

  int? _updated;
  int? get updated => _$this._updated;
  set updated(int? updated) => _$this._updated = updated;

  int? _deleted;
  int? get deleted => _$this._deleted;
  set deleted(int? deleted) => _$this._deleted = deleted;

  int? _groupsCreated;
  int? get groupsCreated => _$this._groupsCreated;
  set groupsCreated(int? groupsCreated) =>
      _$this._groupsCreated = groupsCreated;

  int? _groupsUpdated;
  int? get groupsUpdated => _$this._groupsUpdated;
  set groupsUpdated(int? groupsUpdated) =>
      _$this._groupsUpdated = groupsUpdated;

  int? _groupsDeleted;
  int? get groupsDeleted => _$this._groupsDeleted;
  set groupsDeleted(int? groupsDeleted) =>
      _$this._groupsDeleted = groupsDeleted;

  EntityTypeLoadResultBuilder() {
    EntityTypeLoadResult._defaults(this);
  }

  EntityTypeLoadResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _created = $v.created;
      _updated = $v.updated;
      _deleted = $v.deleted;
      _groupsCreated = $v.groupsCreated;
      _groupsUpdated = $v.groupsUpdated;
      _groupsDeleted = $v.groupsDeleted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityTypeLoadResult other) {
    _$v = other as _$EntityTypeLoadResult;
  }

  @override
  void update(void Function(EntityTypeLoadResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityTypeLoadResult build() => _build();

  _$EntityTypeLoadResult _build() {
    final _$result =
        _$v ??
        _$EntityTypeLoadResult._(
          entityType: entityType,
          created: created,
          updated: updated,
          deleted: deleted,
          groupsCreated: groupsCreated,
          groupsUpdated: groupsUpdated,
          groupsDeleted: groupsDeleted,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
