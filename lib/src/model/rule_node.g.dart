// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rule_node.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RuleNode extends RuleNode {
  @override
  final RuleNodeId? id;
  @override
  final int? createdTime;
  @override
  final JsonObject? additionalInfo;
  @override
  final RuleChainId? ruleChainId;
  @override
  final String? type;
  @override
  final String? name;
  @override
  final DebugSettings? debugSettings;
  @override
  final bool? singletonMode;
  @override
  final String? queueName;
  @override
  final int? configurationVersion;
  @override
  final JsonObject? configuration;
  @override
  final RuleNodeId? externalId;
  @override
  final bool? debugMode;

  factory _$RuleNode([void Function(RuleNodeBuilder)? updates]) =>
      (RuleNodeBuilder()..update(updates))._build();

  _$RuleNode._({
    this.id,
    this.createdTime,
    this.additionalInfo,
    this.ruleChainId,
    this.type,
    this.name,
    this.debugSettings,
    this.singletonMode,
    this.queueName,
    this.configurationVersion,
    this.configuration,
    this.externalId,
    this.debugMode,
  }) : super._();
  @override
  RuleNode rebuild(void Function(RuleNodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RuleNodeBuilder toBuilder() => RuleNodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RuleNode &&
        id == other.id &&
        createdTime == other.createdTime &&
        additionalInfo == other.additionalInfo &&
        ruleChainId == other.ruleChainId &&
        type == other.type &&
        name == other.name &&
        debugSettings == other.debugSettings &&
        singletonMode == other.singletonMode &&
        queueName == other.queueName &&
        configurationVersion == other.configurationVersion &&
        configuration == other.configuration &&
        externalId == other.externalId &&
        debugMode == other.debugMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, ruleChainId.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, debugSettings.hashCode);
    _$hash = $jc(_$hash, singletonMode.hashCode);
    _$hash = $jc(_$hash, queueName.hashCode);
    _$hash = $jc(_$hash, configurationVersion.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, debugMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RuleNode')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('additionalInfo', additionalInfo)
          ..add('ruleChainId', ruleChainId)
          ..add('type', type)
          ..add('name', name)
          ..add('debugSettings', debugSettings)
          ..add('singletonMode', singletonMode)
          ..add('queueName', queueName)
          ..add('configurationVersion', configurationVersion)
          ..add('configuration', configuration)
          ..add('externalId', externalId)
          ..add('debugMode', debugMode))
        .toString();
  }
}

class RuleNodeBuilder implements Builder<RuleNode, RuleNodeBuilder> {
  _$RuleNode? _$v;

  RuleNodeIdBuilder? _id;
  RuleNodeIdBuilder get id => _$this._id ??= RuleNodeIdBuilder();
  set id(RuleNodeIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  RuleChainIdBuilder? _ruleChainId;
  RuleChainIdBuilder get ruleChainId =>
      _$this._ruleChainId ??= RuleChainIdBuilder();
  set ruleChainId(RuleChainIdBuilder? ruleChainId) =>
      _$this._ruleChainId = ruleChainId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DebugSettingsBuilder? _debugSettings;
  DebugSettingsBuilder get debugSettings =>
      _$this._debugSettings ??= DebugSettingsBuilder();
  set debugSettings(DebugSettingsBuilder? debugSettings) =>
      _$this._debugSettings = debugSettings;

  bool? _singletonMode;
  bool? get singletonMode => _$this._singletonMode;
  set singletonMode(bool? singletonMode) =>
      _$this._singletonMode = singletonMode;

  String? _queueName;
  String? get queueName => _$this._queueName;
  set queueName(String? queueName) => _$this._queueName = queueName;

  int? _configurationVersion;
  int? get configurationVersion => _$this._configurationVersion;
  set configurationVersion(int? configurationVersion) =>
      _$this._configurationVersion = configurationVersion;

  JsonObject? _configuration;
  JsonObject? get configuration => _$this._configuration;
  set configuration(JsonObject? configuration) =>
      _$this._configuration = configuration;

  RuleNodeIdBuilder? _externalId;
  RuleNodeIdBuilder get externalId =>
      _$this._externalId ??= RuleNodeIdBuilder();
  set externalId(RuleNodeIdBuilder? externalId) =>
      _$this._externalId = externalId;

  bool? _debugMode;
  bool? get debugMode => _$this._debugMode;
  set debugMode(bool? debugMode) => _$this._debugMode = debugMode;

  RuleNodeBuilder() {
    RuleNode._defaults(this);
  }

  RuleNodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _additionalInfo = $v.additionalInfo;
      _ruleChainId = $v.ruleChainId?.toBuilder();
      _type = $v.type;
      _name = $v.name;
      _debugSettings = $v.debugSettings?.toBuilder();
      _singletonMode = $v.singletonMode;
      _queueName = $v.queueName;
      _configurationVersion = $v.configurationVersion;
      _configuration = $v.configuration;
      _externalId = $v.externalId?.toBuilder();
      _debugMode = $v.debugMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RuleNode other) {
    _$v = other as _$RuleNode;
  }

  @override
  void update(void Function(RuleNodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RuleNode build() => _build();

  _$RuleNode _build() {
    _$RuleNode _$result;
    try {
      _$result =
          _$v ??
          _$RuleNode._(
            id: _id?.build(),
            createdTime: createdTime,
            additionalInfo: additionalInfo,
            ruleChainId: _ruleChainId?.build(),
            type: type,
            name: name,
            debugSettings: _debugSettings?.build(),
            singletonMode: singletonMode,
            queueName: queueName,
            configurationVersion: configurationVersion,
            configuration: configuration,
            externalId: _externalId?.build(),
            debugMode: debugMode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'ruleChainId';
        _ruleChainId?.build();

        _$failedField = 'debugSettings';
        _debugSettings?.build();

        _$failedField = 'externalId';
        _externalId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'RuleNode',
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
