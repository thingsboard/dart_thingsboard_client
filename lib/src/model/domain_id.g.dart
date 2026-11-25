// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'domain_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DomainId extends DomainId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$DomainId([void Function(DomainIdBuilder)? updates]) =>
      (DomainIdBuilder()..update(updates))._build();

  _$DomainId._({required this.entityType, required this.id}) : super._();
  @override
  DomainId rebuild(void Function(DomainIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DomainIdBuilder toBuilder() => DomainIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DomainId &&
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
    return (newBuiltValueToStringHelper(r'DomainId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class DomainIdBuilder
    implements Builder<DomainId, DomainIdBuilder>, EntityIdBuilder {
  _$DomainId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  DomainIdBuilder() {
    DomainId._defaults(this);
  }

  DomainIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant DomainId other) {
    _$v = other as _$DomainId;
  }

  @override
  void update(void Function(DomainIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DomainId build() => _build();

  _$DomainId _build() {
    final _$result =
        _$v ??
        _$DomainId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'DomainId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'DomainId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
