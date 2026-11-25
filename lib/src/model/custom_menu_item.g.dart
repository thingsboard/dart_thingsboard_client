// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_menu_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomMenuItem extends CustomMenuItem {
  @override
  final CMItemType menuItemType;
  @override
  final BuiltList<CustomMenuItem>? pages;
  @override
  final String? dashboardId;
  @override
  final bool? setAccessToken;
  @override
  final String name;
  @override
  final String? icon;
  @override
  final CMItemLinkType? linkType;
  @override
  final bool? hideDashboardToolbar;
  @override
  final String? url;
  @override
  final MenuItemType type;
  @override
  final bool? visible;

  factory _$CustomMenuItem([void Function(CustomMenuItemBuilder)? updates]) =>
      (CustomMenuItemBuilder()..update(updates))._build();

  _$CustomMenuItem._({
    required this.menuItemType,
    this.pages,
    this.dashboardId,
    this.setAccessToken,
    required this.name,
    this.icon,
    this.linkType,
    this.hideDashboardToolbar,
    this.url,
    required this.type,
    this.visible,
  }) : super._();
  @override
  CustomMenuItem rebuild(void Function(CustomMenuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomMenuItemBuilder toBuilder() => CustomMenuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomMenuItem &&
        menuItemType == other.menuItemType &&
        pages == other.pages &&
        dashboardId == other.dashboardId &&
        setAccessToken == other.setAccessToken &&
        name == other.name &&
        icon == other.icon &&
        linkType == other.linkType &&
        hideDashboardToolbar == other.hideDashboardToolbar &&
        url == other.url &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, menuItemType.hashCode);
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jc(_$hash, dashboardId.hashCode);
    _$hash = $jc(_$hash, setAccessToken.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, linkType.hashCode);
    _$hash = $jc(_$hash, hideDashboardToolbar.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomMenuItem')
          ..add('menuItemType', menuItemType)
          ..add('pages', pages)
          ..add('dashboardId', dashboardId)
          ..add('setAccessToken', setAccessToken)
          ..add('name', name)
          ..add('icon', icon)
          ..add('linkType', linkType)
          ..add('hideDashboardToolbar', hideDashboardToolbar)
          ..add('url', url)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class CustomMenuItemBuilder
    implements Builder<CustomMenuItem, CustomMenuItemBuilder>, MenuItemBuilder {
  _$CustomMenuItem? _$v;

  CMItemType? _menuItemType;
  CMItemType? get menuItemType => _$this._menuItemType;
  set menuItemType(covariant CMItemType? menuItemType) =>
      _$this._menuItemType = menuItemType;

  ListBuilder<CustomMenuItem>? _pages;
  ListBuilder<CustomMenuItem> get pages =>
      _$this._pages ??= ListBuilder<CustomMenuItem>();
  set pages(covariant ListBuilder<CustomMenuItem>? pages) =>
      _$this._pages = pages;

  String? _dashboardId;
  String? get dashboardId => _$this._dashboardId;
  set dashboardId(covariant String? dashboardId) =>
      _$this._dashboardId = dashboardId;

  bool? _setAccessToken;
  bool? get setAccessToken => _$this._setAccessToken;
  set setAccessToken(covariant bool? setAccessToken) =>
      _$this._setAccessToken = setAccessToken;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(covariant String? icon) => _$this._icon = icon;

  CMItemLinkType? _linkType;
  CMItemLinkType? get linkType => _$this._linkType;
  set linkType(covariant CMItemLinkType? linkType) =>
      _$this._linkType = linkType;

  bool? _hideDashboardToolbar;
  bool? get hideDashboardToolbar => _$this._hideDashboardToolbar;
  set hideDashboardToolbar(covariant bool? hideDashboardToolbar) =>
      _$this._hideDashboardToolbar = hideDashboardToolbar;

  String? _url;
  String? get url => _$this._url;
  set url(covariant String? url) => _$this._url = url;

  MenuItemType? _type;
  MenuItemType? get type => _$this._type;
  set type(covariant MenuItemType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  CustomMenuItemBuilder() {
    CustomMenuItem._defaults(this);
  }

  CustomMenuItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _menuItemType = $v.menuItemType;
      _pages = $v.pages?.toBuilder();
      _dashboardId = $v.dashboardId;
      _setAccessToken = $v.setAccessToken;
      _name = $v.name;
      _icon = $v.icon;
      _linkType = $v.linkType;
      _hideDashboardToolbar = $v.hideDashboardToolbar;
      _url = $v.url;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CustomMenuItem other) {
    _$v = other as _$CustomMenuItem;
  }

  @override
  void update(void Function(CustomMenuItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomMenuItem build() => _build();

  _$CustomMenuItem _build() {
    _$CustomMenuItem _$result;
    try {
      _$result =
          _$v ??
          _$CustomMenuItem._(
            menuItemType: BuiltValueNullFieldError.checkNotNull(
              menuItemType,
              r'CustomMenuItem',
              'menuItemType',
            ),
            pages: _pages?.build(),
            dashboardId: dashboardId,
            setAccessToken: setAccessToken,
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'CustomMenuItem',
              'name',
            ),
            icon: icon,
            linkType: linkType,
            hideDashboardToolbar: hideDashboardToolbar,
            url: url,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'CustomMenuItem',
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
          r'CustomMenuItem',
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
