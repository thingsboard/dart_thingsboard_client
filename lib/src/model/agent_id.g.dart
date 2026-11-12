// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentId extends AgentId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AgentId([void Function(AgentIdBuilder)? updates]) =>
      (AgentIdBuilder()..update(updates))._build();

  _$AgentId._({required this.entityType, required this.id}) : super._();
  @override
  AgentId rebuild(void Function(AgentIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentIdBuilder toBuilder() => AgentIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentId && entityType == other.entityType && id == other.id;
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
    return (newBuiltValueToStringHelper(r'AgentId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AgentIdBuilder
    implements Builder<AgentId, AgentIdBuilder>, EntityIdBuilder {
  _$AgentId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AgentIdBuilder() {
    AgentId._defaults(this);
  }

  AgentIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentId other) {
    _$v = other as _$AgentId;
  }

  @override
  void update(void Function(AgentIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentId build() => _build();

  _$AgentId _build() {
    final _$result =
        _$v ??
        _$AgentId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AgentId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(id, r'AgentId', 'id'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
