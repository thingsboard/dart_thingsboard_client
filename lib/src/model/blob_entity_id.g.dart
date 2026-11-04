// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blob_entity_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BlobEntityId extends BlobEntityId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$BlobEntityId([void Function(BlobEntityIdBuilder)? updates]) =>
      (BlobEntityIdBuilder()..update(updates))._build();

  _$BlobEntityId._({required this.entityType, required this.id}) : super._();
  @override
  BlobEntityId rebuild(void Function(BlobEntityIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlobEntityIdBuilder toBuilder() => BlobEntityIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlobEntityId &&
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
    return (newBuiltValueToStringHelper(r'BlobEntityId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class BlobEntityIdBuilder
    implements Builder<BlobEntityId, BlobEntityIdBuilder>, EntityIdBuilder {
  _$BlobEntityId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  BlobEntityIdBuilder() {
    BlobEntityId._defaults(this);
  }

  BlobEntityIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant BlobEntityId other) {
    _$v = other as _$BlobEntityId;
  }

  @override
  void update(void Function(BlobEntityIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlobEntityId build() => _build();

  _$BlobEntityId _build() {
    final _$result =
        _$v ??
        _$BlobEntityId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'BlobEntityId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'BlobEntityId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
