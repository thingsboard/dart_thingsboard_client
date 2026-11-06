// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_profile_id.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentProfileId extends AgentProfileId {
  @override
  final EntityType entityType;
  @override
  final String id;

  factory _$AgentProfileId([void Function(AgentProfileIdBuilder)? updates]) =>
      (AgentProfileIdBuilder()..update(updates))._build();

  _$AgentProfileId._({required this.entityType, required this.id}) : super._();
  @override
  AgentProfileId rebuild(void Function(AgentProfileIdBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentProfileIdBuilder toBuilder() => AgentProfileIdBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentProfileId &&
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
    return (newBuiltValueToStringHelper(r'AgentProfileId')
          ..add('entityType', entityType)
          ..add('id', id))
        .toString();
  }
}

class AgentProfileIdBuilder
    implements Builder<AgentProfileId, AgentProfileIdBuilder>, EntityIdBuilder {
  _$AgentProfileId? _$v;

  EntityType? _entityType;
  EntityType? get entityType => _$this._entityType;
  set entityType(covariant EntityType? entityType) =>
      _$this._entityType = entityType;

  String? _id;
  String? get id => _$this._id;
  set id(covariant String? id) => _$this._id = id;

  AgentProfileIdBuilder() {
    AgentProfileId._defaults(this);
  }

  AgentProfileIdBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _entityType = $v.entityType;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant AgentProfileId other) {
    _$v = other as _$AgentProfileId;
  }

  @override
  void update(void Function(AgentProfileIdBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentProfileId build() => _build();

  _$AgentProfileId _build() {
    final _$result =
        _$v ??
        _$AgentProfileId._(
          entityType: BuiltValueNullFieldError.checkNotNull(
            entityType,
            r'AgentProfileId',
            'entityType',
          ),
          id: BuiltValueNullFieldError.checkNotNull(
            id,
            r'AgentProfileId',
            'id',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
