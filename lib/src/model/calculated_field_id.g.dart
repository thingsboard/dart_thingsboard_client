// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_field_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalculatedFieldId extends CalculatedFieldId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$CalculatedFieldId([
    void Function(CalculatedFieldIdBuilder)? updates,
  ]) => (CalculatedFieldIdBuilder()..update(updates))._build();

  _$CalculatedFieldId._({required this.entityType, required this.id})
    : super._();
  @override
  CalculatedFieldId rebuild(void Function(CalculatedFieldIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalculatedFieldIdBuilder toBuilder() =>
      CalculatedFieldIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalculatedFieldId &&
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
    return (newBuiltValueToStringHelper(r'CalculatedFieldId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class CalculatedFieldIdBuilder
    implements
        Builder<CalculatedFieldId, CalculatedFieldIdBuilder>,
        EntityIdBuilder {
  _$CalculatedFieldId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  CalculatedFieldIdBuilder() {
    CalculatedFieldId._defaults(this);
  }

  CalculatedFieldIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CalculatedFieldId other) {
    _$v = other as _$CalculatedFieldId;
  }

  @override
  void update(void Function(CalculatedFieldIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalculatedFieldId build() => _build();

  _$CalculatedFieldId _build() {
    final _$result =
        _$v ??
        _$CalculatedFieldId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'CalculatedFieldId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'CalculatedFieldId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
