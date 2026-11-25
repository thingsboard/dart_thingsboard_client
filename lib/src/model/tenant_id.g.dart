// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantId extends TenantId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$TenantId([void Function(TenantIdBuilder)? updates]) =>
      (TenantIdBuilder()..update(updates))._build();

  _$TenantId._({required this.entityType, required this.id}) : super._();
  @override
  TenantId rebuild(void Function(TenantIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantIdBuilder toBuilder() => TenantIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantId &&
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
    return (newBuiltValueToStringHelper(r'TenantId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class TenantIdBuilder
    implements Builder<TenantId, TenantIdBuilder>, EntityIdBuilder {
  _$TenantId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  TenantIdBuilder() {
    TenantId._defaults(this);
  }

  TenantIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TenantId other) {
    _$v = other as _$TenantId;
  }

  @override
  void update(void Function(TenantIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantId build() => _build();

  _$TenantId _build() {
    final _$result =
        _$v ??
        _$TenantId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'TenantId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'TenantId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
