// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'widget_bundle_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WidgetBundleInfo extends WidgetBundleInfo {
  @override
  final EntityId? id;
  @override
  final String? name;

  factory _$WidgetBundleInfo([
    void Function(WidgetBundleInfoBuilder)? updates,
  ]) => (WidgetBundleInfoBuilder()..update(updates))._build();

  _$WidgetBundleInfo._({this.id, this.name}) : super._();
  @override
  WidgetBundleInfo rebuild(void Function(WidgetBundleInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WidgetBundleInfoBuilder toBuilder() =>
      WidgetBundleInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WidgetBundleInfo && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'WidgetBundleInfo')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class WidgetBundleInfoBuilder
    implements Builder<WidgetBundleInfo, WidgetBundleInfoBuilder> {
  _$WidgetBundleInfo? _$v;

  EntityId? _id;
  EntityId? get id => _$this._id;
  set id(EntityId? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  WidgetBundleInfoBuilder() {
    WidgetBundleInfo._defaults(this);
  }

  WidgetBundleInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WidgetBundleInfo other) {
    _$v = other as _$WidgetBundleInfo;
  }

  @override
  void update(void Function(WidgetBundleInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WidgetBundleInfo build() => _build();

  _$WidgetBundleInfo _build() {
    final _$result = _$v ?? _$WidgetBundleInfo._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
