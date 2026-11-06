// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alias_entity_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AliasEntityId extends AliasEntityId {
  @override
  final String entityType;
  @override
  final String? id;

  factory _$AliasEntityId([void Function(AliasEntityIdBuilder)? updates]) =>
      (AliasEntityIdBuilder()..update(updates))._build();

  _$AliasEntityId._({required this.entityType, this.id}) : super._();
  @override
  AliasEntityId rebuild(void Function(AliasEntityIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AliasEntityIdBuilder toBuilder() => AliasEntityIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AliasEntityId &&
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
    return (newBuiltValueToStringHelper(r'AliasEntityId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AliasEntityIdBuilder
    implements Builder<AliasEntityId, AliasEntityIdBuilder> {
  _$AliasEntityId? _$v;

  String? _entityType;
  String? get entityType => _$this._entityType;
  set entityType(String? entityType) => _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  AliasEntityIdBuilder() {
    AliasEntityId._defaults(this);
  }

  AliasEntityIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AliasEntityId other) {
    _$v = other as _$AliasEntityId;
  }

  @override
  void update(void Function(AliasEntityIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AliasEntityId build() => _build();

  _$AliasEntityId _build() {
    final _$result =
        _$v ??
        _$AliasEntityId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AliasEntityId',
            'entityType',
          ),
          id: id,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
