// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerId extends CustomerId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$CustomerId([void Function(CustomerIdBuilder)? updates]) =>
      (CustomerIdBuilder()..update(updates))._build();

  _$CustomerId._({required this.entityType, required this.id}) : super._();
  @override
  CustomerId rebuild(void Function(CustomerIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomerIdBuilder toBuilder() => CustomerIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerId &&
        entityType == other.entityType &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class CustomerIdBuilder
    implements Builder<CustomerId, CustomerIdBuilder>, EntityIdBuilder {
  _$CustomerId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  CustomerIdBuilder() {
    CustomerId._defaults(this);
  }

  CustomerIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CustomerId other) {
    _$v = other as _$CustomerId;
  }

  @override
  void update(void Function(CustomerIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerId build() => _build();

  _$CustomerId _build() {
    final _$result =
        _$v ??
        _$CustomerId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'CustomerId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'CustomerId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
