// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starred_dashboard_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StarredDashboardInfo extends StarredDashboardInfo {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final int? starredAt;

  factory _$StarredDashboardInfo([
    void Function(StarredDashboardInfoBuilder)? updates,
  ]) => (StarredDashboardInfoBuilder()..update(updates))._build();

  _$StarredDashboardInfo._({this.id, this.title, this.starredAt}) : super._();
  @override
  StarredDashboardInfo rebuild(
    void Function(StarredDashboardInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StarredDashboardInfoBuilder toBuilder() =>
      StarredDashboardInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StarredDashboardInfo &&
        id == other.id &&
        title == other.title &&
        starredAt == other.starredAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, starredAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StarredDashboardInfo')
          ..add('id', id)
          ..add('title', title)
          ..add('starredAt', starredAt))
        .toString();
  }
}

class StarredDashboardInfoBuilder
    implements Builder<StarredDashboardInfo, StarredDashboardInfoBuilder> {
  _$StarredDashboardInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  int? _starredAt;
  int? get starredAt => _$this._starredAt;
  set starredAt(int? starredAt) => _$this._starredAt = starredAt;

  StarredDashboardInfoBuilder() {
    StarredDashboardInfo._defaults(this);
  }

  StarredDashboardInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _starredAt = $v.starredAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StarredDashboardInfo other) {
    _$v = other as _$StarredDashboardInfo;
  }

  @override
  void update(void Function(StarredDashboardInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StarredDashboardInfo build() => _build();

  _$StarredDashboardInfo _build() {
    final _$result =
        _$v ??
        _$StarredDashboardInfo._(id: id, title: title, starredAt: starredAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
