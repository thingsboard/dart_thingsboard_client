// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_data_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmDataQuery extends AlarmDataQuery {
  @override
  final EntityFilter? entityFilter;
  @override
  final BuiltList<KeyFilter>? keyFilters;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperation;
  @override
  final AlarmDataPageLink? pageLink;
  @override
  final BuiltList<EntityKey>? entityFields;
  @override
  final BuiltList<EntityKey>? latestValues;
  @override
  final BuiltList<EntityKey>? alarmFields;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperationOrDefault;

  factory _$AlarmDataQuery([void Function(AlarmDataQueryBuilder)? updates]) =>
      (AlarmDataQueryBuilder()..update(updates))._build();

  _$AlarmDataQuery._({
    this.entityFilter,
    this.keyFilters,
    this.keyFiltersOperation,
    this.pageLink,
    this.entityFields,
    this.latestValues,
    this.alarmFields,
    this.keyFiltersOperationOrDefault,
  }) : super._();
  @override
  AlarmDataQuery rebuild(void Function(AlarmDataQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmDataQueryBuilder toBuilder() => AlarmDataQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmDataQuery &&
        entityFilter == other.entityFilter &&
        keyFilters == other.keyFilters &&
        keyFiltersOperation == other.keyFiltersOperation &&
        pageLink == other.pageLink &&
        entityFields == other.entityFields &&
        latestValues == other.latestValues &&
        alarmFields == other.alarmFields &&
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
    _$hash = $jc(_$hash, alarmFields.hashCode);
    _$hash = $jc(_$hash, keyFiltersOperationOrDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmDataQuery')
          ..add('entityFilter', entityFilter)
          ..add('keyFilters', keyFilters)
          ..add('keyFiltersOperation', keyFiltersOperation)
          ..add('pageLink', pageLink)
          ..add('entityFields', entityFields)
          ..add('latestValues', latestValues)
          ..add('alarmFields', alarmFields)
          ..add('keyFiltersOperationOrDefault', keyFiltersOperationOrDefault))
        .toString();
  }
}

class AlarmDataQueryBuilder
    implements Builder<AlarmDataQuery, AlarmDataQueryBuilder> {
  _$AlarmDataQuery? _$v;

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

  AlarmDataPageLinkBuilder? _pageLink;
  AlarmDataPageLinkBuilder get pageLink =>
      _$this._pageLink ??= AlarmDataPageLinkBuilder();
  set pageLink(AlarmDataPageLinkBuilder? pageLink) =>
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

  ListBuilder<EntityKey>? _alarmFields;
  ListBuilder<EntityKey> get alarmFields =>
      _$this._alarmFields ??= ListBuilder<EntityKey>();
  set alarmFields(ListBuilder<EntityKey>? alarmFields) =>
      _$this._alarmFields = alarmFields;

  AlarmRuleComplexOperation? _keyFiltersOperationOrDefault;
  AlarmRuleComplexOperation? get keyFiltersOperationOrDefault =>
      _$this._keyFiltersOperationOrDefault;
  set keyFiltersOperationOrDefault(
    AlarmRuleComplexOperation? keyFiltersOperationOrDefault,
  ) => _$this._keyFiltersOperationOrDefault = keyFiltersOperationOrDefault;

  AlarmDataQueryBuilder() {
    AlarmDataQuery._defaults(this);
  }

  AlarmDataQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityFilter = $v.entityFilter;
      _keyFilters = $v.keyFilters?.toBuilder();
      _keyFiltersOperation = $v.keyFiltersOperation;
      _pageLink = $v.pageLink?.toBuilder();
      _entityFields = $v.entityFields?.toBuilder();
      _latestValues = $v.latestValues?.toBuilder();
      _alarmFields = $v.alarmFields?.toBuilder();
      _keyFiltersOperationOrDefault = $v.keyFiltersOperationOrDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmDataQuery other) {
    _$v = other as _$AlarmDataQuery;
  }

  @override
  void update(void Function(AlarmDataQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmDataQuery build() => _build();

  _$AlarmDataQuery _build() {
    _$AlarmDataQuery _$result;
    try {
      _$result =
          _$v ??
          _$AlarmDataQuery._(
            entityFilter: entityFilter,
            keyFilters: _keyFilters?.build(),
            keyFiltersOperation: keyFiltersOperation,
            pageLink: _pageLink?.build(),
            entityFields: _entityFields?.build(),
            latestValues: _latestValues?.build(),
            alarmFields: _alarmFields?.build(),
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
        _$failedField = 'alarmFields';
        _alarmFields?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmDataQuery',
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
