// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relations_query_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelationsQueryFilter extends RelationsQueryFilter {
  @override
  final BuiltSet<String>? multiRootEntityIds;
  @override
  final int? maxLevel;
  @override
  final bool? fetchLastLevelOnly;
  @override
  final AliasEntityId? defaultStateEntity;
  @override
  final bool? multiRoot;
  @override
  final EntityType? multiRootEntitiesType;
  @override
  final bool? negate;
  @override
  final bool? rootStateEntity;
  @override
  final BuiltList<RelationEntityTypeFilter>? filters;
  @override
  final AliasEntityId? rootEntity;
  @override
  final EntitySearchDirection? direction;
  @override
  final String type;

  factory _$RelationsQueryFilter([
    void Function(RelationsQueryFilterBuilder)? updates,
  ]) => (RelationsQueryFilterBuilder()..update(updates))._build();

  _$RelationsQueryFilter._({
    this.multiRootEntityIds,
    this.maxLevel,
    this.fetchLastLevelOnly,
    this.defaultStateEntity,
    this.multiRoot,
    this.multiRootEntitiesType,
    this.negate,
    this.rootStateEntity,
    this.filters,
    this.rootEntity,
    this.direction,
    required this.type,
  }) : super._();
  @override
  RelationsQueryFilter rebuild(
    void Function(RelationsQueryFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RelationsQueryFilterBuilder toBuilder() =>
      RelationsQueryFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationsQueryFilter &&
        multiRootEntityIds == other.multiRootEntityIds &&
        maxLevel == other.maxLevel &&
        fetchLastLevelOnly == other.fetchLastLevelOnly &&
        defaultStateEntity == other.defaultStateEntity &&
        multiRoot == other.multiRoot &&
        multiRootEntitiesType == other.multiRootEntitiesType &&
        negate == other.negate &&
        rootStateEntity == other.rootStateEntity &&
        filters == other.filters &&
        rootEntity == other.rootEntity &&
        direction == other.direction &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, multiRootEntityIds.hashCode);
    _$hash = $jc(_$hash, maxLevel.hashCode);
    _$hash = $jc(_$hash, fetchLastLevelOnly.hashCode);
    _$hash = $jc(_$hash, defaultStateEntity.hashCode);
    _$hash = $jc(_$hash, multiRoot.hashCode);
    _$hash = $jc(_$hash, multiRootEntitiesType.hashCode);
    _$hash = $jc(_$hash, negate.hashCode);
    _$hash = $jc(_$hash, rootStateEntity.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, rootEntity.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationsQueryFilter')
          ..add('multiRootEntityIds', multiRootEntityIds)
          ..add('maxLevel', maxLevel)
          ..add('fetchLastLevelOnly', fetchLastLevelOnly)
          ..add('defaultStateEntity', defaultStateEntity)
          ..add('multiRoot', multiRoot)
          ..add('multiRootEntitiesType', multiRootEntitiesType)
          ..add('negate', negate)
          ..add('rootStateEntity', rootStateEntity)
          ..add('filters', filters)
          ..add('rootEntity', rootEntity)
          ..add('direction', direction)
          ..add('type', type))
        .toString();
  }
}

class RelationsQueryFilterBuilder
    implements
        Builder<RelationsQueryFilter, RelationsQueryFilterBuilder>,
        EntityFilterBuilder {
  _$RelationsQueryFilter? _$v;

  SetBuilder<String>? _multiRootEntityIds;
  SetBuilder<String> get multiRootEntityIds =>
      _$this._multiRootEntityIds ??= SetBuilder<String>();
  set multiRootEntityIds(covariant SetBuilder<String>? multiRootEntityIds) =>
      _$this._multiRootEntityIds = multiRootEntityIds;

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

  bool? _multiRoot;
  bool? get multiRoot => _$this._multiRoot;
  set multiRoot(covariant bool? multiRoot) => _$this._multiRoot = multiRoot;

  EntityType? _multiRootEntitiesType;
  EntityType? get multiRootEntitiesType => _$this._multiRootEntitiesType;
  set multiRootEntitiesType(covariant EntityType? multiRootEntitiesType) =>
      _$this._multiRootEntitiesType = multiRootEntitiesType;

  bool? _negate;
  bool? get negate => _$this._negate;
  set negate(covariant bool? negate) => _$this._negate = negate;

  bool? _rootStateEntity;
  bool? get rootStateEntity => _$this._rootStateEntity;
  set rootStateEntity(covariant bool? rootStateEntity) =>
      _$this._rootStateEntity = rootStateEntity;

  ListBuilder<RelationEntityTypeFilter>? _filters;
  ListBuilder<RelationEntityTypeFilter> get filters =>
      _$this._filters ??= ListBuilder<RelationEntityTypeFilter>();
  set filters(covariant ListBuilder<RelationEntityTypeFilter>? filters) =>
      _$this._filters = filters;

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

  RelationsQueryFilterBuilder() {
    RelationsQueryFilter._defaults(this);
  }

  RelationsQueryFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _multiRootEntityIds = $v.multiRootEntityIds?.toBuilder();
      _maxLevel = $v.maxLevel;
      _fetchLastLevelOnly = $v.fetchLastLevelOnly;
      _defaultStateEntity = $v.defaultStateEntity?.toBuilder();
      _multiRoot = $v.multiRoot;
      _multiRootEntitiesType = $v.multiRootEntitiesType;
      _negate = $v.negate;
      _rootStateEntity = $v.rootStateEntity;
      _filters = $v.filters?.toBuilder();
      _rootEntity = $v.rootEntity?.toBuilder();
      _direction = $v.direction;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant RelationsQueryFilter other) {
    _$v = other as _$RelationsQueryFilter;
  }

  @override
  void update(void Function(RelationsQueryFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationsQueryFilter build() => _build();

  _$RelationsQueryFilter _build() {
    _$RelationsQueryFilter _$result;
    try {
      _$result =
          _$v ??
          _$RelationsQueryFilter._(
            multiRootEntityIds: _multiRootEntityIds?.build(),
            maxLevel: maxLevel,
            fetchLastLevelOnly: fetchLastLevelOnly,
            defaultStateEntity: _defaultStateEntity?.build(),
            multiRoot: multiRoot,
            multiRootEntitiesType: multiRootEntitiesType,
            negate: negate,
            rootStateEntity: rootStateEntity,
            filters: _filters?.build(),
            rootEntity: _rootEntity?.build(),
            direction: direction,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'RelationsQueryFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'multiRootEntityIds';
        _multiRootEntityIds?.build();

        _$failedField = 'defaultStateEntity';
        _defaultStateEntity?.build();

        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'rootEntity';
        _rootEntity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RelationsQueryFilter',
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
