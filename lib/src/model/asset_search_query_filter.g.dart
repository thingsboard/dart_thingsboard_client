// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_search_query_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssetSearchQueryFilter extends AssetSearchQueryFilter {
  @override
  final String? relationType;
  @override
  final int? maxLevel;
  @override
  final BuiltList<String>? assetTypes;
  @override
  final bool? fetchLastLevelOnly;
  @override
  final AliasEntityId? defaultStateEntity;
  @override
  final bool? rootStateEntity;
  @override
  final AliasEntityId? rootEntity;
  @override
  final EntitySearchDirection? direction;
  @override
  final String type;

  factory _$AssetSearchQueryFilter([
    void Function(AssetSearchQueryFilterBuilder)? updates,
  ]) => (AssetSearchQueryFilterBuilder()..update(updates))._build();

  _$AssetSearchQueryFilter._({
    this.relationType,
    this.maxLevel,
    this.assetTypes,
    this.fetchLastLevelOnly,
    this.defaultStateEntity,
    this.rootStateEntity,
    this.rootEntity,
    this.direction,
    required this.type,
  }) : super._();
  @override
  AssetSearchQueryFilter rebuild(
    void Function(AssetSearchQueryFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AssetSearchQueryFilterBuilder toBuilder() =>
      AssetSearchQueryFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssetSearchQueryFilter &&
        relationType == other.relationType &&
        maxLevel == other.maxLevel &&
        assetTypes == other.assetTypes &&
        fetchLastLevelOnly == other.fetchLastLevelOnly &&
        defaultStateEntity == other.defaultStateEntity &&
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
    _$hash = $jc(_$hash, assetTypes.hashCode);
    _$hash = $jc(_$hash, fetchLastLevelOnly.hashCode);
    _$hash = $jc(_$hash, defaultStateEntity.hashCode);
    _$hash = $jc(_$hash, rootStateEntity.hashCode);
    _$hash = $jc(_$hash, rootEntity.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AssetSearchQueryFilter')
          ..add('relationType', relationType)
          ..add('maxLevel', maxLevel)
          ..add('assetTypes', assetTypes)
          ..add('fetchLastLevelOnly', fetchLastLevelOnly)
          ..add('defaultStateEntity', defaultStateEntity)
          ..add('rootStateEntity', rootStateEntity)
          ..add('rootEntity', rootEntity)
          ..add('direction', direction)
          ..add('type', type))
        .toString();
  }
}

class AssetSearchQueryFilterBuilder
    implements
        Builder<AssetSearchQueryFilter, AssetSearchQueryFilterBuilder>,
        EntityFilterBuilder {
  _$AssetSearchQueryFilter? _$v;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(covariant String? relationType) =>
      _$this._relationType = relationType;

  int? _maxLevel;
  int? get maxLevel => _$this._maxLevel;
  set maxLevel(covariant int? maxLevel) => _$this._maxLevel = maxLevel;

  ListBuilder<String>? _assetTypes;
  ListBuilder<String> get assetTypes =>
      _$this._assetTypes ??= ListBuilder<String>();
  set assetTypes(covariant ListBuilder<String>? assetTypes) =>
      _$this._assetTypes = assetTypes;

  bool? _fetchLastLevelOnly;
  bool? get fetchLastLevelOnly => _$this._fetchLastLevelOnly;
  set fetchLastLevelOnly(covariant bool? fetchLastLevelOnly) =>
      _$this._fetchLastLevelOnly = fetchLastLevelOnly;

  AliasEntityIdBuilder? _defaultStateEntity;
  AliasEntityIdBuilder get defaultStateEntity =>
      _$this._defaultStateEntity ??= AliasEntityIdBuilder();
  set defaultStateEntity(covariant AliasEntityIdBuilder? defaultStateEntity) =>
      _$this._defaultStateEntity = defaultStateEntity;

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

  AssetSearchQueryFilterBuilder() {
    AssetSearchQueryFilter._defaults(this);
  }

  AssetSearchQueryFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relationType = $v.relationType;
      _maxLevel = $v.maxLevel;
      _assetTypes = $v.assetTypes?.toBuilder();
      _fetchLastLevelOnly = $v.fetchLastLevelOnly;
      _defaultStateEntity = $v.defaultStateEntity?.toBuilder();
      _rootStateEntity = $v.rootStateEntity;
      _rootEntity = $v.rootEntity?.toBuilder();
      _direction = $v.direction;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AssetSearchQueryFilter other) {
    _$v = other as _$AssetSearchQueryFilter;
  }

  @override
  void update(void Function(AssetSearchQueryFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssetSearchQueryFilter build() => _build();

  _$AssetSearchQueryFilter _build() {
    _$AssetSearchQueryFilter _$result;
    try {
      _$result =
          _$v ??
          _$AssetSearchQueryFilter._(
            relationType: relationType,
            maxLevel: maxLevel,
            assetTypes: _assetTypes?.build(),
            fetchLastLevelOnly: fetchLastLevelOnly,
            defaultStateEntity: _defaultStateEntity?.build(),
            rootStateEntity: rootStateEntity,
            rootEntity: _rootEntity?.build(),
            direction: direction,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AssetSearchQueryFilter',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assetTypes';
        _assetTypes?.build();

        _$failedField = 'defaultStateEntity';
        _defaultStateEntity?.build();

        _$failedField = 'rootEntity';
        _rootEntity?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AssetSearchQueryFilter',
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
