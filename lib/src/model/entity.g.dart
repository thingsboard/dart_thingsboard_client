// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Entity extends Entity {
  @override
  final bool? used;
  @override
  final int? activeCount;
  @override
  final int? totalCount;

  factory _$Entity([void Function(EntityBuilder)? updates]) =>
      (EntityBuilder()..update(updates))._build();

  _$Entity._({this.used, this.activeCount, this.totalCount}) : super._();
  @override
  Entity rebuild(void Function(EntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityBuilder toBuilder() => EntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Entity &&
        used == other.used &&
        activeCount == other.activeCount &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, used.hashCode);
    _$hash = $jc(_$hash, activeCount.hashCode);
    _$hash = $jc(_$hash, totalCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Entity')
          ..add('used', used)
          ..add('activeCount', activeCount)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class EntityBuilder implements Builder<Entity, EntityBuilder> {
  _$Entity? _$v;

  bool? _used;
  bool? get used => _$this._used;
  set used(bool? used) => _$this._used = used;

  int? _activeCount;
  int? get activeCount => _$this._activeCount;
  set activeCount(int? activeCount) => _$this._activeCount = activeCount;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  EntityBuilder() {
    Entity._defaults(this);
  }

  EntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _used = $v.used;
      _activeCount = $v.activeCount;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Entity other) {
    _$v = other as _$Entity;
  }

  @override
  void update(void Function(EntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Entity build() => _build();

  _$Entity _build() {
    final _$result =
        _$v ??
        _$Entity._(
          used: used,
          activeCount: activeCount,
          totalCount: totalCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
