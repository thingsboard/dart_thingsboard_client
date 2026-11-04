// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_bulk_action_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentBulkActionId extends AgentBulkActionId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AgentBulkActionId([
    void Function(AgentBulkActionIdBuilder)? updates,
  ]) => (AgentBulkActionIdBuilder()..update(updates))._build();

  _$AgentBulkActionId._({required this.entityType, required this.id})
    : super._();
  @override
  AgentBulkActionId rebuild(void Function(AgentBulkActionIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentBulkActionIdBuilder toBuilder() =>
      AgentBulkActionIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentBulkActionId &&
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
    return (newBuiltValueToStringHelper(r'AgentBulkActionId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AgentBulkActionIdBuilder
    implements
        Builder<AgentBulkActionId, AgentBulkActionIdBuilder>,
        EntityIdBuilder {
  _$AgentBulkActionId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AgentBulkActionIdBuilder() {
    AgentBulkActionId._defaults(this);
  }

  AgentBulkActionIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentBulkActionId other) {
    _$v = other as _$AgentBulkActionId;
  }

  @override
  void update(void Function(AgentBulkActionIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentBulkActionId build() => _build();

  _$AgentBulkActionId _build() {
    final _$result =
        _$v ??
        _$AgentBulkActionId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AgentBulkActionId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AgentBulkActionId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
