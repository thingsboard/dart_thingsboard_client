// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_menu_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeMenuItem extends HomeMenuItem {
  @override
  final BuiltList<DefaultMenuItem>? pages;
  @override
  final String? dashboardId;
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final String? id;
  @override
  final bool? hideDashboardToolbar;
  @override
  final HomeMenuItemType? homeType;
  @override
  final MenuItemType type;
  @override
  final bool? visible;

  factory _$HomeMenuItem([void Function(HomeMenuItemBuilder)? updates]) =>
      (HomeMenuItemBuilder()..update(updates))._build();

  _$HomeMenuItem._({
    this.pages,
    this.dashboardId,
    this.name,
    this.icon,
    this.id,
    this.hideDashboardToolbar,
    this.homeType,
    required this.type,
    this.visible,
  }) : super._();
  @override
  HomeMenuItem rebuild(void Function(HomeMenuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HomeMenuItemBuilder toBuilder() => HomeMenuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeMenuItem &&
        pages == other.pages &&
        dashboardId == other.dashboardId &&
        name == other.name &&
        icon == other.icon &&
        id == other.id &&
        hideDashboardToolbar == other.hideDashboardToolbar &&
        homeType == other.homeType &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, hideDashboardToolbar.hashCode);
    _$hash = $jc(_$hash, homeType.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeMenuItem')
          ..add('pages', pages)
          ..add('dashboardId', dashboardId)
          ..add('name', name)
          ..add('icon', icon)
          ..add('id', id)
          ..add('hideDashboardToolbar', hideDashboardToolbar)
          ..add('homeType', homeType)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class HomeMenuItemBuilder
    implements Builder<HomeMenuItem, HomeMenuItemBuilder>, MenuItemBuilder {
  _$HomeMenuItem? _$v;

  ListBuilder<DefaultMenuItem>? _pages;
  ListBuilder<DefaultMenuItem> get pages =>
      _$this._pages ??= ListBuilder<DefaultMenuItem>();
  set pages(covariant ListBuilder<DefaultMenuItem>? pages) =>
      _$this._pages = pages;

  String? _dashboardId;
  String? get dashboardId => _$this._dashboardId;
  set dashboardId(covariant String? dashboardId) =>
      _$this._dashboardId = dashboardId;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(covariant String? icon) => _$this._icon = icon;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  bool? _hideDashboardToolbar;
  bool? get hideDashboardToolbar => _$this._hideDashboardToolbar;
  set hideDashboardToolbar(covariant bool? hideDashboardToolbar) =>
      _$this._hideDashboardToolbar = hideDashboardToolbar;

  HomeMenuItemType? _homeType;
  HomeMenuItemType? get homeType => _$this._homeType;
  set homeType(covariant HomeMenuItemType? homeType) =>
      _$this._homeType = homeType;

  MenuItemType? _type;
  MenuItemType? get type => _$this._type;
  set type(covariant MenuItemType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  HomeMenuItemBuilder() {
    HomeMenuItem._defaults(this);
  }

  HomeMenuItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pages = $v.pages?.toBuilder();
      _dashboardId = $v.dashboardId;
      _name = $v.name;
      _icon = $v.icon;
      _id = $v.id;
      _hideDashboardToolbar = $v.hideDashboardToolbar;
      _homeType = $v.homeType;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant HomeMenuItem other) {
    _$v = other as _$HomeMenuItem;
  }

  @override
  void update(void Function(HomeMenuItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeMenuItem build() => _build();

  _$HomeMenuItem _build() {
    _$HomeMenuItem _$result;
    try {
      _$result =
          _$v ??
          _$HomeMenuItem._(
            pages: _pages?.build(),
            dashboardId: dashboardId,
            name: name,
            icon: icon,
            id: id,
            hideDashboardToolbar: hideDashboardToolbar,
            homeType: homeType,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'HomeMenuItem',
              'type',
            ),
            visible: visible,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pages';
        _pages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HomeMenuItem',
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
