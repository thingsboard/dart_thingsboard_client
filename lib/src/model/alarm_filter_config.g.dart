// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_filter_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmFilterConfig extends AlarmFilterConfig {
  @override
  final BuiltList<String>? typeList;
  @override
  final BuiltList<AlarmSearchStatus>? statusList;
  @override
  final BuiltList<AlarmSeverity>? severityList;
  @override
  final UserId? assigneeId;
  @override
  final bool? searchPropagatedAlarms;

  factory _$AlarmFilterConfig([
    void Function(AlarmFilterConfigBuilder)? updates,
  ]) => (AlarmFilterConfigBuilder()..update(updates))._build();

  _$AlarmFilterConfig._({
    this.typeList,
    this.statusList,
    this.severityList,
    this.assigneeId,
    this.searchPropagatedAlarms,
  }) : super._();
  @override
  AlarmFilterConfig rebuild(void Function(AlarmFilterConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlarmFilterConfigBuilder toBuilder() =>
      AlarmFilterConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmFilterConfig &&
        typeList == other.typeList &&
        statusList == other.statusList &&
        severityList == other.severityList &&
        assigneeId == other.assigneeId &&
        searchPropagatedAlarms == other.searchPropagatedAlarms;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeList.hashCode);
    _$hash = $jc(_$hash, statusList.hashCode);
    _$hash = $jc(_$hash, severityList.hashCode);
    _$hash = $jc(_$hash, assigneeId.hashCode);
    _$hash = $jc(_$hash, searchPropagatedAlarms.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmFilterConfig')
          ..add('typeList', typeList)
          ..add('statusList', statusList)
          ..add('severityList', severityList)
          ..add('assigneeId', assigneeId)
          ..add('searchPropagatedAlarms', searchPropagatedAlarms))
        .toString();
  }
}

class AlarmFilterConfigBuilder
    implements Builder<AlarmFilterConfig, AlarmFilterConfigBuilder> {
  _$AlarmFilterConfig? _$v;

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

  UserIdBuilder? _assigneeId;
  UserIdBuilder get assigneeId => _$this._assigneeId ??= UserIdBuilder();
  set assigneeId(UserIdBuilder? assigneeId) => _$this._assigneeId = assigneeId;

  bool? _searchPropagatedAlarms;
  bool? get searchPropagatedAlarms => _$this._searchPropagatedAlarms;
  set searchPropagatedAlarms(bool? searchPropagatedAlarms) =>
      _$this._searchPropagatedAlarms = searchPropagatedAlarms;

  AlarmFilterConfigBuilder() {
    AlarmFilterConfig._defaults(this);
  }

  AlarmFilterConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeList = $v.typeList?.toBuilder();
      _statusList = $v.statusList?.toBuilder();
      _severityList = $v.severityList?.toBuilder();
      _assigneeId = $v.assigneeId?.toBuilder();
      _searchPropagatedAlarms = $v.searchPropagatedAlarms;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmFilterConfig other) {
    _$v = other as _$AlarmFilterConfig;
  }

  @override
  void update(void Function(AlarmFilterConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmFilterConfig build() => _build();

  _$AlarmFilterConfig _build() {
    _$AlarmFilterConfig _$result;
    try {
      _$result =
          _$v ??
          _$AlarmFilterConfig._(
            typeList: _typeList?.build(),
            statusList: _statusList?.build(),
            severityList: _severityList?.build(),
            assigneeId: _assigneeId?.build(),
            searchPropagatedAlarms: searchPropagatedAlarms,
          );
    } catch (_) {
      late String _$failedField;
      try {
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
          r'AlarmFilterConfig',
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
