// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_profile_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppProfileId extends AgentAppProfileId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AgentAppProfileId([
    void Function(AgentAppProfileIdBuilder)? updates,
  ]) => (AgentAppProfileIdBuilder()..update(updates))._build();

  _$AgentAppProfileId._({required this.entityType, required this.id})
    : super._();
  @override
  AgentAppProfileId rebuild(void Function(AgentAppProfileIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppProfileIdBuilder toBuilder() =>
      AgentAppProfileIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppProfileId &&
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
    return (newBuiltValueToStringHelper(r'AgentAppProfileId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AgentAppProfileIdBuilder
    implements
        Builder<AgentAppProfileId, AgentAppProfileIdBuilder>,
        EntityIdBuilder {
  _$AgentAppProfileId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AgentAppProfileIdBuilder() {
    AgentAppProfileId._defaults(this);
  }

  AgentAppProfileIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentAppProfileId other) {
    _$v = other as _$AgentAppProfileId;
  }

  @override
  void update(void Function(AgentAppProfileIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppProfileId build() => _build();

  _$AgentAppProfileId _build() {
    final _$result =
        _$v ??
        _$AgentAppProfileId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AgentAppProfileId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AgentAppProfileId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
