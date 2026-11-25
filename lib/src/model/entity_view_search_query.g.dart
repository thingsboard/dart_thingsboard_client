// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_view_search_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityViewSearchQuery extends EntityViewSearchQuery {
  @override
  final RelationsSearchParameters? parameters;
  @override
  final String? relationType;
  @override
  final BuiltList<String>? entityViewTypes;

  factory _$EntityViewSearchQuery([
    void Function(EntityViewSearchQueryBuilder)? updates,
  ]) => (EntityViewSearchQueryBuilder()..update(updates))._build();

  _$EntityViewSearchQuery._({
    this.parameters,
    this.relationType,
    this.entityViewTypes,
  }) : super._();
  @override
  EntityViewSearchQuery rebuild(
    void Function(EntityViewSearchQueryBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityViewSearchQueryBuilder toBuilder() =>
      EntityViewSearchQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityViewSearchQuery &&
        parameters == other.parameters &&
        relationType == other.relationType &&
        entityViewTypes == other.entityViewTypes;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, parameters.hashCode);
    _$hash = $jc(_$hash, relationType.hashCode);
    _$hash = $jc(_$hash, entityViewTypes.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityViewSearchQuery')
          ..add('parameters', parameters)
          ..add('relationType', relationType)
          ..add('entityViewTypes', entityViewTypes))
        .toString();
  }
}

class EntityViewSearchQueryBuilder
    implements Builder<EntityViewSearchQuery, EntityViewSearchQueryBuilder> {
  _$EntityViewSearchQuery? _$v;

  RelationsSearchParametersBuilder? _parameters;
  RelationsSearchParametersBuilder get parameters =>
      _$this._parameters ??= RelationsSearchParametersBuilder();
  set parameters(RelationsSearchParametersBuilder? parameters) =>
      _$this._parameters = parameters;

  String? _relationType;
  String? get relationType => _$this._relationType;
  set relationType(String? relationType) => _$this._relationType = relationType;

  ListBuilder<String>? _entityViewTypes;
  ListBuilder<String> get entityViewTypes =>
      _$this._entityViewTypes ??= ListBuilder<String>();
  set entityViewTypes(ListBuilder<String>? entityViewTypes) =>
      _$this._entityViewTypes = entityViewTypes;

  EntityViewSearchQueryBuilder() {
    EntityViewSearchQuery._defaults(this);
  }

  EntityViewSearchQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _parameters = $v.parameters?.toBuilder();
      _relationType = $v.relationType;
      _entityViewTypes = $v.entityViewTypes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityViewSearchQuery other) {
    _$v = other as _$EntityViewSearchQuery;
  }

  @override
  void update(void Function(EntityViewSearchQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityViewSearchQuery build() => _build();

  _$EntityViewSearchQuery _build() {
    _$EntityViewSearchQuery _$result;
    try {
      _$result =
          _$v ??
          _$EntityViewSearchQuery._(
            parameters: _parameters?.build(),
            relationType: relationType,
            entityViewTypes: _entityViewTypes?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();

        _$failedField = 'entityViewTypes';
        _entityViewTypes?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityViewSearchQuery',
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
