// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_rule_definition.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlarmRuleDefinition extends AlarmRuleDefinition {
  @override
  final CalculatedFieldId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final EntityId? entityId;
  @override
  final String? name;
  @override
  final DebugSettings? debugSettings;
  @override
  final int? configurationVersion;
  @override
  final AlarmCalculatedFieldConfiguration configuration;
  @override
  final int? version;
  @override
  final JsonObject? additionalInfo;
  @override
  final bool? debugMode;

  factory _$AlarmRuleDefinition([
    void Function(AlarmRuleDefinitionBuilder)? updates,
  ]) => (AlarmRuleDefinitionBuilder()..update(updates))._build();

  _$AlarmRuleDefinition._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.entityId,
    this.name,
    this.debugSettings,
    this.configurationVersion,
    required this.configuration,
    this.version,
    this.additionalInfo,
    this.debugMode,
  }) : super._();
  @override
  AlarmRuleDefinition rebuild(
    void Function(AlarmRuleDefinitionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AlarmRuleDefinitionBuilder toBuilder() =>
      AlarmRuleDefinitionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlarmRuleDefinition &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        entityId == other.entityId &&
        name == other.name &&
        debugSettings == other.debugSettings &&
        configurationVersion == other.configurationVersion &&
        configuration == other.configuration &&
        version == other.version &&
        additionalInfo == other.additionalInfo &&
        debugMode == other.debugMode;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, entityId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, debugSettings.hashCode);
    _$hash = $jc(_$hash, configurationVersion.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jc(_$hash, debugMode.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlarmRuleDefinition')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('entityId', entityId)
          ..add('name', name)
          ..add('debugSettings', debugSettings)
          ..add('configurationVersion', configurationVersion)
          ..add('configuration', configuration)
          ..add('version', version)
          ..add('additionalInfo', additionalInfo)
          ..add('debugMode', debugMode))
        .toString();
  }
}

class AlarmRuleDefinitionBuilder
    implements Builder<AlarmRuleDefinition, AlarmRuleDefinitionBuilder> {
  _$AlarmRuleDefinition? _$v;

  CalculatedFieldIdBuilder? _id;
  CalculatedFieldIdBuilder get id => _$this._id ??= CalculatedFieldIdBuilder();
  set id(CalculatedFieldIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  EntityId? _entityId;
  EntityId? get entityId => _$this._entityId;
  set entityId(EntityId? entityId) => _$this._entityId = entityId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DebugSettingsBuilder? _debugSettings;
  DebugSettingsBuilder get debugSettings =>
      _$this._debugSettings ??= DebugSettingsBuilder();
  set debugSettings(DebugSettingsBuilder? debugSettings) =>
      _$this._debugSettings = debugSettings;

  int? _configurationVersion;
  int? get configurationVersion => _$this._configurationVersion;
  set configurationVersion(int? configurationVersion) =>
      _$this._configurationVersion = configurationVersion;

  AlarmCalculatedFieldConfigurationBuilder? _configuration;
  AlarmCalculatedFieldConfigurationBuilder get configuration =>
      _$this._configuration ??= AlarmCalculatedFieldConfigurationBuilder();
  set configuration(AlarmCalculatedFieldConfigurationBuilder? configuration) =>
      _$this._configuration = configuration;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  bool? _debugMode;
  bool? get debugMode => _$this._debugMode;
  set debugMode(bool? debugMode) => _$this._debugMode = debugMode;

  AlarmRuleDefinitionBuilder() {
    AlarmRuleDefinition._defaults(this);
  }

  AlarmRuleDefinitionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _entityId = $v.entityId;
      _name = $v.name;
      _debugSettings = $v.debugSettings?.toBuilder();
      _configurationVersion = $v.configurationVersion;
      _configuration = $v.configuration.toBuilder();
      _version = $v.version;
      _additionalInfo = $v.additionalInfo;
      _debugMode = $v.debugMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlarmRuleDefinition other) {
    _$v = other as _$AlarmRuleDefinition;
  }

  @override
  void update(void Function(AlarmRuleDefinitionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlarmRuleDefinition build() => _build();

  _$AlarmRuleDefinition _build() {
    _$AlarmRuleDefinition _$result;
    try {
      _$result =
          _$v ??
          _$AlarmRuleDefinition._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            entityId: entityId,
            name: name,
            debugSettings: _debugSettings?.build(),
            configurationVersion: configurationVersion,
            configuration: configuration.build(),
            version: version,
            additionalInfo: additionalInfo,
            debugMode: debugMode,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'debugSettings';
        _debugSettings?.build();

        _$failedField = 'configuration';
        configuration.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AlarmRuleDefinition',
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
