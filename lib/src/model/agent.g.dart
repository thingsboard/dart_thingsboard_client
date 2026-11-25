// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Agent extends Agent {
  @override
  final AgentId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final String routingKey;
  @override
  final String secret;
  @override
  final AgentProfileId? agentProfileId;
  @override
  final int? version;
  @override
  final EntityId? ownerId;

  factory _$Agent([void Function(AgentBuilder)? updates]) =>
      (AgentBuilder()..update(updates))._build();

  _$Agent._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    required this.name,
    this.description,
    required this.routingKey,
    required this.secret,
    this.agentProfileId,
    this.version,
    this.ownerId,
  }) : super._();
  @override
  Agent rebuild(void Function(AgentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentBuilder toBuilder() => AgentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Agent &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        name == other.name &&
        description == other.description &&
        routingKey == other.routingKey &&
        secret == other.secret &&
        agentProfileId == other.agentProfileId &&
        version == other.version &&
        ownerId == other.ownerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, routingKey.hashCode);
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, agentProfileId.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Agent')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('name', name)
          ..add('description', description)
          ..add('routingKey', routingKey)
          ..add('secret', secret)
          ..add('agentProfileId', agentProfileId)
          ..add('version', version)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class AgentBuilder implements Builder<Agent, AgentBuilder> {
  _$Agent? _$v;

  AgentIdBuilder? _id;
  AgentIdBuilder get id => _$this._id ??= AgentIdBuilder();
  set id(AgentIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  CustomerIdBuilder? _customerId;
  CustomerIdBuilder get customerId =>
      _$this._customerId ??= CustomerIdBuilder();
  set customerId(CustomerIdBuilder? customerId) =>
      _$this._customerId = customerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _routingKey;
  String? get routingKey => _$this._routingKey;
  set routingKey(String? routingKey) => _$this._routingKey = routingKey;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  AgentProfileIdBuilder? _agentProfileId;
  AgentProfileIdBuilder get agentProfileId =>
      _$this._agentProfileId ??= AgentProfileIdBuilder();
  set agentProfileId(AgentProfileIdBuilder? agentProfileId) =>
      _$this._agentProfileId = agentProfileId;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  AgentBuilder() {
    Agent._defaults(this);
  }

  AgentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _routingKey = $v.routingKey;
      _secret = $v.secret;
      _agentProfileId = $v.agentProfileId?.toBuilder();
      _version = $v.version;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Agent other) {
    _$v = other as _$Agent;
  }

  @override
  void update(void Function(AgentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Agent build() => _build();

  _$Agent _build() {
    _$Agent _$result;
    try {
      _$result =
          _$v ??
          _$Agent._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Agent', 'name'),
            description: description,
            routingKey: BuiltValueNullFieldError.checkNotNull(
              routingKey,
              r'Agent',
              'routingKey',
            ),
            secret: BuiltValueNullFieldError.checkNotNull(
              secret,
              r'Agent',
              'secret',
            ),
            agentProfileId: _agentProfileId?.build(),
            version: version,
            ownerId: ownerId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'customerId';
        _customerId?.build();

        _$failedField = 'agentProfileId';
        _agentProfileId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Agent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
