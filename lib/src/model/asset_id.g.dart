// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetId extends AssetId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AssetId([void Function(AssetIdBuilder)? updates]) =>
      (AssetIdBuilder()..update(updates))._build();

  _$AssetId._({required this.entityType, required this.id}) : super._();
  @override
  AssetId rebuild(void Function(AssetIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssetIdBuilder toBuilder() => AssetIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetId && entityType == other.entityType && id == other.id;
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
    return (newBuiltValueToStringHelper(r'AssetId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AssetIdBuilder
    implements Builder<AssetId, AssetIdBuilder>, EntityIdBuilder {
  _$AssetId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AssetIdBuilder() {
    AssetId._defaults(this);
  }

  AssetIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AssetId other) {
    _$v = other as _$AssetId;
  }

  @override
  void update(void Function(AssetIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetId build() => _build();

  _$AssetId _build() {
    final _$result =
        _$v ??
        _$AssetId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AssetId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'AssetId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
