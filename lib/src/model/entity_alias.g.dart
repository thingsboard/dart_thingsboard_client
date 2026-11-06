// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_alias.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityAlias extends EntityAlias {
  @override
  final String? id;
  @override
  final String? alias;
  @override
  final EntityFilter? filter;

  factory _$EntityAlias([void Function(EntityAliasBuilder)? updates]) =>
      (EntityAliasBuilder()..update(updates))._build();

  _$EntityAlias._({this.id, this.alias, this.filter}) : super._();
  @override
  EntityAlias rebuild(void Function(EntityAliasBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityAliasBuilder toBuilder() => EntityAliasBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityAlias &&
        id == other.id &&
        alias == other.alias &&
        filter == other.filter;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityAlias')
          ..add('id', id)
          ..add('alias', alias)
          ..add('filter', filter))
        .toString();
  }
}

class EntityAliasBuilder implements Builder<EntityAlias, EntityAliasBuilder> {
  _$EntityAlias? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  EntityFilter? _filter;
  EntityFilter? get filter => _$this._filter;
  set filter(EntityFilter? filter) => _$this._filter = filter;

  EntityAliasBuilder() {
    EntityAlias._defaults(this);
  }

  EntityAliasBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _alias = $v.alias;
      _filter = $v.filter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityAlias other) {
    _$v = other as _$EntityAlias;
  }

  @override
  void update(void Function(EntityAliasBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityAlias build() => _build();

  _$EntityAlias _build() {
    final _$result =
        _$v ?? _$EntityAlias._(id: id, alias: alias, filter: filter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
