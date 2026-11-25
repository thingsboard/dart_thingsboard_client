// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_menu_config.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomMenuConfig extends CustomMenuConfig {
  @override
  final BuiltList<MenuItem>? items;

  factory _$CustomMenuConfig([
    void Function(CustomMenuConfigBuilder)? updates,
  ]) => (CustomMenuConfigBuilder()..update(updates))._build();

  _$CustomMenuConfig._({this.items}) : super._();
  @override
  CustomMenuConfig rebuild(void Function(CustomMenuConfigBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomMenuConfigBuilder toBuilder() =>
      CustomMenuConfigBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomMenuConfig && items == other.items;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'CustomMenuConfig',
    )..add('items', items)).toString();
  }
}

class CustomMenuConfigBuilder
    implements Builder<CustomMenuConfig, CustomMenuConfigBuilder> {
  _$CustomMenuConfig? _$v;

  ListBuilder<MenuItem>? _items;
  ListBuilder<MenuItem> get items => _$this._items ??= ListBuilder<MenuItem>();
  set items(ListBuilder<MenuItem>? items) => _$this._items = items;

  CustomMenuConfigBuilder() {
    CustomMenuConfig._defaults(this);
  }

  CustomMenuConfigBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomMenuConfig other) {
    _$v = other as _$CustomMenuConfig;
  }

  @override
  void update(void Function(CustomMenuConfigBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomMenuConfig build() => _build();

  _$CustomMenuConfig _build() {
    _$CustomMenuConfig _$result;
    try {
      _$result = _$v ?? _$CustomMenuConfig._(items: _items?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CustomMenuConfig',
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
