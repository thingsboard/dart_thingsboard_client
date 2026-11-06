// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_visited_dashboard_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LastVisitedDashboardInfo extends LastVisitedDashboardInfo {
  @override
  final String? id;
  @override
  final String? title;
  @override
  final bool? starred;
  @override
  final int? lastVisited;

  factory _$LastVisitedDashboardInfo([
    void Function(LastVisitedDashboardInfoBuilder)? updates,
  ]) => (LastVisitedDashboardInfoBuilder()..update(updates))._build();

  _$LastVisitedDashboardInfo._({
    this.id,
    this.title,
    this.starred,
    this.lastVisited,
  }) : super._();
  @override
  LastVisitedDashboardInfo rebuild(
    void Function(LastVisitedDashboardInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  LastVisitedDashboardInfoBuilder toBuilder() =>
      LastVisitedDashboardInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LastVisitedDashboardInfo &&
        id == other.id &&
        title == other.title &&
        starred == other.starred &&
        lastVisited == other.lastVisited;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, starred.hashCode);
    _$hash = $jc(_$hash, lastVisited.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LastVisitedDashboardInfo')
          ..add('id', id)
          ..add('title', title)
          ..add('starred', starred)
          ..add('lastVisited', lastVisited))
        .toString();
  }
}

class LastVisitedDashboardInfoBuilder
    implements
        Builder<LastVisitedDashboardInfo, LastVisitedDashboardInfoBuilder> {
  _$LastVisitedDashboardInfo? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  bool? _starred;
  bool? get starred => _$this._starred;
  set starred(bool? starred) => _$this._starred = starred;

  int? _lastVisited;
  int? get lastVisited => _$this._lastVisited;
  set lastVisited(int? lastVisited) => _$this._lastVisited = lastVisited;

  LastVisitedDashboardInfoBuilder() {
    LastVisitedDashboardInfo._defaults(this);
  }

  LastVisitedDashboardInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _starred = $v.starred;
      _lastVisited = $v.lastVisited;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LastVisitedDashboardInfo other) {
    _$v = other as _$LastVisitedDashboardInfo;
  }

  @override
  void update(void Function(LastVisitedDashboardInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LastVisitedDashboardInfo build() => _build();

  _$LastVisitedDashboardInfo _build() {
    final _$result =
        _$v ??
        _$LastVisitedDashboardInfo._(
          id: id,
          title: title,
          starred: starred,
          lastVisited: lastVisited,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
