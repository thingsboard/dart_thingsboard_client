// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dashboard_params.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HomeDashboardParams extends HomeDashboardParams {
  @override
  final String? id;
  @override
  final bool? hideToolbar;

  factory _$HomeDashboardParams([
    void Function(HomeDashboardParamsBuilder)? updates,
  ]) => (HomeDashboardParamsBuilder()..update(updates))._build();

  _$HomeDashboardParams._({this.id, this.hideToolbar}) : super._();
  @override
  HomeDashboardParams rebuild(
    void Function(HomeDashboardParamsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HomeDashboardParamsBuilder toBuilder() =>
      HomeDashboardParamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HomeDashboardParams &&
        id == other.id &&
        hideToolbar == other.hideToolbar;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, hideToolbar.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HomeDashboardParams')
          ..add('id', id)
          ..add('hideToolbar', hideToolbar))
        .toString();
  }
}

class HomeDashboardParamsBuilder
    implements Builder<HomeDashboardParams, HomeDashboardParamsBuilder> {
  _$HomeDashboardParams? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _hideToolbar;
  bool? get hideToolbar => _$this._hideToolbar;
  set hideToolbar(bool? hideToolbar) => _$this._hideToolbar = hideToolbar;

  HomeDashboardParamsBuilder() {
    HomeDashboardParams._defaults(this);
  }

  HomeDashboardParamsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _hideToolbar = $v.hideToolbar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HomeDashboardParams other) {
    _$v = other as _$HomeDashboardParams;
  }

  @override
  void update(void Function(HomeDashboardParamsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HomeDashboardParams build() => _build();

  _$HomeDashboardParams _build() {
    final _$result =
        _$v ?? _$HomeDashboardParams._(id: id, hideToolbar: hideToolbar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
