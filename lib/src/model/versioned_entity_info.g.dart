// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'versioned_entity_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VersionedEntityInfo extends VersionedEntityInfo {
  @override
  final EntityId? externalId;
  @override
  final String? path;

  factory _$VersionedEntityInfo([
    void Function(VersionedEntityInfoBuilder)? updates,
  ]) => (VersionedEntityInfoBuilder()..update(updates))._build();

  _$VersionedEntityInfo._({this.externalId, this.path}) : super._();
  @override
  VersionedEntityInfo rebuild(
    void Function(VersionedEntityInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VersionedEntityInfoBuilder toBuilder() =>
      VersionedEntityInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VersionedEntityInfo &&
        externalId == other.externalId &&
        path == other.path;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VersionedEntityInfo')
          ..add('externalId', externalId)
          ..add('path', path))
        .toString();
  }
}

class VersionedEntityInfoBuilder
    implements Builder<VersionedEntityInfo, VersionedEntityInfoBuilder> {
  _$VersionedEntityInfo? _$v;

  EntityId? _externalId;
  EntityId? get externalId => _$this._externalId;
  set externalId(EntityId? externalId) => _$this._externalId = externalId;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  VersionedEntityInfoBuilder() {
    VersionedEntityInfo._defaults(this);
  }

  VersionedEntityInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _externalId = $v.externalId;
      _path = $v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VersionedEntityInfo other) {
    _$v = other as _$VersionedEntityInfo;
  }

  @override
  void update(void Function(VersionedEntityInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VersionedEntityInfo build() => _build();

  _$VersionedEntityInfo _build() {
    final _$result =
        _$v ?? _$VersionedEntityInfo._(externalId: externalId, path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
