// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class EntityIdBuilder {
  void replace(EntityId other);
  void update(void Function(EntityIdBuilder) updates);
  EntityType? get entityType;
  set entityType(EntityType? entityType);

  String? get id;
  set id(String? id);
}

class _$$EntityId extends $EntityId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$$EntityId([void Function($EntityIdBuilder)? updates]) =>
      ($EntityIdBuilder()..update(updates))._build();

  _$$EntityId._({required this.entityType, required this.id}) : super._();
  @override
  $EntityId rebuild(void Function($EntityIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $EntityIdBuilder toBuilder() => $EntityIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $EntityId &&
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
    return (newBuiltValueToStringHelper(r'$EntityId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class $EntityIdBuilder
    implements Builder<$EntityId, $EntityIdBuilder>, EntityIdBuilder {
  _$$EntityId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  $EntityIdBuilder() {
    $EntityId._defaults(this);
  }

  $EntityIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $EntityId other) {
    _$v = other as _$$EntityId;
  }

  @override
  void update(void Function($EntityIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $EntityId build() => _build();

  _$$EntityId _build() {
    final _$result =
        _$v ??
        _$$EntityId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'$EntityId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'$EntityId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
