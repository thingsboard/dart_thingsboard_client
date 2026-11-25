// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_data_sort_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EntityDataSortOrder extends EntityDataSortOrder {
  @override
  final EntityKey? key;
  @override
  final Direction? direction;

  factory _$EntityDataSortOrder([
    void Function(EntityDataSortOrderBuilder)? updates,
  ]) => (EntityDataSortOrderBuilder()..update(updates))._build();

  _$EntityDataSortOrder._({this.key, this.direction}) : super._();
  @override
  EntityDataSortOrder rebuild(
    void Function(EntityDataSortOrderBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  EntityDataSortOrderBuilder toBuilder() =>
      EntityDataSortOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityDataSortOrder &&
        key == other.key &&
        direction == other.direction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, direction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityDataSortOrder')
          ..add('key', key)
          ..add('direction', direction))
        .toString();
  }
}

class EntityDataSortOrderBuilder
    implements Builder<EntityDataSortOrder, EntityDataSortOrderBuilder> {
  _$EntityDataSortOrder? _$v;

  EntityKeyBuilder? _key;
  EntityKeyBuilder get key => _$this._key ??= EntityKeyBuilder();
  set key(EntityKeyBuilder? key) => _$this._key = key;

  Direction? _direction;
  Direction? get direction => _$this._direction;
  set direction(Direction? direction) => _$this._direction = direction;

  EntityDataSortOrderBuilder() {
    EntityDataSortOrder._defaults(this);
  }

  EntityDataSortOrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key?.toBuilder();
      _direction = $v.direction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityDataSortOrder other) {
    _$v = other as _$EntityDataSortOrder;
  }

  @override
  void update(void Function(EntityDataSortOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityDataSortOrder build() => _build();

  _$EntityDataSortOrder _build() {
    _$EntityDataSortOrder _$result;
    try {
      _$result =
          _$v ??
          _$EntityDataSortOrder._(key: _key?.build(), direction: direction);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        _key?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EntityDataSortOrder',
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
