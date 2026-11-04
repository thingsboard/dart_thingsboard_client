// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_event_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppEventId extends AgentAppEventId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AgentAppEventId([void Function(AgentAppEventIdBuilder)? updates]) =>
      (AgentAppEventIdBuilder()..update(updates))._build();

  _$AgentAppEventId._({required this.entityType, required this.id}) : super._();
  @override
  AgentAppEventId rebuild(void Function(AgentAppEventIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppEventIdBuilder toBuilder() => AgentAppEventIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppEventId &&
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
    return (newBuiltValueToStringHelper(r'AgentAppEventId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AgentAppEventIdBuilder
    implements
        Builder<AgentAppEventId, AgentAppEventIdBuilder>,
        EntityIdBuilder {
  _$AgentAppEventId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AgentAppEventIdBuilder() {
    AgentAppEventId._defaults(this);
  }

  AgentAppEventIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentAppEventId other) {
    _$v = other as _$AgentAppEventId;
  }

  @override
  void update(void Function(AgentAppEventIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppEventId build() => _build();

  _$AgentAppEventId _build() {
    final _$result =
        _$v ??
        _$AgentAppEventId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AgentAppEventId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AgentAppEventId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
