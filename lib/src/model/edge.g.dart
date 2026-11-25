// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Edge extends Edge {
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
  final String? edgeLicenseKey;
  @override
  final String cloudEndpoint;
  @override
  final int? version;
  @override
  final EntityId? ownerId;

  factory _$Edge([void Function(EdgeBuilder)? updates]) =>
      (EdgeBuilder()..update(updates))._build();

  _$Edge._({
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
    this.edgeLicenseKey,
    required this.cloudEndpoint,
    this.version,
    this.ownerId,
  }) : super._();
  @override
  Edge rebuild(void Function(EdgeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EdgeBuilder toBuilder() => EdgeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Edge &&
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
    _$hash = $jc(_$hash, ownerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Edge')
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
          ..add('ownerId', ownerId))
        .toString();
  }
}

class EdgeBuilder implements Builder<Edge, EdgeBuilder> {
  _$Edge? _$v;

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

  EntityId? _ownerId;
  EntityId? get ownerId => _$this._ownerId;
  set ownerId(EntityId? ownerId) => _$this._ownerId = ownerId;

  EdgeBuilder() {
    Edge._defaults(this);
  }

  EdgeBuilder get _$this {
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
      _ownerId = $v.ownerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Edge other) {
    _$v = other as _$Edge;
  }

  @override
  void update(void Function(EdgeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Edge build() => _build();

  _$Edge _build() {
    _$Edge _$result;
    try {
      _$result =
          _$v ??
          _$Edge._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            customerId: _customerId?.build(),
            rootRuleChainId: _rootRuleChainId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(name, r'Edge', 'name'),
            type: BuiltValueNullFieldError.checkNotNull(type, r'Edge', 'type'),
            label: label,
            routingKey: BuiltValueNullFieldError.checkNotNull(
              routingKey,
              r'Edge',
              'routingKey',
            ),
            secret: BuiltValueNullFieldError.checkNotNull(
              secret,
              r'Edge',
              'secret',
            ),
            edgeLicenseKey: edgeLicenseKey,
            cloudEndpoint: BuiltValueNullFieldError.checkNotNull(
              cloudEndpoint,
              r'Edge',
              'cloudEndpoint',
            ),
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
        _$failedField = 'rootRuleChainId';
        _rootRuleChainId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Edge', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
