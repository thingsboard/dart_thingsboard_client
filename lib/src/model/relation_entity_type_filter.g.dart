// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relation_entity_type_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RelationEntityTypeFilter extends RelationEntityTypeFilter {
  @override
  final String? relationType;
  @override
  final BuiltList<EntityType>? entityTypes;
  @override
  final bool? negate;

  factory _$RelationEntityTypeFilter([
    void Function(RelationEntityTypeFilterBuilder)? updates,
  ]) => (RelationEntityTypeFilterBuilder()..update(updates))._build();

  _$RelationEntityTypeFilter._({
    this.relationType,
    this.entityTypes,
    this.negate,
  }) : super._();
  @override
  RelationEntityTypeFilter rebuild(
    void Function(RelationEntityTypeFilterBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RelationEntityTypeFilterBuilder toBuilder() =>
      RelationEntityTypeFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelationEntityTypeFilter &&
        relationType == other.relationType &&
        entityTypes == other.entityTypes &&
        negate == other.negate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, entityTypes.hashCode);
    _$hash = $jc(_$hash, negate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RelationEntityTypeFilter')
          ..add('relationType', relationType)
          ..add('entityTypes', entityTypes)
          ..add('negate', negate))
        .toString();
  }
}

class RelationEntityTypeFilterBuilder
    implements
        Builder<RelationEntityTypeFilter, RelationEntityTypeFilterBuilder> {
  _$RelationEntityTypeFilter? _$v;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(String? relationType) => _$this._relationType = relationType;

  ListBuilder<EntityType>? _entityTypes;
  ListBuilder<EntityType> get entityTypes =>
      _$this._entityTypes ??= ListBuilder<EntityType>();
  set entityTypes(ListBuilder<EntityType>? entityTypes) =>
      _$this._entityTypes = entityTypes;

  bool? _negate;
  bool? get negate => _$this._negate;
  set negate(bool? negate) => _$this._negate = negate;

  RelationEntityTypeFilterBuilder() {
    RelationEntityTypeFilter._defaults(this);
  }

  RelationEntityTypeFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _relationType = $v.relationType;
      _entityTypes = $v.entityTypes?.toBuilder();
      _negate = $v.negate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelationEntityTypeFilter other) {
    _$v = other as _$RelationEntityTypeFilter;
  }

  @override
  void update(void Function(RelationEntityTypeFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RelationEntityTypeFilter build() => _build();

  _$RelationEntityTypeFilter _build() {
    _$RelationEntityTypeFilter _$result;
    try {
      _$result =
          _$v ??
          _$RelationEntityTypeFilter._(
            relationType: relationType,
            entityTypes: _entityTypes?.build(),
            negate: negate,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityTypes';
        _entityTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RelationEntityTypeFilter',
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
