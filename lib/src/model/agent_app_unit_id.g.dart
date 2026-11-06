// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_unit_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppUnitId extends AgentAppUnitId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AgentAppUnitId([void Function(AgentAppUnitIdBuilder)? updates]) =>
      (AgentAppUnitIdBuilder()..update(updates))._build();

  _$AgentAppUnitId._({required this.entityType, required this.id}) : super._();
  @override
  AgentAppUnitId rebuild(void Function(AgentAppUnitIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppUnitIdBuilder toBuilder() => AgentAppUnitIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppUnitId &&
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
    return (newBuiltValueToStringHelper(r'AgentAppUnitId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AgentAppUnitIdBuilder
    implements Builder<AgentAppUnitId, AgentAppUnitIdBuilder>, EntityIdBuilder {
  _$AgentAppUnitId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AgentAppUnitIdBuilder() {
    AgentAppUnitId._defaults(this);
  }

  AgentAppUnitIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentAppUnitId other) {
    _$v = other as _$AgentAppUnitId;
  }

  @override
  void update(void Function(AgentAppUnitIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppUnitId build() => _build();

  _$AgentAppUnitId _build() {
    final _$result =
        _$v ??
        _$AgentAppUnitId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AgentAppUnitId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AgentAppUnitId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
