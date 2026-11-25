// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_chain.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleChain extends RuleChain {
  @override
  final RuleChainId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final RuleChainType? type;
  @override
  final RuleNodeId? firstRuleNodeId;
  @override
  final bool? root;
  @override
  final bool? debugMode;
  @override
  final JsonObject? configuration;
  @override
  final int? version;

  factory _$RuleChain([void Function(RuleChainBuilder)? updates]) =>
      (RuleChainBuilder()..update(updates))._build();

  _$RuleChain._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.tenantId,
    required this.name,
    this.type,
    this.firstRuleNodeId,
    this.root,
    this.debugMode,
    this.configuration,
    this.version,
  }) : super._();
  @override
  RuleChain rebuild(void Function(RuleChainBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleChainBuilder toBuilder() => RuleChainBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleChain &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        tenantId == other.tenantId &&
        name == other.name &&
        type == other.type &&
        firstRuleNodeId == other.firstRuleNodeId &&
        root == other.root &&
        debugMode == other.debugMode &&
        configuration == other.configuration &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, firstRuleNodeId.hashCode);
    _$hash = $jc(_$hash, root.hashCode);
    _$hash = $jc(_$hash, debugMode.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleChain')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('type', type)
          ..add('firstRuleNodeId', firstRuleNodeId)
          ..add('root', root)
          ..add('debugMode', debugMode)
          ..add('configuration', configuration)
          ..add('version', version))
        .toString();
  }
}

class RuleChainBuilder implements Builder<RuleChain, RuleChainBuilder> {
  _$RuleChain? _$v;

  RuleChainIdBuilder? _id;
  RuleChainIdBuilder get id => _$this._id ??= RuleChainIdBuilder();
  set id(RuleChainIdBuilder? id) => _$this._id = id;

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

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  RuleChainType? _type;
  RuleChainType? get type => _$this._type;
  set type(RuleChainType? type) => _$this._type = type;

  RuleNodeIdBuilder? _firstRuleNodeId;
  RuleNodeIdBuilder get firstRuleNodeId =>
      _$this._firstRuleNodeId ??= RuleNodeIdBuilder();
  set firstRuleNodeId(RuleNodeIdBuilder? firstRuleNodeId) =>
      _$this._firstRuleNodeId = firstRuleNodeId;

  bool? _root;
  bool? get root => _$this._root;
  set root(bool? root) => _$this._root = root;

  bool? _debugMode;
  bool? get debugMode => _$this._debugMode;
  set debugMode(bool? debugMode) => _$this._debugMode = debugMode;

  JsonObject? _configuration;
  JsonObject? get configuration => _$this._configuration;
  set configuration(JsonObject? configuration) =>
      _$this._configuration = configuration;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  RuleChainBuilder() {
    RuleChain._defaults(this);
  }

  RuleChainBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _firstRuleNodeId = $v.firstRuleNodeId?.toBuilder();
      _root = $v.root;
      _debugMode = $v.debugMode;
      _configuration = $v.configuration;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleChain other) {
    _$v = other as _$RuleChain;
  }

  @override
  void update(void Function(RuleChainBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleChain build() => _build();

  _$RuleChain _build() {
    _$RuleChain _$result;
    try {
      _$result =
          _$v ??
          _$RuleChain._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'RuleChain',
              'name',
            ),
            type: type,
            firstRuleNodeId: _firstRuleNodeId?.build(),
            root: root,
            debugMode: debugMode,
            configuration: configuration,
            version: version,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'firstRuleNodeId';
        _firstRuleNodeId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleChain',
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
