// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merged_group_permission_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MergedGroupPermissionInfo extends MergedGroupPermissionInfo {
  @override
  final EntityType? entityType;
  @override
  final BuiltSet<Operation>? operations;

  factory _$MergedGroupPermissionInfo([
    void Function(MergedGroupPermissionInfoBuilder)? updates,
  ]) => (MergedGroupPermissionInfoBuilder()..update(updates))._build();

  _$MergedGroupPermissionInfo._({this.entityType, this.operations}) : super._();
  @override
  MergedGroupPermissionInfo rebuild(
    void Function(MergedGroupPermissionInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MergedGroupPermissionInfoBuilder toBuilder() =>
      MergedGroupPermissionInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MergedGroupPermissionInfo &&
        entityType == other.entityType &&
        operations == other.operations;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, operations.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MergedGroupPermissionInfo')
          ..add('entityType', entityType)
          ..add('operations', operations))
        .toString();
  }
}

class MergedGroupPermissionInfoBuilder
    implements
        Builder<MergedGroupPermissionInfo, MergedGroupPermissionInfoBuilder> {
  _$MergedGroupPermissionInfo? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(EntityType? entityType) => _$this._entityType = entityType;

  SetBuilder<Operation>? _operations;
  SetBuilder<Operation> get operations =>
      _$this._operations ??= SetBuilder<Operation>();
  set operations(SetBuilder<Operation>? operations) =>
      _$this._operations = operations;

  MergedGroupPermissionInfoBuilder() {
    MergedGroupPermissionInfo._defaults(this);
  }

  MergedGroupPermissionInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _operations = $v.operations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MergedGroupPermissionInfo other) {
    _$v = other as _$MergedGroupPermissionInfo;
  }

  @override
  void update(void Function(MergedGroupPermissionInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MergedGroupPermissionInfo build() => _build();

  _$MergedGroupPermissionInfo _build() {
    _$MergedGroupPermissionInfo _$result;
    try {
      _$result =
          _$v ??
          _$MergedGroupPermissionInfo._(
            entityType: entityType,
            operations: _operations?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operations';
        _operations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MergedGroupPermissionInfo',
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
