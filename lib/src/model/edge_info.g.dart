// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EdgeInfo extends EdgeInfo {
  @override
  final EdgeId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final CustomerId? customerId;
  @override
  final RuleChainId? rootRuleChainId;
  @override
  final String name;
  @override
  final String type;
  @override
  final String? label;
  @override
  final String routingKey;
  @override
  final String secret;
  @override
  final String edgeLicenseKey;
  @override
  final String cloudEndpoint;
  @override
  final int? version;
  @override
  final String? ownerName;
  @override
  final BuiltList<EntityInfo>? groups;
  @override
  final EntityId? ownerId;

  factory _$EdgeInfo([void Function(EdgeInfoBuilder)? updates]) =>
      (EdgeInfoBuilder()..update(updates))._build();

  _$EdgeInfo._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    this.customerId,
    this.rootRuleChainId,
    required this.name,
    required this.type,
    this.label,
    required this.routingKey,
    required this.secret,
    required this.edgeLicenseKey,
    required this.cloudEndpoint,
    this.version,
    this.ownerName,
    this.groups,
    this.ownerId,
  }) : super._();
  @override
  EdgeInfo rebuild(void Function(EdgeInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeInfoBuilder toBuilder() => EdgeInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EdgeInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        customerId == other.customerId &&
        rootRuleChainId == other.rootRuleChainId &&
        name == other.name &&
        type == other.type &&
        label == other.label &&
        routingKey == other.routingKey &&
        secret == other.secret &&
        edgeLicenseKey == other.edgeLicenseKey &&
        cloudEndpoint == other.cloudEndpoint &&
        version == other.version &&
        ownerName == other.ownerName &&
        groups == other.groups &&
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
    _$hash = $jc(_$hash, rootRuleChainId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, routingKey.hashCode);
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, edgeLicenseKey.hashCode);
    _$hash = $jc(_$hash, cloudEndpoint.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, ownerName.hashCode);
    _$hash = $jc(_$hash, groups.hashCode);
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EdgeInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('customerId', customerId)
          ..add('rootRuleChainId', rootRuleChainId)
          ..add('name', name)
          ..add('type', type)
          ..add('label', label)
          ..add('routingKey', routingKey)
          ..add('secret', secret)
          ..add('edgeLicenseKey', edgeLicenseKey)
          ..add('cloudEndpoint', cloudEndpoint)
          ..add('version', version)
          ..add('ownerName', ownerName)
          ..add('groups', groups)
          ..add('ownerId', ownerId))
        .toString();
  }
}

class EdgeInfoBuilder implements Builder<EdgeInfo, EdgeInfoBuilder> {
  _$EdgeInfo? _$v;

  EdgeIdBuilder? _id;
  EdgeIdBuilder get id => _$this._id ??= EdgeIdBuilder();
  set id(EdgeIdBuilder? id) => _$this._id = id;

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

  RuleChainIdBuilder? _rootRuleChainId;
  RuleChainIdBuilder get rootRuleChainId =>
      _$this._rootRuleChainId ??= RuleChainIdBuilder();
  set rootRuleChainId(RuleChainIdBuilder? rootRuleChainId) =>
      _$this._rootRuleChainId = rootRuleChainId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _routingKey;
  String? get routingKey => _$this._routingKey;
  set routingKey(String? routingKey) => _$this._routingKey = routingKey;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  String? _edgeLicenseKey;
  String? get edgeLicenseKey => _$this._edgeLicenseKey;
  set edgeLicenseKey(String? edgeLicenseKey) =>
      _$this._edgeLicenseKey = edgeLicenseKey;

  String? _cloudEndpoint;
  String? get cloudEndpoint => _$this._cloudEndpoint;
  set cloudEndpoint(String? cloudEndpoint) =>
      _$this._cloudEndpoint = cloudEndpoint;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _ownerName;
  String? get ownerName => _$this._ownerName;
  set ownerName(String? ownerName) => _$this._ownerName = ownerName;

  ListBuilder<EntityInfo>? _groups;
  ListBuilder<EntityInfo> get groups =>
      _$this._groups ??= ListBuilder<EntityInfo>();
  set groups(ListBuilder<EntityInfo>? groups) => _$this._groups = groups;

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  EdgeInfoBuilder() {
    EdgeInfo._defaults(this);
  }

  EdgeInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _customerId = $v.customerId?.toBuilder();
      _rootRuleChainId = $v.rootRuleChainId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _label = $v.label;
      _routingKey = $v.routingKey;
      _secret = $v.secret;
      _edgeLicenseKey = $v.edgeLicenseKey;
      _cloudEndpoint = $v.cloudEndpoint;
      _version = $v.version;
      _ownerName = $v.ownerName;
      _groups = $v.groups?.toBuilder();
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EdgeInfo other) {
    _$v = other as _$EdgeInfo;
  }

  @override
  void update(void Function(EdgeInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EdgeInfo build() => _build();

  _$EdgeInfo _build() {
    _$EdgeInfo _$result;
    try {
      _$result =
          _$v ??
          _$EdgeInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            rootRuleChainId: _rootRuleChainId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'EdgeInfo',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'EdgeInfo',
              'type',
            ),
            label: label,
            routingKey: BuiltValueNullFieldError.checkNotNull(
              routingKey,
              r'EdgeInfo',
              'routingKey',
            ),
            secret: BuiltValueNullFieldError.checkNotNull(
              secret,
              r'EdgeInfo',
              'secret',
            ),
            edgeLicenseKey: BuiltValueNullFieldError.checkNotNull(
              edgeLicenseKey,
              r'EdgeInfo',
              'edgeLicenseKey',
            ),
            cloudEndpoint: BuiltValueNullFieldError.checkNotNull(
              cloudEndpoint,
              r'EdgeInfo',
              'cloudEndpoint',
            ),
            version: version,
            ownerName: ownerName,
            groups: _groups?.build(),
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
        _$failedField = 'rootRuleChainId';
        _rootRuleChainId?.build();

        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'EdgeInfo',
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
