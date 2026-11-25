// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merged_group_type_permission_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MergedGroupTypePermissionInfo extends MergedGroupTypePermissionInfo {
  @override
  final BuiltList<EntityGroupId>? entityGroupIds;
  @override
  final bool? hasGenericRead;

  factory _$MergedGroupTypePermissionInfo([
    void Function(MergedGroupTypePermissionInfoBuilder)? updates,
  ]) => (MergedGroupTypePermissionInfoBuilder()..update(updates))._build();

  _$MergedGroupTypePermissionInfo._({this.entityGroupIds, this.hasGenericRead})
    : super._();
  @override
  MergedGroupTypePermissionInfo rebuild(
    void Function(MergedGroupTypePermissionInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MergedGroupTypePermissionInfoBuilder toBuilder() =>
      MergedGroupTypePermissionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MergedGroupTypePermissionInfo &&
        entityGroupIds == other.entityGroupIds &&
        hasGenericRead == other.hasGenericRead;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityGroupIds.hashCode);
    _$hash = $jc(_$hash, hasGenericRead.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MergedGroupTypePermissionInfo')
          ..add('entityGroupIds', entityGroupIds)
          ..add('hasGenericRead', hasGenericRead))
        .toString();
  }
}

class MergedGroupTypePermissionInfoBuilder
    implements
        Builder<
          MergedGroupTypePermissionInfo,
          MergedGroupTypePermissionInfoBuilder
        > {
  _$MergedGroupTypePermissionInfo? _$v;

  ListBuilder<EntityGroupId>? _entityGroupIds;
  ListBuilder<EntityGroupId> get entityGroupIds =>
      _$this._entityGroupIds ??= ListBuilder<EntityGroupId>();
  set entityGroupIds(ListBuilder<EntityGroupId>? entityGroupIds) =>
      _$this._entityGroupIds = entityGroupIds;

  bool? _hasGenericRead;
  bool? get hasGenericRead => _$this._hasGenericRead;
  set hasGenericRead(bool? hasGenericRead) =>
      _$this._hasGenericRead = hasGenericRead;

  MergedGroupTypePermissionInfoBuilder() {
    MergedGroupTypePermissionInfo._defaults(this);
  }

  MergedGroupTypePermissionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityGroupIds = $v.entityGroupIds?.toBuilder();
      _hasGenericRead = $v.hasGenericRead;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MergedGroupTypePermissionInfo other) {
    _$v = other as _$MergedGroupTypePermissionInfo;
  }

  @override
  void update(void Function(MergedGroupTypePermissionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MergedGroupTypePermissionInfo build() => _build();

  _$MergedGroupTypePermissionInfo _build() {
    _$MergedGroupTypePermissionInfo _$result;
    try {
      _$result =
          _$v ??
          _$MergedGroupTypePermissionInfo._(
            entityGroupIds: _entityGroupIds?.build(),
            hasGenericRead: hasGenericRead,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entityGroupIds';
        _entityGroupIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MergedGroupTypePermissionInfo',
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
