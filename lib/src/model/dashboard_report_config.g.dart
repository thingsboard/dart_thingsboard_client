// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_report_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardReportConfig extends DashboardReportConfig {
  @override
  final String baseUrl;
  @override
  final String dashboardId;
  @override
  final String? state;
  @override
  final String timezone;
  @override
  final bool? useDashboardTimewindow;
  @override
  final JsonObject? timewindow;
  @override
  final String? namePattern;
  @override
  final String? type;
  @override
  final bool? useCurrentUserCredentials;
  @override
  final String? userId;

  factory _$DashboardReportConfig([
    void Function(DashboardReportConfigBuilder)? updates,
  ]) => (DashboardReportConfigBuilder()..update(updates))._build();

  _$DashboardReportConfig._({
    required this.baseUrl,
    required this.dashboardId,
    this.state,
    required this.timezone,
    this.useDashboardTimewindow,
    this.timewindow,
    this.namePattern,
    this.type,
    this.useCurrentUserCredentials,
    this.userId,
  }) : super._();
  @override
  DashboardReportConfig rebuild(
    void Function(DashboardReportConfigBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DashboardReportConfigBuilder toBuilder() =>
      DashboardReportConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardReportConfig &&
        baseUrl == other.baseUrl &&
        dashboardId == other.dashboardId &&
        state == other.state &&
        timezone == other.timezone &&
        useDashboardTimewindow == other.useDashboardTimewindow &&
        timewindow == other.timewindow &&
        namePattern == other.namePattern &&
        type == other.type &&
        useCurrentUserCredentials == other.useCurrentUserCredentials &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseUrl.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, timezone.hashCode);
    _$hash = $jc(_$hash, useDashboardTimewindow.hashCode);
    _$hash = $jc(_$hash, timewindow.hashCode);
    _$hash = $jc(_$hash, namePattern.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, useCurrentUserCredentials.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardReportConfig')
          ..add('baseUrl', baseUrl)
          ..add('dashboardId', dashboardId)
          ..add('state', state)
          ..add('timezone', timezone)
          ..add('useDashboardTimewindow', useDashboardTimewindow)
          ..add('timewindow', timewindow)
          ..add('namePattern', namePattern)
          ..add('type', type)
          ..add('useCurrentUserCredentials', useCurrentUserCredentials)
          ..add('userId', userId))
        .toString();
  }
}

class DashboardReportConfigBuilder
    implements Builder<DashboardReportConfig, DashboardReportConfigBuilder> {
  _$DashboardReportConfig? _$v;

  String? _baseUrl;
  String? get baseUrl => _$this._baseUrl;
  set baseUrl(String? baseUrl) => _$this._baseUrl = baseUrl;

  String? _dashboardId;
  String? get dashboardId => _$this._dashboardId;
  set dashboardId(String? dashboardId) => _$this._dashboardId = dashboardId;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  bool? _useDashboardTimewindow;
  bool? get useDashboardTimewindow => _$this._useDashboardTimewindow;
  set useDashboardTimewindow(bool? useDashboardTimewindow) =>
      _$this._useDashboardTimewindow = useDashboardTimewindow;

  JsonObject? _timewindow;
  JsonObject? get timewindow => _$this._timewindow;
  set timewindow(JsonObject? timewindow) => _$this._timewindow = timewindow;

  String? _namePattern;
  String? get namePattern => _$this._namePattern;
  set namePattern(String? namePattern) => _$this._namePattern = namePattern;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _useCurrentUserCredentials;
  bool? get useCurrentUserCredentials => _$this._useCurrentUserCredentials;
  set useCurrentUserCredentials(bool? useCurrentUserCredentials) =>
      _$this._useCurrentUserCredentials = useCurrentUserCredentials;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DashboardReportConfigBuilder() {
    DashboardReportConfig._defaults(this);
  }

  DashboardReportConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseUrl = $v.baseUrl;
      _dashboardId = $v.dashboardId;
      _state = $v.state;
      _timezone = $v.timezone;
      _useDashboardTimewindow = $v.useDashboardTimewindow;
      _timewindow = $v.timewindow;
      _namePattern = $v.namePattern;
      _type = $v.type;
      _useCurrentUserCredentials = $v.useCurrentUserCredentials;
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DashboardReportConfig other) {
    _$v = other as _$DashboardReportConfig;
  }

  @override
  void update(void Function(DashboardReportConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardReportConfig build() => _build();

  _$DashboardReportConfig _build() {
    final _$result =
        _$v ??
        _$DashboardReportConfig._(
          baseUrl: BuiltValueNullFieldError.checkNotNull(
            baseUrl,
            r'DashboardReportConfig',
            'baseUrl',
          ),
          dashboardId: BuiltValueNullFieldError.checkNotNull(
            dashboardId,
            r'DashboardReportConfig',
            'dashboardId',
          ),
          state: state,
          timezone: BuiltValueNullFieldError.checkNotNull(
            timezone,
            r'DashboardReportConfig',
            'timezone',
          ),
          useDashboardTimewindow: useDashboardTimewindow,
          timewindow: timewindow,
          namePattern: namePattern,
          type: type,
          useCurrentUserCredentials: useCurrentUserCredentials,
          userId: userId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
