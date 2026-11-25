// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relations_search_parameters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelationsSearchParameters extends RelationsSearchParameters {
  @override
  final String? rootId;
  @override
  final EntityType? rootType;
  @override
  final EntitySearchDirection? direction;
  @override
  final RelationTypeGroup? relationTypeGroup;
  @override
  final int? maxLevel;
  @override
  final bool? fetchLastLevelOnly;

  factory _$RelationsSearchParameters([
    void Function(RelationsSearchParametersBuilder)? updates,
  ]) => (RelationsSearchParametersBuilder()..update(updates))._build();

  _$RelationsSearchParameters._({
    this.rootId,
    this.rootType,
    this.direction,
    this.relationTypeGroup,
    this.maxLevel,
    this.fetchLastLevelOnly,
  }) : super._();
  @override
  RelationsSearchParameters rebuild(
    void Function(RelationsSearchParametersBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RelationsSearchParametersBuilder toBuilder() =>
      RelationsSearchParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationsSearchParameters &&
        rootId == other.rootId &&
        rootType == other.rootType &&
        direction == other.direction &&
        relationTypeGroup == other.relationTypeGroup &&
        maxLevel == other.maxLevel &&
        fetchLastLevelOnly == other.fetchLastLevelOnly;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rootId.hashCode);
    _$hash = $jc(_$hash, rootType.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jc(_$hash, relationTypeGroup.hashCode);
    _$hash = $jc(_$hash, maxLevel.hashCode);
    _$hash = $jc(_$hash, fetchLastLevelOnly.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationsSearchParameters')
          ..add('rootId', rootId)
          ..add('rootType', rootType)
          ..add('direction', direction)
          ..add('relationTypeGroup', relationTypeGroup)
          ..add('maxLevel', maxLevel)
          ..add('fetchLastLevelOnly', fetchLastLevelOnly))
        .toString();
  }
}

class RelationsSearchParametersBuilder
    implements
        Builder<RelationsSearchParameters, RelationsSearchParametersBuilder> {
  _$RelationsSearchParameters? _$v;

  String? _rootId;
  String? get rootId => _$this._rootId;
  set rootId(String? rootId) => _$this._rootId = rootId;

  EntityType? _rootType;
  EntityType? get rootType => _$this._rootType;
  set rootType(EntityType? rootType) => _$this._rootType = rootType;

  EntitySearchDirection? _direction;
  EntitySearchDirection? get direction => _$this._direction;
  set direction(EntitySearchDirection? direction) =>
      _$this._direction = direction;

  RelationTypeGroup? _relationTypeGroup;
  RelationTypeGroup? get relationTypeGroup => _$this._relationTypeGroup;
  set relationTypeGroup(RelationTypeGroup? relationTypeGroup) =>
      _$this._relationTypeGroup = relationTypeGroup;

  int? _maxLevel;
  int? get maxLevel => _$this._maxLevel;
  set maxLevel(int? maxLevel) => _$this._maxLevel = maxLevel;

  bool? _fetchLastLevelOnly;
  bool? get fetchLastLevelOnly => _$this._fetchLastLevelOnly;
  set fetchLastLevelOnly(bool? fetchLastLevelOnly) =>
      _$this._fetchLastLevelOnly = fetchLastLevelOnly;

  RelationsSearchParametersBuilder() {
    RelationsSearchParameters._defaults(this);
  }

  RelationsSearchParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rootId = $v.rootId;
      _rootType = $v.rootType;
      _direction = $v.direction;
      _relationTypeGroup = $v.relationTypeGroup;
      _maxLevel = $v.maxLevel;
      _fetchLastLevelOnly = $v.fetchLastLevelOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationsSearchParameters other) {
    _$v = other as _$RelationsSearchParameters;
  }

  @override
  void update(void Function(RelationsSearchParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationsSearchParameters build() => _build();

  _$RelationsSearchParameters _build() {
    final _$result =
        _$v ??
        _$RelationsSearchParameters._(
          rootId: rootId,
          rootType: rootType,
          direction: direction,
          relationTypeGroup: relationTypeGroup,
          maxLevel: maxLevel,
          fetchLastLevelOnly: fetchLastLevelOnly,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
