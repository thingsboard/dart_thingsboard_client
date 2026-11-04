// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_key.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityKey extends EntityKey {
  @override
  final EntityKeyType? type;
  @override
  final String? key;

  factory _$EntityKey([void Function(EntityKeyBuilder)? updates]) =>
      (EntityKeyBuilder()..update(updates))._build();

  _$EntityKey._({this.type, this.key}) : super._();
  @override
  EntityKey rebuild(void Function(EntityKeyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityKeyBuilder toBuilder() => EntityKeyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityKey && type == other.type && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityKey')
          ..add('type', type)
          ..add('key', key))
        .toString();
  }
}

class EntityKeyBuilder implements Builder<EntityKey, EntityKeyBuilder> {
  _$EntityKey? _$v;

  EntityKeyType? _type;
  EntityKeyType? get type => _$this._type;
  set type(EntityKeyType? type) => _$this._type = type;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  EntityKeyBuilder() {
    EntityKey._defaults(this);
  }

  EntityKeyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _key = $v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityKey other) {
    _$v = other as _$EntityKey;
  }

  @override
  void update(void Function(EntityKeyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityKey build() => _build();

  _$EntityKey _build() {
    final _$result = _$v ?? _$EntityKey._(type: type, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
