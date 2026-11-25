// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_view_search_query_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityViewSearchQueryFilter extends EntityViewSearchQueryFilter {
  @override
  final String? relationType;
  @override
  final int? maxLevel;
  @override
  final bool? fetchLastLevelOnly;
  @override
  final AliasEntityId? defaultStateEntity;
  @override
  final BuiltList<String>? entityViewTypes;
  @override
  final bool? rootStateEntity;
  @override
  final AliasEntityId? rootEntity;
  @override
  final EntitySearchDirection? direction;
  @override
  final String type;

  factory _$EntityViewSearchQueryFilter([
    void Function(EntityViewSearchQueryFilterBuilder)? updates,
  ]) => (EntityViewSearchQueryFilterBuilder()..update(updates))._build();

  _$EntityViewSearchQueryFilter._({
    this.relationType,
    this.maxLevel,
    this.fetchLastLevelOnly,
    this.defaultStateEntity,
    this.entityViewTypes,
    this.rootStateEntity,
    this.rootEntity,
    this.direction,
    required this.type,
  }) : super._();
  @override
  EntityViewSearchQueryFilter rebuild(
    void Function(EntityViewSearchQueryFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityViewSearchQueryFilterBuilder toBuilder() =>
      EntityViewSearchQueryFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityViewSearchQueryFilter &&
        relationType == other.relationType &&
        maxLevel == other.maxLevel &&
        fetchLastLevelOnly == other.fetchLastLevelOnly &&
        defaultStateEntity == other.defaultStateEntity &&
        entityViewTypes == other.entityViewTypes &&
        rootStateEntity == other.rootStateEntity &&
        rootEntity == other.rootEntity &&
        direction == other.direction &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, maxLevel.hashCode);
    _$hash = $jc(_$hash, fetchLastLevelOnly.hashCode);
    _$hash = $jc(_$hash, defaultStateEntity.hashCode);
    _$hash = $jc(_$hash, entityViewTypes.hashCode);
    _$hash = $jc(_$hash, rootStateEntity.hashCode);
    _$hash = $jc(_$hash, rootEntity.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityViewSearchQueryFilter')
          ..add('relationType', relationType)
          ..add('maxLevel', maxLevel)
          ..add('fetchLastLevelOnly', fetchLastLevelOnly)
          ..add('defaultStateEntity', defaultStateEntity)
          ..add('entityViewTypes', entityViewTypes)
          ..add('rootStateEntity', rootStateEntity)
          ..add('rootEntity', rootEntity)
          ..add('direction', direction)
          ..add('type', type))
        .toString();
  }
}

class EntityViewSearchQueryFilterBuilder
    implements
        Builder<
          EntityViewSearchQueryFilter,
          EntityViewSearchQueryFilterBuilder
        >,
        EntityFilterBuilder {
  _$EntityViewSearchQueryFilter? _$v;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(covariant String? relationType) =>
      _$this._relationType = relationType;

  int? _maxLevel;
  int? get maxLevel => _$this._maxLevel;
  set maxLevel(covariant int? maxLevel) => _$this._maxLevel = maxLevel;

  bool? _fetchLastLevelOnly;
  bool? get fetchLastLevelOnly => _$this._fetchLastLevelOnly;
  set fetchLastLevelOnly(covariant bool? fetchLastLevelOnly) =>
      _$this._fetchLastLevelOnly = fetchLastLevelOnly;

  AliasEntityIdBuilder? _defaultStateEntity;
  AliasEntityIdBuilder get defaultStateEntity =>
      _$this._defaultStateEntity ??= AliasEntityIdBuilder();
  set defaultStateEntity(covariant AliasEntityIdBuilder? defaultStateEntity) =>
      _$this._defaultStateEntity = defaultStateEntity;

  ListBuilder<String>? _entityViewTypes;
  ListBuilder<String> get entityViewTypes =>
      _$this._entityViewTypes ??= ListBuilder<String>();
  set entityViewTypes(covariant ListBuilder<String>? entityViewTypes) =>
      _$this._entityViewTypes = entityViewTypes;

  bool? _rootStateEntity;
  bool? get rootStateEntity => _$this._rootStateEntity;
  set rootStateEntity(covariant bool? rootStateEntity) =>
      _$this._rootStateEntity = rootStateEntity;

  AliasEntityIdBuilder? _rootEntity;
  AliasEntityIdBuilder get rootEntity =>
      _$this._rootEntity ??= AliasEntityIdBuilder();
  set rootEntity(covariant AliasEntityIdBuilder? rootEntity) =>
      _$this._rootEntity = rootEntity;

  EntitySearchDirection? _direction;
  EntitySearchDirection? get direction => _$this._direction;
  set direction(covariant EntitySearchDirection? direction) =>
      _$this._direction = direction;

  String? _type;
  String? get type => _$this._type;
  set type(covariant String? type) => _$this._type = type;

  EntityViewSearchQueryFilterBuilder() {
    EntityViewSearchQueryFilter._defaults(this);
  }

  EntityViewSearchQueryFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relationType = $v.relationType;
      _maxLevel = $v.maxLevel;
      _fetchLastLevelOnly = $v.fetchLastLevelOnly;
      _defaultStateEntity = $v.defaultStateEntity?.toBuilder();
      _entityViewTypes = $v.entityViewTypes?.toBuilder();
      _rootStateEntity = $v.rootStateEntity;
      _rootEntity = $v.rootEntity?.toBuilder();
      _direction = $v.direction;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant EntityViewSearchQueryFilter other) {
    _$v = other as _$EntityViewSearchQueryFilter;
  }

  @override
  void update(void Function(EntityViewSearchQueryFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityViewSearchQueryFilter build() => _build();

  _$EntityViewSearchQueryFilter _build() {
    _$EntityViewSearchQueryFilter _$result;
    try {
      _$result =
          _$v ??
          _$EntityViewSearchQueryFilter._(
            relationType: relationType,
            maxLevel: maxLevel,
            fetchLastLevelOnly: fetchLastLevelOnly,
            defaultStateEntity: _defaultStateEntity?.build(),
            entityViewTypes: _entityViewTypes?.build(),
            rootStateEntity: rootStateEntity,
            rootEntity: _rootEntity?.build(),
            direction: direction,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EntityViewSearchQueryFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'defaultStateEntity';
        _defaultStateEntity?.build();
        _$failedField = 'entityViewTypes';
        _entityViewTypes?.build();

        _$failedField = 'rootEntity';
        _rootEntity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityViewSearchQueryFilter',
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
