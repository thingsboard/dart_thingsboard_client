// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dashboards_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDashboardsInfo extends UserDashboardsInfo {
  @override
  final BuiltList<LastVisitedDashboardInfo>? last;
  @override
  final BuiltList<StarredDashboardInfo>? starred;

  factory _$UserDashboardsInfo([
    void Function(UserDashboardsInfoBuilder)? updates,
  ]) => (UserDashboardsInfoBuilder()..update(updates))._build();

  _$UserDashboardsInfo._({this.last, this.starred}) : super._();
  @override
  UserDashboardsInfo rebuild(
    void Function(UserDashboardsInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UserDashboardsInfoBuilder toBuilder() =>
      UserDashboardsInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDashboardsInfo &&
        last == other.last &&
        starred == other.starred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, last.hashCode);
    _$hash = $jc(_$hash, starred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDashboardsInfo')
          ..add('last', last)
          ..add('starred', starred))
        .toString();
  }
}

class UserDashboardsInfoBuilder
    implements Builder<UserDashboardsInfo, UserDashboardsInfoBuilder> {
  _$UserDashboardsInfo? _$v;

  ListBuilder<LastVisitedDashboardInfo>? _last;
  ListBuilder<LastVisitedDashboardInfo> get last =>
      _$this._last ??= ListBuilder<LastVisitedDashboardInfo>();
  set last(ListBuilder<LastVisitedDashboardInfo>? last) => _$this._last = last;

  ListBuilder<StarredDashboardInfo>? _starred;
  ListBuilder<StarredDashboardInfo> get starred =>
      _$this._starred ??= ListBuilder<StarredDashboardInfo>();
  set starred(ListBuilder<StarredDashboardInfo>? starred) =>
      _$this._starred = starred;

  UserDashboardsInfoBuilder() {
    UserDashboardsInfo._defaults(this);
  }

  UserDashboardsInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _last = $v.last?.toBuilder();
      _starred = $v.starred?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDashboardsInfo other) {
    _$v = other as _$UserDashboardsInfo;
  }

  @override
  void update(void Function(UserDashboardsInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDashboardsInfo build() => _build();

  _$UserDashboardsInfo _build() {
    _$UserDashboardsInfo _$result;
    try {
      _$result =
          _$v ??
          _$UserDashboardsInfo._(
            last: _last?.build(),
            starred: _starred?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'last';
        _last?.build();
        _$failedField = 'starred';
        _starred?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UserDashboardsInfo',
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
