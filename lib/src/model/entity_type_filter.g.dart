// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_type_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityTypeFilter extends EntityTypeFilter {
  @override
  final EntityType? entityType;
  @override
  final String type;

  factory _$EntityTypeFilter([
    void Function(EntityTypeFilterBuilder)? updates,
  ]) => (EntityTypeFilterBuilder()..update(updates))._build();

  _$EntityTypeFilter._({this.entityType, required this.type}) : super._();
  @override
  EntityTypeFilter rebuild(void Function(EntityTypeFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityTypeFilterBuilder toBuilder() =>
      EntityTypeFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityTypeFilter &&
        entityType == other.entityType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityTypeFilter')
          ..add('entityType', entityType)
          ..add('type', type))
        .toString();
  }
}

class EntityTypeFilterBuilder
    implements
        Builder<EntityTypeFilter, EntityTypeFilterBuilder>,
        EntityFilterBuilder {
  _$EntityTypeFilter? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityTypeFilterBuilder() {
    EntityTypeFilter._defaults(this);
  }

  EntityTypeFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityTypeFilter other) {
    _$v = other as _$EntityTypeFilter;
  }

  @override
  void update(void Function(EntityTypeFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityTypeFilter build() => _build();

  _$EntityTypeFilter _build() {
    final _$result =
        _$v ??
        _$EntityTypeFilter._(
          entityType: entityType,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'EntityTypeFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
