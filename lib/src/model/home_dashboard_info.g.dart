// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dashboard_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeDashboardInfo extends HomeDashboardInfo {
  @override
  final DashboardId? dashboardId;
  @override
  final bool? hideDashboardToolbar;

  factory _$HomeDashboardInfo([
    void Function(HomeDashboardInfoBuilder)? updates,
  ]) => (HomeDashboardInfoBuilder()..update(updates))._build();

  _$HomeDashboardInfo._({this.dashboardId, this.hideDashboardToolbar})
    : super._();
  @override
  HomeDashboardInfo rebuild(void Function(HomeDashboardInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeDashboardInfoBuilder toBuilder() =>
      HomeDashboardInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeDashboardInfo &&
        dashboardId == other.dashboardId &&
        hideDashboardToolbar == other.hideDashboardToolbar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, hideDashboardToolbar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeDashboardInfo')
          ..add('dashboardId', dashboardId)
          ..add('hideDashboardToolbar', hideDashboardToolbar))
        .toString();
  }
}

class HomeDashboardInfoBuilder
    implements Builder<HomeDashboardInfo, HomeDashboardInfoBuilder> {
  _$HomeDashboardInfo? _$v;

  DashboardIdBuilder? _dashboardId;
  DashboardIdBuilder get dashboardId =>
      _$this._dashboardId ??= DashboardIdBuilder();
  set dashboardId(DashboardIdBuilder? dashboardId) =>
      _$this._dashboardId = dashboardId;

  bool? _hideDashboardToolbar;
  bool? get hideDashboardToolbar => _$this._hideDashboardToolbar;
  set hideDashboardToolbar(bool? hideDashboardToolbar) =>
      _$this._hideDashboardToolbar = hideDashboardToolbar;

  HomeDashboardInfoBuilder() {
    HomeDashboardInfo._defaults(this);
  }

  HomeDashboardInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dashboardId = $v.dashboardId?.toBuilder();
      _hideDashboardToolbar = $v.hideDashboardToolbar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeDashboardInfo other) {
    _$v = other as _$HomeDashboardInfo;
  }

  @override
  void update(void Function(HomeDashboardInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeDashboardInfo build() => _build();

  _$HomeDashboardInfo _build() {
    _$HomeDashboardInfo _$result;
    try {
      _$result =
          _$v ??
          _$HomeDashboardInfo._(
            dashboardId: _dashboardId?.build(),
            hideDashboardToolbar: hideDashboardToolbar,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dashboardId';
        _dashboardId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HomeDashboardInfo',
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
