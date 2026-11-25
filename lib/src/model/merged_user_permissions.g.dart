// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merged_user_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MergedUserPermissions extends MergedUserPermissions {
  @override
  final BuiltMap<String, BuiltSet<Operation>>? genericPermissions;
  @override
  final BuiltMap<String, MergedGroupPermissionInfo>? groupPermissions;
  @override
  final BuiltMap<String, MergedGroupTypePermissionInfo>? readGroupPermissions;
  @override
  final BuiltMap<String, MergedGroupTypePermissionInfo>? readEntityPermissions;
  @override
  final BuiltMap<String, MergedGroupTypePermissionInfo>? readAttrPermissions;
  @override
  final BuiltMap<String, MergedGroupTypePermissionInfo>? readTsPermissions;

  factory _$MergedUserPermissions([
    void Function(MergedUserPermissionsBuilder)? updates,
  ]) => (MergedUserPermissionsBuilder()..update(updates))._build();

  _$MergedUserPermissions._({
    this.genericPermissions,
    this.groupPermissions,
    this.readGroupPermissions,
    this.readEntityPermissions,
    this.readAttrPermissions,
    this.readTsPermissions,
  }) : super._();
  @override
  MergedUserPermissions rebuild(
    void Function(MergedUserPermissionsBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  MergedUserPermissionsBuilder toBuilder() =>
      MergedUserPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MergedUserPermissions &&
        genericPermissions == other.genericPermissions &&
        groupPermissions == other.groupPermissions &&
        readGroupPermissions == other.readGroupPermissions &&
        readEntityPermissions == other.readEntityPermissions &&
        readAttrPermissions == other.readAttrPermissions &&
        readTsPermissions == other.readTsPermissions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, genericPermissions.hashCode);
    _$hash = $jc(_$hash, groupPermissions.hashCode);
    _$hash = $jc(_$hash, readGroupPermissions.hashCode);
    _$hash = $jc(_$hash, readEntityPermissions.hashCode);
    _$hash = $jc(_$hash, readAttrPermissions.hashCode);
    _$hash = $jc(_$hash, readTsPermissions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MergedUserPermissions')
          ..add('genericPermissions', genericPermissions)
          ..add('groupPermissions', groupPermissions)
          ..add('readGroupPermissions', readGroupPermissions)
          ..add('readEntityPermissions', readEntityPermissions)
          ..add('readAttrPermissions', readAttrPermissions)
          ..add('readTsPermissions', readTsPermissions))
        .toString();
  }
}

class MergedUserPermissionsBuilder
    implements Builder<MergedUserPermissions, MergedUserPermissionsBuilder> {
  _$MergedUserPermissions? _$v;

  MapBuilder<String, BuiltSet<Operation>>? _genericPermissions;
  MapBuilder<String, BuiltSet<Operation>> get genericPermissions =>
      _$this._genericPermissions ??= MapBuilder<String, BuiltSet<Operation>>();
  set genericPermissions(
    MapBuilder<String, BuiltSet<Operation>>? genericPermissions,
  ) => _$this._genericPermissions = genericPermissions;

  MapBuilder<String, MergedGroupPermissionInfo>? _groupPermissions;
  MapBuilder<String, MergedGroupPermissionInfo> get groupPermissions =>
      _$this._groupPermissions ??=
          MapBuilder<String, MergedGroupPermissionInfo>();
  set groupPermissions(
    MapBuilder<String, MergedGroupPermissionInfo>? groupPermissions,
  ) => _$this._groupPermissions = groupPermissions;

  MapBuilder<String, MergedGroupTypePermissionInfo>? _readGroupPermissions;
  MapBuilder<String, MergedGroupTypePermissionInfo> get readGroupPermissions =>
      _$this._readGroupPermissions ??=
          MapBuilder<String, MergedGroupTypePermissionInfo>();
  set readGroupPermissions(
    MapBuilder<String, MergedGroupTypePermissionInfo>? readGroupPermissions,
  ) => _$this._readGroupPermissions = readGroupPermissions;

  MapBuilder<String, MergedGroupTypePermissionInfo>? _readEntityPermissions;
  MapBuilder<String, MergedGroupTypePermissionInfo> get readEntityPermissions =>
      _$this._readEntityPermissions ??=
          MapBuilder<String, MergedGroupTypePermissionInfo>();
  set readEntityPermissions(
    MapBuilder<String, MergedGroupTypePermissionInfo>? readEntityPermissions,
  ) => _$this._readEntityPermissions = readEntityPermissions;

  MapBuilder<String, MergedGroupTypePermissionInfo>? _readAttrPermissions;
  MapBuilder<String, MergedGroupTypePermissionInfo> get readAttrPermissions =>
      _$this._readAttrPermissions ??=
          MapBuilder<String, MergedGroupTypePermissionInfo>();
  set readAttrPermissions(
    MapBuilder<String, MergedGroupTypePermissionInfo>? readAttrPermissions,
  ) => _$this._readAttrPermissions = readAttrPermissions;

  MapBuilder<String, MergedGroupTypePermissionInfo>? _readTsPermissions;
  MapBuilder<String, MergedGroupTypePermissionInfo> get readTsPermissions =>
      _$this._readTsPermissions ??=
          MapBuilder<String, MergedGroupTypePermissionInfo>();
  set readTsPermissions(
    MapBuilder<String, MergedGroupTypePermissionInfo>? readTsPermissions,
  ) => _$this._readTsPermissions = readTsPermissions;

  MergedUserPermissionsBuilder() {
    MergedUserPermissions._defaults(this);
  }

  MergedUserPermissionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _genericPermissions = $v.genericPermissions?.toBuilder();
      _groupPermissions = $v.groupPermissions?.toBuilder();
      _readGroupPermissions = $v.readGroupPermissions?.toBuilder();
      _readEntityPermissions = $v.readEntityPermissions?.toBuilder();
      _readAttrPermissions = $v.readAttrPermissions?.toBuilder();
      _readTsPermissions = $v.readTsPermissions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MergedUserPermissions other) {
    _$v = other as _$MergedUserPermissions;
  }

  @override
  void update(void Function(MergedUserPermissionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MergedUserPermissions build() => _build();

  _$MergedUserPermissions _build() {
    _$MergedUserPermissions _$result;
    try {
      _$result =
          _$v ??
          _$MergedUserPermissions._(
            genericPermissions: _genericPermissions?.build(),
            groupPermissions: _groupPermissions?.build(),
            readGroupPermissions: _readGroupPermissions?.build(),
            readEntityPermissions: _readEntityPermissions?.build(),
            readAttrPermissions: _readAttrPermissions?.build(),
            readTsPermissions: _readTsPermissions?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'genericPermissions';
        _genericPermissions?.build();
        _$failedField = 'groupPermissions';
        _groupPermissions?.build();
        _$failedField = 'readGroupPermissions';
        _readGroupPermissions?.build();
        _$failedField = 'readEntityPermissions';
        _readEntityPermissions?.build();
        _$failedField = 'readAttrPermissions';
        _readAttrPermissions?.build();
        _$failedField = 'readTsPermissions';
        _readTsPermissions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'MergedUserPermissions',
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
