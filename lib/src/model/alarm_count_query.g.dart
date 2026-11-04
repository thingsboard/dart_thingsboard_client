// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_count_query.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmCountQuery extends AlarmCountQuery {
  @override
  final EntityFilter? entityFilter;
  @override
  final BuiltList<KeyFilter>? keyFilters;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperation;
  @override
  final int? startTs;
  @override
  final int? endTs;
  @override
  final int? timeWindow;
  @override
  final BuiltList<String>? typeList;
  @override
  final BuiltList<AlarmSearchStatus>? statusList;
  @override
  final BuiltList<AlarmSeverity>? severityList;
  @override
  final bool? searchPropagatedAlarms;
  @override
  final UserId? assigneeId;
  @override
  final AlarmRuleComplexOperation? keyFiltersOperationOrDefault;

  factory _$AlarmCountQuery([void Function(AlarmCountQueryBuilder)? updates]) =>
      (AlarmCountQueryBuilder()..update(updates))._build();

  _$AlarmCountQuery._({
    this.entityFilter,
    this.keyFilters,
    this.keyFiltersOperation,
    this.startTs,
    this.endTs,
    this.timeWindow,
    this.typeList,
    this.statusList,
    this.severityList,
    this.searchPropagatedAlarms,
    this.assigneeId,
    this.keyFiltersOperationOrDefault,
  }) : super._();
  @override
  AlarmCountQuery rebuild(void Function(AlarmCountQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmCountQueryBuilder toBuilder() => AlarmCountQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmCountQuery &&
        entityFilter == other.entityFilter &&
        keyFilters == other.keyFilters &&
        keyFiltersOperation == other.keyFiltersOperation &&
        startTs == other.startTs &&
        endTs == other.endTs &&
        timeWindow == other.timeWindow &&
        typeList == other.typeList &&
        statusList == other.statusList &&
        severityList == other.severityList &&
        searchPropagatedAlarms == other.searchPropagatedAlarms &&
        assigneeId == other.assigneeId &&
        keyFiltersOperationOrDefault == other.keyFiltersOperationOrDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityFilter.hashCode);
    _$hash = $jc(_$hash, keyFilters.hashCode);
    _$hash = $jc(_$hash, keyFiltersOperation.hashCode);
    _$hash = $jc(_$hash, startTs.hashCode);
    _$hash = $jc(_$hash, endTs.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, typeList.hashCode);
    _$hash = $jc(_$hash, statusList.hashCode);
    _$hash = $jc(_$hash, severityList.hashCode);
    _$hash = $jc(_$hash, searchPropagatedAlarms.hashCode);
    _$hash = $jc(_$hash, assigneeId.hashCode);
    _$hash = $jc(_$hash, keyFiltersOperationOrDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmCountQuery')
          ..add('entityFilter', entityFilter)
          ..add('keyFilters', keyFilters)
          ..add('keyFiltersOperation', keyFiltersOperation)
          ..add('startTs', startTs)
          ..add('endTs', endTs)
          ..add('timeWindow', timeWindow)
          ..add('typeList', typeList)
          ..add('statusList', statusList)
          ..add('severityList', severityList)
          ..add('searchPropagatedAlarms', searchPropagatedAlarms)
          ..add('assigneeId', assigneeId)
          ..add('keyFiltersOperationOrDefault', keyFiltersOperationOrDefault))
        .toString();
  }
}

