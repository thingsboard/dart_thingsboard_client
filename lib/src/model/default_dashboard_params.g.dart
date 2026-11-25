// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_dashboard_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DefaultDashboardParams extends DefaultDashboardParams {
  @override
  final String? id;
  @override
  final bool? fullscreen;

  factory _$DefaultDashboardParams([
    void Function(DefaultDashboardParamsBuilder)? updates,
  ]) => (DefaultDashboardParamsBuilder()..update(updates))._build();

  _$DefaultDashboardParams._({this.id, this.fullscreen}) : super._();
  @override
  DefaultDashboardParams rebuild(
    void Function(DefaultDashboardParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  DefaultDashboardParamsBuilder toBuilder() =>
      DefaultDashboardParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DefaultDashboardParams &&
        id == other.id &&
        fullscreen == other.fullscreen;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, fullscreen.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DefaultDashboardParams')
          ..add('id', id)
          ..add('fullscreen', fullscreen))
        .toString();
  }
}

class DefaultDashboardParamsBuilder
    implements Builder<DefaultDashboardParams, DefaultDashboardParamsBuilder> {
  _$DefaultDashboardParams? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _fullscreen;
  bool? get fullscreen => _$this._fullscreen;
  set fullscreen(bool? fullscreen) => _$this._fullscreen = fullscreen;

  DefaultDashboardParamsBuilder() {
    DefaultDashboardParams._defaults(this);
  }

  DefaultDashboardParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _fullscreen = $v.fullscreen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DefaultDashboardParams other) {
    _$v = other as _$DefaultDashboardParams;
  }

  @override
  void update(void Function(DefaultDashboardParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DefaultDashboardParams build() => _build();

  _$DefaultDashboardParams _build() {
    final _$result =
        _$v ?? _$DefaultDashboardParams._(id: id, fullscreen: fullscreen);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
