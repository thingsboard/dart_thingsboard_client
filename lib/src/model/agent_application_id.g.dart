// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_application_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentApplicationId extends AgentApplicationId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AgentApplicationId([
    void Function(AgentApplicationIdBuilder)? updates,
  ]) => (AgentApplicationIdBuilder()..update(updates))._build();

  _$AgentApplicationId._({required this.entityType, required this.id})
    : super._();
  @override
  AgentApplicationId rebuild(
    void Function(AgentApplicationIdBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentApplicationIdBuilder toBuilder() =>
      AgentApplicationIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentApplicationId &&
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
    return (newBuiltValueToStringHelper(r'AgentApplicationId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AgentApplicationIdBuilder
    implements
        Builder<AgentApplicationId, AgentApplicationIdBuilder>,
        EntityIdBuilder {
  _$AgentApplicationId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AgentApplicationIdBuilder() {
    AgentApplicationId._defaults(this);
  }

  AgentApplicationIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentApplicationId other) {
    _$v = other as _$AgentApplicationId;
  }

  @override
  void update(void Function(AgentApplicationIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentApplicationId build() => _build();

  _$AgentApplicationId _build() {
    final _$result =
        _$v ??
        _$AgentApplicationId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AgentApplicationId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AgentApplicationId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
