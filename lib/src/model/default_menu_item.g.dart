// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_menu_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultMenuItem extends DefaultMenuItem {
  @override
  final BuiltList<DefaultMenuItem>? pages;
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final String? id;
  @override
  final MenuItemType type;
  @override
  final bool? visible;

  factory _$DefaultMenuItem([void Function(DefaultMenuItemBuilder)? updates]) =>
      (DefaultMenuItemBuilder()..update(updates))._build();

  _$DefaultMenuItem._({
    this.pages,
    this.name,
    this.icon,
    this.id,
    required this.type,
    this.visible,
  }) : super._();
  @override
  DefaultMenuItem rebuild(void Function(DefaultMenuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DefaultMenuItemBuilder toBuilder() => DefaultMenuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultMenuItem &&
        pages == other.pages &&
        name == other.name &&
        icon == other.icon &&
        id == other.id &&
        type == other.type &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pages.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefaultMenuItem')
          ..add('pages', pages)
          ..add('name', name)
          ..add('icon', icon)
          ..add('id', id)
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class DefaultMenuItemBuilder
    implements
        Builder<DefaultMenuItem, DefaultMenuItemBuilder>,
        MenuItemBuilder {
  _$DefaultMenuItem? _$v;

  ListBuilder<DefaultMenuItem>? _pages;
  ListBuilder<DefaultMenuItem> get pages =>
      _$this._pages ??= ListBuilder<DefaultMenuItem>();
  set pages(covariant ListBuilder<DefaultMenuItem>? pages) =>
      _$this._pages = pages;

  String? _name;
  String? get name => _$this._name;
  set name(covariant String? name) => _$this._name = name;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(covariant String? icon) => _$this._icon = icon;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  MenuItemType? _type;
  MenuItemType? get type => _$this._type;
  set type(covariant MenuItemType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  DefaultMenuItemBuilder() {
    DefaultMenuItem._defaults(this);
  }

  DefaultMenuItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pages = $v.pages?.toBuilder();
      _name = $v.name;
      _icon = $v.icon;
      _id = $v.id;
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DefaultMenuItem other) {
    _$v = other as _$DefaultMenuItem;
  }

  @override
  void update(void Function(DefaultMenuItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultMenuItem build() => _build();

  _$DefaultMenuItem _build() {
    _$DefaultMenuItem _$result;
    try {
      _$result =
          _$v ??
          _$DefaultMenuItem._(
            pages: _pages?.build(),
            name: name,
            icon: icon,
            id: id,
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'DefaultMenuItem',
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
          r'DefaultMenuItem',
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
