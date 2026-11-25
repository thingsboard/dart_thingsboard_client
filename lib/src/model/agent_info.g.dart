// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentInfo extends AgentInfo {
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
  final String? customerTitle;
  @override
  final bool? customerIsPublic;
  @override
  final String? agentProfileName;
  @override
  final String? ownerName;
  @override
  final BuiltList<EntityInfo>? groups;
  @override
  final bool? active;
  @override
  final String? agentVersion;
  @override
  final String? upgradeTargetImageRef;
  @override
  final EntityId? ownerId;

  factory _$AgentInfo([void Function(AgentInfoBuilder)? updates]) =>
      (AgentInfoBuilder()..update(updates))._build();

  _$AgentInfo._({
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
    this.customerTitle,
    this.customerIsPublic,
    this.agentProfileName,
    this.ownerName,
    this.groups,
    this.active,
    this.agentVersion,
    this.upgradeTargetImageRef,
    this.ownerId,
  }) : super._();
  @override
  AgentInfo rebuild(void Function(AgentInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentInfoBuilder toBuilder() => AgentInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentInfo &&
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
        customerTitle == other.customerTitle &&
        customerIsPublic == other.customerIsPublic &&
        agentProfileName == other.agentProfileName &&
        ownerName == other.ownerName &&
        groups == other.groups &&
        active == other.active &&
        agentVersion == other.agentVersion &&
        upgradeTargetImageRef == other.upgradeTargetImageRef &&
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
    _$hash = $jc(_$hash, customerTitle.hashCode);
    _$hash = $jc(_$hash, customerIsPublic.hashCode);
    _$hash = $jc(_$hash, agentProfileName.hashCode);
    _$hash = $jc(_$hash, ownerName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, active.hashCode);
    _$hash = $jc(_$hash, agentVersion.hashCode);
    _$hash = $jc(_$hash, upgradeTargetImageRef.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentInfo')
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
          ..add('customerTitle', customerTitle)
          ..add('customerIsPublic', customerIsPublic)
          ..add('agentProfileName', agentProfileName)
          ..add('ownerName', ownerName)
          ..add('groups', groups)
          ..add('active', active)
          ..add('agentVersion', agentVersion)
          ..add('upgradeTargetImageRef', upgradeTargetImageRef)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class AgentInfoBuilder implements Builder<AgentInfo, AgentInfoBuilder> {
  _$AgentInfo? _$v;

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

  String? _customerTitle;
  String? get customerTitle => _$this._customerTitle;
  set customerTitle(String? customerTitle) =>
      _$this._customerTitle = customerTitle;

  bool? _customerIsPublic;
  bool? get customerIsPublic => _$this._customerIsPublic;
  set customerIsPublic(bool? customerIsPublic) =>
      _$this._customerIsPublic = customerIsPublic;

  String? _agentProfileName;
  String? get agentProfileName => _$this._agentProfileName;
  set agentProfileName(String? agentProfileName) =>
      _$this._agentProfileName = agentProfileName;

  String? _ownerName;
  String? get ownerName => _$this._ownerName;
  set ownerName(String? ownerName) => _$this._ownerName = ownerName;

  ListBuilder<EntityInfo>? _groups;
  ListBuilder<EntityInfo> get groups =>
      _$this._groups ??= ListBuilder<EntityInfo>();
  set groups(ListBuilder<EntityInfo>? groups) => _$this._groups = groups;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  String? _agentVersion;
  String? get agentVersion => _$this._agentVersion;
  set agentVersion(String? agentVersion) => _$this._agentVersion = agentVersion;

  String? _upgradeTargetImageRef;
  String? get upgradeTargetImageRef => _$this._upgradeTargetImageRef;
  set upgradeTargetImageRef(String? upgradeTargetImageRef) =>
      _$this._upgradeTargetImageRef = upgradeTargetImageRef;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  AgentInfoBuilder() {
    AgentInfo._defaults(this);
  }

  AgentInfoBuilder get _$this {
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
      _customerTitle = $v.customerTitle;
      _customerIsPublic = $v.customerIsPublic;
      _agentProfileName = $v.agentProfileName;
      _ownerName = $v.ownerName;
      _groups = $v.groups?.toBuilder();
      _active = $v.active;
      _agentVersion = $v.agentVersion;
      _upgradeTargetImageRef = $v.upgradeTargetImageRef;
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentInfo other) {
    _$v = other as _$AgentInfo;
  }

  @override
  void update(void Function(AgentInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentInfo build() => _build();

  _$AgentInfo _build() {
    _$AgentInfo _$result;
    try {
      _$result =
          _$v ??
          _$AgentInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AgentInfo',
              'name',
            ),
            description: description,
            routingKey: BuiltValueNullFieldError.checkNotNull(
              routingKey,
              r'AgentInfo',
              'routingKey',
            ),
            secret: BuiltValueNullFieldError.checkNotNull(
              secret,
              r'AgentInfo',
              'secret',
            ),
            agentProfileId: _agentProfileId?.build(),
            version: version,
            customerTitle: customerTitle,
            customerIsPublic: customerIsPublic,
            agentProfileName: agentProfileName,
            ownerName: ownerName,
            groups: _groups?.build(),
            active: active,
            agentVersion: agentVersion,
            upgradeTargetImageRef: upgradeTargetImageRef,
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

        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentInfo',
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
