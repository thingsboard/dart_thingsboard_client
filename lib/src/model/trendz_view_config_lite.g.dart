// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trendz_view_config_lite.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrendzViewConfigLite extends TrendzViewConfigLite {
  @override
  final String? id;
  @override
  final String? name;

  factory _$TrendzViewConfigLite([
    void Function(TrendzViewConfigLiteBuilder)? updates,
  ]) => (TrendzViewConfigLiteBuilder()..update(updates))._build();

  _$TrendzViewConfigLite._({this.id, this.name}) : super._();
  @override
  TrendzViewConfigLite rebuild(
    void Function(TrendzViewConfigLiteBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  TrendzViewConfigLiteBuilder toBuilder() =>
      TrendzViewConfigLiteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrendzViewConfigLite &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrendzViewConfigLite')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class TrendzViewConfigLiteBuilder
    implements Builder<TrendzViewConfigLite, TrendzViewConfigLiteBuilder> {
  _$TrendzViewConfigLite? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  TrendzViewConfigLiteBuilder() {
    TrendzViewConfigLite._defaults(this);
  }

  TrendzViewConfigLiteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrendzViewConfigLite other) {
    _$v = other as _$TrendzViewConfigLite;
  }

  @override
  void update(void Function(TrendzViewConfigLiteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrendzViewConfigLite build() => _build();

  _$TrendzViewConfigLite _build() {
    final _$result = _$v ?? _$TrendzViewConfigLite._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
