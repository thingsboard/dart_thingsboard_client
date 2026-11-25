// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_data_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityDataQuery extends EntityDataQuery {
  @override
  final EntityFilter? entityFilter;
  @override
  final BuiltList<KeyFilter>? keyFilters;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperation;
  @override
  final EntityDataPageLink? pageLink;
  @override
  final BuiltList<EntityKey>? entityFields;
  @override
  final BuiltList<EntityKey>? latestValues;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperationOrDefault;

  factory _$EntityDataQuery([void Function(EntityDataQueryBuilder)? updates]) =>
      (EntityDataQueryBuilder()..update(updates))._build();

  _$EntityDataQuery._({
    this.entityFilter,
    this.keyFilters,
    this.keyFiltersOperation,
    this.pageLink,
    this.entityFields,
    this.latestValues,
    this.keyFiltersOperationOrDefault,
  }) : super._();
  @override
  EntityDataQuery rebuild(void Function(EntityDataQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityDataQueryBuilder toBuilder() => EntityDataQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityDataQuery &&
        entityFilter == other.entityFilter &&
        keyFilters == other.keyFilters &&
        keyFiltersOperation == other.keyFiltersOperation &&
        pageLink == other.pageLink &&
        entityFields == other.entityFields &&
        latestValues == other.latestValues &&
        keyFiltersOperationOrDefault == other.keyFiltersOperationOrDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityFilter.hashCode);
    _$hash = $jc(_$hash, keyFilters.hashCode);
    _$hash = $jc(_$hash, keyFiltersOperation.hashCode);
    _$hash = $jc(_$hash, pageLink.hashCode);
    _$hash = $jc(_$hash, entityFields.hashCode);
    _$hash = $jc(_$hash, latestValues.hashCode);
    _$hash = $jc(_$hash, keyFiltersOperationOrDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityDataQuery')
          ..add('entityFilter', entityFilter)
          ..add('keyFilters', keyFilters)
          ..add('keyFiltersOperation', keyFiltersOperation)
          ..add('pageLink', pageLink)
          ..add('entityFields', entityFields)
          ..add('latestValues', latestValues)
          ..add('keyFiltersOperationOrDefault', keyFiltersOperationOrDefault))
        .toString();
  }
}

class EntityDataQueryBuilder
    implements Builder<EntityDataQuery, EntityDataQueryBuilder> {
  _$EntityDataQuery? _$v;

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

  EntityDataPageLinkBuilder? _pageLink;
  EntityDataPageLinkBuilder get pageLink =>
      _$this._pageLink ??= EntityDataPageLinkBuilder();
  set pageLink(EntityDataPageLinkBuilder? pageLink) =>
      _$this._pageLink = pageLink;

  ListBuilder<EntityKey>? _entityFields;
  ListBuilder<EntityKey> get entityFields =>
      _$this._entityFields ??= ListBuilder<EntityKey>();
  set entityFields(ListBuilder<EntityKey>? entityFields) =>
      _$this._entityFields = entityFields;

  ListBuilder<EntityKey>? _latestValues;
  ListBuilder<EntityKey> get latestValues =>
      _$this._latestValues ??= ListBuilder<EntityKey>();
  set latestValues(ListBuilder<EntityKey>? latestValues) =>
      _$this._latestValues = latestValues;

  AlarmRuleComplexOperation? _keyFiltersOperationOrDefault;
  AlarmRuleComplexOperation? get keyFiltersOperationOrDefault =>
      _$this._keyFiltersOperationOrDefault;
  set keyFiltersOperationOrDefault(
    AlarmRuleComplexOperation? keyFiltersOperationOrDefault,
  ) => _$this._keyFiltersOperationOrDefault = keyFiltersOperationOrDefault;

  EntityDataQueryBuilder() {
    EntityDataQuery._defaults(this);
  }

  EntityDataQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityFilter = $v.entityFilter;
      _keyFilters = $v.keyFilters?.toBuilder();
      _keyFiltersOperation = $v.keyFiltersOperation;
      _pageLink = $v.pageLink?.toBuilder();
      _entityFields = $v.entityFields?.toBuilder();
      _latestValues = $v.latestValues?.toBuilder();
      _keyFiltersOperationOrDefault = $v.keyFiltersOperationOrDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityDataQuery other) {
    _$v = other as _$EntityDataQuery;
  }

  @override
  void update(void Function(EntityDataQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityDataQuery build() => _build();

  _$EntityDataQuery _build() {
    _$EntityDataQuery _$result;
    try {
      _$result =
          _$v ??
          _$EntityDataQuery._(
            entityFilter: entityFilter,
            keyFilters: _keyFilters?.build(),
            keyFiltersOperation: keyFiltersOperation,
            pageLink: _pageLink?.build(),
            entityFields: _entityFields?.build(),
            latestValues: _latestValues?.build(),
            keyFiltersOperationOrDefault: keyFiltersOperationOrDefault,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyFilters';
        _keyFilters?.build();

        _$failedField = 'pageLink';
        _pageLink?.build();
        _$failedField = 'entityFields';
        _entityFields?.build();
        _$failedField = 'latestValues';
        _latestValues?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityDataQuery',
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
