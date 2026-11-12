// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityInfo extends EntityInfo {
  @override
  final EntityId? id;
  @override
  final String? name;

  factory _$EntityInfo([void Function(EntityInfoBuilder)? updates]) =>
      (EntityInfoBuilder()..update(updates))._build();

  _$EntityInfo._({this.id, this.name}) : super._();
  @override
  EntityInfo rebuild(void Function(EntityInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityInfoBuilder toBuilder() => EntityInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityInfo && id == other.id && name == other.name;
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
    return (newBuiltValueToStringHelper(r'EntityInfo')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class EntityInfoBuilder implements Builder<EntityInfo, EntityInfoBuilder> {
  _$EntityInfo? _$v;

  EntityId? _id;
  EntityId? get id => _$this._id;
  set id(EntityId? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  EntityInfoBuilder() {
    EntityInfo._defaults(this);
  }

  EntityInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityInfo other) {
    _$v = other as _$EntityInfo;
  }

  @override
  void update(void Function(EntityInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityInfo build() => _build();

  _$EntityInfo _build() {
    final _$result = _$v ?? _$EntityInfo._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
