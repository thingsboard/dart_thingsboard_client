// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_view_type_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityViewTypeFilter extends EntityViewTypeFilter {
  @override
  final String? entityViewNameFilter;
  @override
  final BuiltList<String>? entityViewTypes;
  @override
  final String? entityViewType;
  @override
  final String type;

  factory _$EntityViewTypeFilter([
    void Function(EntityViewTypeFilterBuilder)? updates,
  ]) => (EntityViewTypeFilterBuilder()..update(updates))._build();

  _$EntityViewTypeFilter._({
    this.entityViewNameFilter,
    this.entityViewTypes,
    this.entityViewType,
    required this.type,
  }) : super._();
  @override
  EntityViewTypeFilter rebuild(
    void Function(EntityViewTypeFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityViewTypeFilterBuilder toBuilder() =>
      EntityViewTypeFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityViewTypeFilter &&
        entityViewNameFilter == other.entityViewNameFilter &&
        entityViewTypes == other.entityViewTypes &&
        entityViewType == other.entityViewType &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityViewNameFilter.hashCode);
    _$hash = $jc(_$hash, entityViewTypes.hashCode);
    _$hash = $jc(_$hash, entityViewType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityViewTypeFilter')
          ..add('entityViewNameFilter', entityViewNameFilter)
          ..add('entityViewTypes', entityViewTypes)
          ..add('entityViewType', entityViewType)
          ..add('type', type))
        .toString();
  }
}

class EntityViewTypeFilterBuilder
    implements
        Builder<EntityViewTypeFilter, EntityViewTypeFilterBuilder>,
        EntityFilterBuilder {
  _$EntityViewTypeFilter? _$v;

  String? _entityViewNameFilter;
  String? get entityViewNameFilter => _$this._entityViewNameFilter;
  set entityViewNameFilter(covariant String? entityViewNameFilter) =>
      _$this._entityViewNameFilter = entityViewNameFilter;

  ListBuilder<String>? _entityViewTypes;
  ListBuilder<String> get entityViewTypes =>
      _$this._entityViewTypes ??= ListBuilder<String>();
  set entityViewTypes(covariant ListBuilder<String>? entityViewTypes) =>
      _$this._entityViewTypes = entityViewTypes;

  String? _entityViewType;
  String? get entityViewType => _$this._entityViewType;
  set entityViewType(covariant String? entityViewType) =>
      _$this._entityViewType = entityViewType;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityViewTypeFilterBuilder() {
    EntityViewTypeFilter._defaults(this);
  }

  EntityViewTypeFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityViewNameFilter = $v.entityViewNameFilter;
      _entityViewTypes = $v.entityViewTypes?.toBuilder();
      _entityViewType = $v.entityViewType;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityViewTypeFilter other) {
    _$v = other as _$EntityViewTypeFilter;
  }

  @override
  void update(void Function(EntityViewTypeFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityViewTypeFilter build() => _build();

  _$EntityViewTypeFilter _build() {
    _$EntityViewTypeFilter _$result;
    try {
      _$result =
          _$v ??
          _$EntityViewTypeFilter._(
            entityViewNameFilter: entityViewNameFilter,
            entityViewTypes: _entityViewTypes?.build(),
            entityViewType: entityViewType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityViewTypeFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityViewTypes';
        _entityViewTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityViewTypeFilter',
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
