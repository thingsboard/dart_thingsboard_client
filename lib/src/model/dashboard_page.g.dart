// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DashboardPage extends DashboardPage {
  @override
  final String? dashboardId;
  @override
  final String? icon;
  @override
  final String? label;
  @override
  final MobilePageType type;
  @override
  final bool? visible;

  factory _$DashboardPage([void Function(DashboardPageBuilder)? updates]) =>
      (DashboardPageBuilder()..update(updates))._build();

  _$DashboardPage._({
    this.dashboardId,
    this.icon,
    this.label,
    required this.type,
    this.visible,
  }) : super._();
  @override
  DashboardPage rebuild(void Function(DashboardPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DashboardPageBuilder toBuilder() => DashboardPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DashboardPage &&
        dashboardId == other.dashboardId &&
        icon == other.icon &&
        label == other.label &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DashboardPage')
          ..add('dashboardId', dashboardId)
          ..add('icon', icon)
          ..add('label', label)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class DashboardPageBuilder
    implements Builder<DashboardPage, DashboardPageBuilder>, MobilePageBuilder {
  _$DashboardPage? _$v;

  String? _dashboardId;
  String? get dashboardId => _$this._dashboardId;
  set dashboardId(covariant String? dashboardId) =>
      _$this._dashboardId = dashboardId;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(covariant String? icon) => _$this._icon = icon;

  String? _label;
  String? get label => _$this._label;
  set label(covariant String? label) => _$this._label = label;

  MobilePageType? _type;
  MobilePageType? get type => _$this._type;
  set type(covariant MobilePageType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  DashboardPageBuilder() {
    DashboardPage._defaults(this);
  }

  DashboardPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dashboardId = $v.dashboardId;
      _icon = $v.icon;
      _label = $v.label;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DashboardPage other) {
    _$v = other as _$DashboardPage;
  }

  @override
  void update(void Function(DashboardPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DashboardPage build() => _build();

  _$DashboardPage _build() {
    final _$result =
        _$v ??
        _$DashboardPage._(
          dashboardId: dashboardId,
          icon: icon,
          label: label,
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'DashboardPage',
            'type',
          ),
          visible: visible,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