class AlarmCountQueryBuilder
    implements Builder<AlarmCountQuery, AlarmCountQueryBuilder> {
  _$AlarmCountQuery? _$v;

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

  int? _startTs;
  int? get startTs => _$this._startTs;
  set startTs(int? startTs) => _$this._startTs = startTs;

  int? _endTs;
  int? get endTs => _$this._endTs;
  set endTs(int? endTs) => _$this._endTs = endTs;

  int? _timeWindow;
  int? get timeWindow => _$this._timeWindow;
  set timeWindow(int? timeWindow) => _$this._timeWindow = timeWindow;

  ListBuilder<String>? _typeList;
  ListBuilder<String> get typeList =>
      _$this._typeList ??= ListBuilder<String>();
  set typeList(ListBuilder<String>? typeList) => _$this._typeList = typeList;

  ListBuilder<AlarmSearchStatus>? _statusList;
  ListBuilder<AlarmSearchStatus> get statusList =>
      _$this._statusList ??= ListBuilder<AlarmSearchStatus>();
  set statusList(ListBuilder<AlarmSearchStatus>? statusList) =>
      _$this._statusList = statusList;

  ListBuilder<AlarmSeverity>? _severityList;
  ListBuilder<AlarmSeverity> get severityList =>
      _$this._severityList ??= ListBuilder<AlarmSeverity>();
  set severityList(ListBuilder<AlarmSeverity>? severityList) =>
      _$this._severityList = severityList;

  bool? _searchPropagatedAlarms;
  bool? get searchPropagatedAlarms => _$this._searchPropagatedAlarms;
  set searchPropagatedAlarms(bool? searchPropagatedAlarms) =>
      _$this._searchPropagatedAlarms = searchPropagatedAlarms;

  UserIdBuilder? _assigneeId;
  UserIdBuilder get assigneeId => _$this._assigneeId ??= UserIdBuilder();
  set assigneeId(UserIdBuilder? assigneeId) => _$this._assigneeId = assigneeId;

  AlarmRuleComplexOperation? _keyFiltersOperationOrDefault;
  AlarmRuleComplexOperation? get keyFiltersOperationOrDefault =>
      _$this._keyFiltersOperationOrDefault;
  set keyFiltersOperationOrDefault(
    AlarmRuleComplexOperation? keyFiltersOperationOrDefault,
  ) => _$this._keyFiltersOperationOrDefault = keyFiltersOperationOrDefault;

  AlarmCountQueryBuilder() {
    AlarmCountQuery._defaults(this);
  }

  AlarmCountQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityFilter = $v.entityFilter;
      _keyFilters = $v.keyFilters?.toBuilder();
      _keyFiltersOperation = $v.keyFiltersOperation;
      _startTs = $v.startTs;
      _endTs = $v.endTs;
      _timeWindow = $v.timeWindow;
      _typeList = $v.typeList?.toBuilder();
      _statusList = $v.statusList?.toBuilder();
      _severityList = $v.severityList?.toBuilder();
      _searchPropagatedAlarms = $v.searchPropagatedAlarms;
      _assigneeId = $v.assigneeId?.toBuilder();
      _keyFiltersOperationOrDefault = $v.keyFiltersOperationOrDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmCountQuery other) {
    _$v = other as _$AlarmCountQuery;
  }

  @override
  void update(void Function(AlarmCountQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmCountQuery build() => _build();

  _$AlarmCountQuery _build() {
    _$AlarmCountQuery _$result;
    try {
      _$result =
          _$v ??
          _$AlarmCountQuery._(
            entityFilter: entityFilter,
            keyFilters: _keyFilters?.build(),
            keyFiltersOperation: keyFiltersOperation,
            startTs: startTs,
            endTs: endTs,
            timeWindow: timeWindow,
            typeList: _typeList?.build(),
            statusList: _statusList?.build(),
            severityList: _severityList?.build(),
            searchPropagatedAlarms: searchPropagatedAlarms,
            assigneeId: _assigneeId?.build(),
            keyFiltersOperationOrDefault: keyFiltersOperationOrDefault,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'keyFilters';
        _keyFilters?.build();

        _$failedField = 'typeList';
        _typeList?.build();
        _$failedField = 'statusList';
        _statusList?.build();
        _$failedField = 'severityList';
        _severityList?.build();

        _$failedField = 'assigneeId';
        _assigneeId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmCountQuery',
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
