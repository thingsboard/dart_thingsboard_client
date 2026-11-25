// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_count_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityCountQuery extends EntityCountQuery {
  @override
  final EntityFilter? entityFilter;
  @override
  final BuiltList<KeyFilter>? keyFilters;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperation;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperationOrDefault;

  factory _$EntityCountQuery([
    void Function(EntityCountQueryBuilder)? updates,
  ]) => (EntityCountQueryBuilder()..update(updates))._build();

  _$EntityCountQuery._({
    this.entityFilter,
    this.keyFilters,
    this.keyFiltersOperation,
    this.keyFiltersOperationOrDefault,
  }) : super._();
  @override
  EntityCountQuery rebuild(void Function(EntityCountQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityCountQueryBuilder toBuilder() =>
      EntityCountQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityCountQuery &&
        entityFilter == other.entityFilter &&
        keyFilters == other.keyFilters &&
        keyFiltersOperation == other.keyFiltersOperation &&
        keyFiltersOperationOrDefault == other.keyFiltersOperationOrDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityFilter.hashCode);
    _$hash = $jc(_$hash, keyFilters.hashCode);
    _$hash = $jc(_$hash, keyFiltersOperation.hashCode);
    _$hash = $jc(_$hash, keyFiltersOperationOrDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityCountQuery')
          ..add('entityFilter', entityFilter)
          ..add('keyFilters', keyFilters)
          ..add('keyFiltersOperation', keyFiltersOperation)
          ..add('keyFiltersOperationOrDefault', keyFiltersOperationOrDefault))
        .toString();
  }
}

class EntityCountQueryBuilder
    implements Builder<EntityCountQuery, EntityCountQueryBuilder> {
  _$EntityCountQuery? _$v;

  EntityFilter? _entityFilter;
  EntityFilter? get entityFilter => _$this._entityFilter;
  set entityFilter(EntityFilter? entityFilter) =>
      _$this._entityFilter = entityFilter;

  ListBuilder<KeyFilter>? _keyFilters;
  ListBuilder<KeyFilter> get keyFilters =>
      _$this._keyFilters ??= ListBuilder<KeyFilter>();
  set keyFilters(ListBuilder<KeyFilter>? keyFilters) =>
      _$this._keyFilters = keyFilters;

  AlarmRuleComplexOperation? _keyFiltersOperation;
  AlarmRuleComplexOperation? get keyFiltersOperation =>
      _$this._keyFiltersOperation;
  set keyFiltersOperation(AlarmRuleComplexOperation? keyFiltersOperation) =>
      _$this._keyFiltersOperation = keyFiltersOperation;

  AlarmRuleComplexOperation? _keyFiltersOperationOrDefault;
  AlarmRuleComplexOperation? get keyFiltersOperationOrDefault =>
      _$this._keyFiltersOperationOrDefault;
  set keyFiltersOperationOrDefault(
    AlarmRuleComplexOperation? keyFiltersOperationOrDefault,
  ) => _$this._keyFiltersOperationOrDefault = keyFiltersOperationOrDefault;

  EntityCountQueryBuilder() {
    EntityCountQuery._defaults(this);
  }

  EntityCountQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityFilter = $v.entityFilter;
      _keyFilters = $v.keyFilters?.toBuilder();
      _keyFiltersOperation = $v.keyFiltersOperation;
      _keyFiltersOperationOrDefault = $v.keyFiltersOperationOrDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityCountQuery other) {
    _$v = other as _$EntityCountQuery;
  }

  @override
  void update(void Function(EntityCountQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityCountQuery build() => _build();

  _$EntityCountQuery _build() {
    _$EntityCountQuery _$result;
    try {
      _$result =
          _$v ??
          _$EntityCountQuery._(
            entityFilter: entityFilter,
            keyFilters: _keyFilters?.build(),
            keyFiltersOperation: keyFiltersOperation,
            keyFiltersOperationOrDefault: keyFiltersOperationOrDefault,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyFilters';
        _keyFilters?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityCountQuery',
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
