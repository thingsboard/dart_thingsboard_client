// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationId extends IntegrationId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$IntegrationId([void Function(IntegrationIdBuilder)? updates]) =>
      (IntegrationIdBuilder()..update(updates))._build();

  _$IntegrationId._({required this.entityType, required this.id}) : super._();
  @override
  IntegrationId rebuild(void Function(IntegrationIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationIdBuilder toBuilder() => IntegrationIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationId &&
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
    return (newBuiltValueToStringHelper(r'IntegrationId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class IntegrationIdBuilder
    implements Builder<IntegrationId, IntegrationIdBuilder>, EntityIdBuilder {
  _$IntegrationId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  IntegrationIdBuilder() {
    IntegrationId._defaults(this);
  }

  IntegrationIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant IntegrationId other) {
    _$v = other as _$IntegrationId;
  }

  @override
  void update(void Function(IntegrationIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationId build() => _build();

  _$IntegrationId _build() {
    final _$result =
        _$v ??
        _$IntegrationId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'IntegrationId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'IntegrationId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
