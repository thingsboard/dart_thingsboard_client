// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'converter_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConverterId extends ConverterId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$ConverterId([void Function(ConverterIdBuilder)? updates]) =>
      (ConverterIdBuilder()..update(updates))._build();

  _$ConverterId._({required this.entityType, required this.id}) : super._();
  @override
  ConverterId rebuild(void Function(ConverterIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConverterIdBuilder toBuilder() => ConverterIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConverterId &&
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
    return (newBuiltValueToStringHelper(r'ConverterId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class ConverterIdBuilder
    implements Builder<ConverterId, ConverterIdBuilder>, EntityIdBuilder {
  _$ConverterId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  ConverterIdBuilder() {
    ConverterId._defaults(this);
  }

  ConverterIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant ConverterId other) {
    _$v = other as _$ConverterId;
  }

  @override
  void update(void Function(ConverterIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConverterId build() => _build();

  _$ConverterId _build() {
    final _$result =
        _$v ??
        _$ConverterId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'ConverterId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'ConverterId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
