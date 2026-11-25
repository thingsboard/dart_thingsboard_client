// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_name_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityNameFilter extends EntityNameFilter {
  @override
  final EntityType? entityType;
  @override
  final String? entityNameFilter;
  @override
  final String type;

  factory _$EntityNameFilter([
    void Function(EntityNameFilterBuilder)? updates,
  ]) => (EntityNameFilterBuilder()..update(updates))._build();

  _$EntityNameFilter._({
    this.entityType,
    this.entityNameFilter,
    required this.type,
  }) : super._();
  @override
  EntityNameFilter rebuild(void Function(EntityNameFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityNameFilterBuilder toBuilder() =>
      EntityNameFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityNameFilter &&
        entityType == other.entityType &&
        entityNameFilter == other.entityNameFilter &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, entityNameFilter.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityNameFilter')
          ..add('entityType', entityType)
          ..add('entityNameFilter', entityNameFilter)
          ..add('type', type))
        .toString();
  }
}

class EntityNameFilterBuilder
    implements
        Builder<EntityNameFilter, EntityNameFilterBuilder>,
        EntityFilterBuilder {
  _$EntityNameFilter? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _entityNameFilter;
  String? get entityNameFilter => _$this._entityNameFilter;
  set entityNameFilter(covariant String? entityNameFilter) =>
      _$this._entityNameFilter = entityNameFilter;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityNameFilterBuilder() {
    EntityNameFilter._defaults(this);
  }

  EntityNameFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _entityNameFilter = $v.entityNameFilter;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityNameFilter other) {
    _$v = other as _$EntityNameFilter;
  }

  @override
  void update(void Function(EntityNameFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityNameFilter build() => _build();

  _$EntityNameFilter _build() {
    final _$result =
        _$v ??
        _$EntityNameFilter._(
          entityType: entityType,
          entityNameFilter: entityNameFilter,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'EntityNameFilter',
            'type',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
