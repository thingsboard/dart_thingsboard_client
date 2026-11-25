// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tenant_profile_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TenantProfileId extends TenantProfileId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$TenantProfileId([void Function(TenantProfileIdBuilder)? updates]) =>
      (TenantProfileIdBuilder()..update(updates))._build();

  _$TenantProfileId._({required this.entityType, required this.id}) : super._();
  @override
  TenantProfileId rebuild(void Function(TenantProfileIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TenantProfileIdBuilder toBuilder() => TenantProfileIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TenantProfileId &&
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
    return (newBuiltValueToStringHelper(r'TenantProfileId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class TenantProfileIdBuilder
    implements
        Builder<TenantProfileId, TenantProfileIdBuilder>,
        EntityIdBuilder {
  _$TenantProfileId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  TenantProfileIdBuilder() {
    TenantProfileId._defaults(this);
  }

  TenantProfileIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant TenantProfileId other) {
    _$v = other as _$TenantProfileId;
  }

  @override
  void update(void Function(TenantProfileIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TenantProfileId build() => _build();

  _$TenantProfileId _build() {
    final _$result =
        _$v ??
        _$TenantProfileId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'TenantProfileId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'TenantProfileId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
