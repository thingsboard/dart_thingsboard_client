// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_relations_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityRelationsQuery extends EntityRelationsQuery {
  @override
  final RelationsSearchParameters? parameters;
  @override
  final BuiltList<RelationEntityTypeFilter>? filters;

  factory _$EntityRelationsQuery([
    void Function(EntityRelationsQueryBuilder)? updates,
  ]) => (EntityRelationsQueryBuilder()..update(updates))._build();

  _$EntityRelationsQuery._({this.parameters, this.filters}) : super._();
  @override
  EntityRelationsQuery rebuild(
    void Function(EntityRelationsQueryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityRelationsQueryBuilder toBuilder() =>
      EntityRelationsQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityRelationsQuery &&
        parameters == other.parameters &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityRelationsQuery')
          ..add('parameters', parameters)
          ..add('filters', filters))
        .toString();
  }
}

class EntityRelationsQueryBuilder
    implements Builder<EntityRelationsQuery, EntityRelationsQueryBuilder> {
  _$EntityRelationsQuery? _$v;

  RelationsSearchParametersBuilder? _parameters;
  RelationsSearchParametersBuilder get parameters =>
      _$this._parameters ??= RelationsSearchParametersBuilder();
  set parameters(RelationsSearchParametersBuilder? parameters) =>
      _$this._parameters = parameters;

  ListBuilder<RelationEntityTypeFilter>? _filters;
  ListBuilder<RelationEntityTypeFilter> get filters =>
      _$this._filters ??= ListBuilder<RelationEntityTypeFilter>();
  set filters(ListBuilder<RelationEntityTypeFilter>? filters) =>
      _$this._filters = filters;

  EntityRelationsQueryBuilder() {
    EntityRelationsQuery._defaults(this);
  }

  EntityRelationsQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityRelationsQuery other) {
    _$v = other as _$EntityRelationsQuery;
  }

  @override
  void update(void Function(EntityRelationsQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityRelationsQuery build() => _build();

  _$EntityRelationsQuery _build() {
    _$EntityRelationsQuery _$result;
    try {
      _$result =
          _$v ??
          _$EntityRelationsQuery._(
            parameters: _parameters?.build(),
            filters: _filters?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityRelationsQuery',
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
