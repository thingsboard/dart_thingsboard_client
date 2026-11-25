// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_data_page_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmDataPageLink extends AlarmDataPageLink {
  @override
  final int? pageSize;
  @override
  final int? page;
  @override
  final String? textSearch;
  @override
  final EntityDataSortOrder? sortOrder;
  @override
  final bool? dynamic_;
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

  factory _$AlarmDataPageLink([
    void Function(AlarmDataPageLinkBuilder)? updates,
  ]) => (AlarmDataPageLinkBuilder()..update(updates))._build();

  _$AlarmDataPageLink._({
    this.pageSize,
    this.page,
    this.textSearch,
    this.sortOrder,
    this.dynamic_,
    this.startTs,
    this.endTs,
    this.timeWindow,
    this.typeList,
    this.statusList,
    this.severityList,
    this.searchPropagatedAlarms,
    this.assigneeId,
  }) : super._();
  @override
  AlarmDataPageLink rebuild(void Function(AlarmDataPageLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmDataPageLinkBuilder toBuilder() =>
      AlarmDataPageLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmDataPageLink &&
        pageSize == other.pageSize &&
        page == other.page &&
        textSearch == other.textSearch &&
        sortOrder == other.sortOrder &&
        dynamic_ == other.dynamic_ &&
        startTs == other.startTs &&
        endTs == other.endTs &&
        timeWindow == other.timeWindow &&
        typeList == other.typeList &&
        statusList == other.statusList &&
        severityList == other.severityList &&
        searchPropagatedAlarms == other.searchPropagatedAlarms &&
        assigneeId == other.assigneeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, textSearch.hashCode);
    _$hash = $jc(_$hash, sortOrder.hashCode);
    _$hash = $jc(_$hash, dynamic_.hashCode);
    _$hash = $jc(_$hash, startTs.hashCode);
    _$hash = $jc(_$hash, endTs.hashCode);
    _$hash = $jc(_$hash, timeWindow.hashCode);
    _$hash = $jc(_$hash, typeList.hashCode);
    _$hash = $jc(_$hash, statusList.hashCode);
    _$hash = $jc(_$hash, severityList.hashCode);
    _$hash = $jc(_$hash, searchPropagatedAlarms.hashCode);
    _$hash = $jc(_$hash, assigneeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmDataPageLink')
          ..add('pageSize', pageSize)
          ..add('page', page)
          ..add('textSearch', textSearch)
          ..add('sortOrder', sortOrder)
          ..add('dynamic_', dynamic_)
          ..add('startTs', startTs)
          ..add('endTs', endTs)
          ..add('timeWindow', timeWindow)
          ..add('typeList', typeList)
          ..add('statusList', statusList)
          ..add('severityList', severityList)
          ..add('searchPropagatedAlarms', searchPropagatedAlarms)
          ..add('assigneeId', assigneeId))
        .toString();
  }
}

class AlarmDataPageLinkBuilder
    implements Builder<AlarmDataPageLink, AlarmDataPageLinkBuilder> {
  _$AlarmDataPageLink? _$v;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  String? _textSearch;
  String? get textSearch => _$this._textSearch;
  set textSearch(String? textSearch) => _$this._textSearch = textSearch;

  EntityDataSortOrderBuilder? _sortOrder;
  EntityDataSortOrderBuilder get sortOrder =>
      _$this._sortOrder ??= EntityDataSortOrderBuilder();
  set sortOrder(EntityDataSortOrderBuilder? sortOrder) =>
      _$this._sortOrder = sortOrder;

  bool? _dynamic_;
  bool? get dynamic_ => _$this._dynamic_;
  set dynamic_(bool? dynamic_) => _$this._dynamic_ = dynamic_;

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

  AlarmDataPageLinkBuilder() {
    AlarmDataPageLink._defaults(this);
  }

  AlarmDataPageLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageSize = $v.pageSize;
      _page = $v.page;
      _textSearch = $v.textSearch;
      _sortOrder = $v.sortOrder?.toBuilder();
      _dynamic_ = $v.dynamic_;
      _startTs = $v.startTs;
      _endTs = $v.endTs;
      _timeWindow = $v.timeWindow;
      _typeList = $v.typeList?.toBuilder();
      _statusList = $v.statusList?.toBuilder();
      _severityList = $v.severityList?.toBuilder();
      _searchPropagatedAlarms = $v.searchPropagatedAlarms;
      _assigneeId = $v.assigneeId?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmDataPageLink other) {
    _$v = other as _$AlarmDataPageLink;
  }

  @override
  void update(void Function(AlarmDataPageLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmDataPageLink build() => _build();

  _$AlarmDataPageLink _build() {
    _$AlarmDataPageLink _$result;
    try {
      _$result =
          _$v ??
          _$AlarmDataPageLink._(
            pageSize: pageSize,
            page: page,
            textSearch: textSearch,
            sortOrder: _sortOrder?.build(),
            dynamic_: dynamic_,
            startTs: startTs,
            endTs: endTs,
            timeWindow: timeWindow,
            typeList: _typeList?.build(),
            statusList: _statusList?.build(),
            severityList: _severityList?.build(),
            searchPropagatedAlarms: searchPropagatedAlarms,
            assigneeId: _assigneeId?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sortOrder';
        _sortOrder?.build();

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
          r'AlarmDataPageLink',
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
