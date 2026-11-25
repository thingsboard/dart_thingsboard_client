// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_subtype.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntitySubtype extends EntitySubtype {
  @override
  final TenantId? tenantId;
  @override
  final EntityType? entityType;
  @override
  final String? type;

  factory _$EntitySubtype([void Function(EntitySubtypeBuilder)? updates]) =>
      (EntitySubtypeBuilder()..update(updates))._build();

  _$EntitySubtype._({this.tenantId, this.entityType, this.type}) : super._();
  @override
  EntitySubtype rebuild(void Function(EntitySubtypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntitySubtypeBuilder toBuilder() => EntitySubtypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntitySubtype &&
        tenantId == other.tenantId &&
        entityType == other.entityType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntitySubtype')
          ..add('tenantId', tenantId)
          ..add('entityType', entityType)
          ..add('type', type))
        .toString();
  }
}

class EntitySubtypeBuilder
    implements Builder<EntitySubtype, EntitySubtypeBuilder> {
  _$EntitySubtype? _$v;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(EntityType? entityType) => _$this._entityType = entityType;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  EntitySubtypeBuilder() {
    EntitySubtype._defaults(this);
  }

  EntitySubtypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId?.toBuilder();
      _entityType = $v.entityType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntitySubtype other) {
    _$v = other as _$EntitySubtype;
  }

  @override
  void update(void Function(EntitySubtypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntitySubtype build() => _build();

  _$EntitySubtype _build() {
    _$EntitySubtype _$result;
    try {
      _$result =
          _$v ??
          _$EntitySubtype._(
            tenantId: _tenantId?.build(),
            entityType: entityType,
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenantId';
        _tenantId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntitySubtype',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
