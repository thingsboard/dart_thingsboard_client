// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeId extends EdgeId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$EdgeId([void Function(EdgeIdBuilder)? updates]) =>
      (EdgeIdBuilder()..update(updates))._build();

  _$EdgeId._({required this.entityType, required this.id}) : super._();
  @override
  EdgeId rebuild(void Function(EdgeIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeIdBuilder toBuilder() => EdgeIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeId && entityType == other.entityType && id == other.id;
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
    return (newBuiltValueToStringHelper(r'EdgeId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class EdgeIdBuilder implements Builder<EdgeId, EdgeIdBuilder>, EntityIdBuilder {
  _$EdgeId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  EdgeIdBuilder() {
    EdgeId._defaults(this);
  }

  EdgeIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EdgeId other) {
    _$v = other as _$EdgeId;
  }

  @override
  void update(void Function(EdgeIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeId build() => _build();

  _$EdgeId _build() {
    final _$result =
        _$v ??
        _$EdgeId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'EdgeId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'EdgeId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
