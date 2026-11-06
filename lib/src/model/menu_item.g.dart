// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

abstract mixin class MenuItemBuilder {
  void replace(MenuItem other);
  void update(void Function(MenuItemBuilder) updates);
  MenuItemType? get type;
  set type(MenuItemType? type);

  bool? get visible;
  set visible(bool? visible);
}

class _$$MenuItem extends $MenuItem {
  @override
  final MenuItemType type;
  @override
  final bool? visible;

  factory _$$MenuItem([void Function($MenuItemBuilder)? updates]) =>
      ($MenuItemBuilder()..update(updates))._build();

  _$$MenuItem._({required this.type, this.visible}) : super._();
  @override
  $MenuItem rebuild(void Function($MenuItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $MenuItemBuilder toBuilder() => $MenuItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $MenuItem && type == other.type && visible == other.visible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, visible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$MenuItem')
          ..add('type', type)
          ..add('visible', visible))
        .toString();
  }
}

class $MenuItemBuilder
    implements Builder<$MenuItem, $MenuItemBuilder>, MenuItemBuilder {
  _$$MenuItem? _$v;

  MenuItemType? _type;
  MenuItemType? get type => _$this._type;
  set type(covariant MenuItemType? type) => _$this._type = type;

  bool? _visible;
  bool? get visible => _$this._visible;
  set visible(covariant bool? visible) => _$this._visible = visible;

  $MenuItemBuilder() {
    $MenuItem._defaults(this);
  }

  $MenuItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _visible = $v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $MenuItem other) {
    _$v = other as _$$MenuItem;
  }

  @override
  void update(void Function($MenuItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $MenuItem build() => _build();

  _$$MenuItem _build() {
    final _$result =
        _$v ??
        _$$MenuItem._(
          type: BuiltValueNullFieldError.checkNotNull(
            type,
            r'$MenuItem',
            'type',
          ),
          visible: visible,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
