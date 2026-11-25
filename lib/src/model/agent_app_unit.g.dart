// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_unit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppUnit extends AgentAppUnit {
  @override
  final AgentAppUnitId? id;
  @override
  final int? createdTime;
  @override
  final TenantId tenantId;
  @override
  final AgentApplicationId agentApplicationId;
  @override
  final String identifier;
  @override
  final AgentAppUnitType type;

  factory _$AgentAppUnit([void Function(AgentAppUnitBuilder)? updates]) =>
      (AgentAppUnitBuilder()..update(updates))._build();

  _$AgentAppUnit._({
    this.id,
    this.createdTime,
    required this.tenantId,
    required this.agentApplicationId,
    required this.identifier,
    required this.type,
  }) : super._();
  @override
  AgentAppUnit rebuild(void Function(AgentAppUnitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppUnitBuilder toBuilder() => AgentAppUnitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppUnit &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        agentApplicationId == other.agentApplicationId &&
        identifier == other.identifier &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, agentApplicationId.hashCode);
    _$hash = $jc(_$hash, identifier.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppUnit')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('agentApplicationId', agentApplicationId)
          ..add('identifier', identifier)
          ..add('type', type))
        .toString();
  }
}

class AgentAppUnitBuilder
    implements Builder<AgentAppUnit, AgentAppUnitBuilder> {
  _$AgentAppUnit? _$v;

  AgentAppUnitIdBuilder? _id;
  AgentAppUnitIdBuilder get id => _$this._id ??= AgentAppUnitIdBuilder();
  set id(AgentAppUnitIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  AgentApplicationIdBuilder? _agentApplicationId;
  AgentApplicationIdBuilder get agentApplicationId =>
      _$this._agentApplicationId ??= AgentApplicationIdBuilder();
  set agentApplicationId(AgentApplicationIdBuilder? agentApplicationId) =>
      _$this._agentApplicationId = agentApplicationId;

  String? _identifier;
  String? get identifier => _$this._identifier;
  set identifier(String? identifier) => _$this._identifier = identifier;

  AgentAppUnitType? _type;
  AgentAppUnitType? get type => _$this._type;
  set type(AgentAppUnitType? type) => _$this._type = type;

  AgentAppUnitBuilder() {
    AgentAppUnit._defaults(this);
  }

  AgentAppUnitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId.toBuilder();
      _agentApplicationId = $v.agentApplicationId.toBuilder();
      _identifier = $v.identifier;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppUnit other) {
    _$v = other as _$AgentAppUnit;
  }

  @override
  void update(void Function(AgentAppUnitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppUnit build() => _build();

  _$AgentAppUnit _build() {
    _$AgentAppUnit _$result;
    try {
      _$result =
          _$v ??
          _$AgentAppUnit._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: tenantId.build(),
            agentApplicationId: agentApplicationId.build(),
            identifier: BuiltValueNullFieldError.checkNotNull(
              identifier,
              r'AgentAppUnit',
              'identifier',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'AgentAppUnit',
              'type',
            ),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        tenantId.build();
        _$failedField = 'agentApplicationId';
        agentApplicationId.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentAppUnit',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
