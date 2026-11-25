// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_profile_relation_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppProfileRelationInfo extends AgentAppProfileRelationInfo {
  @override
  final AgentAppProfileId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final String? description;
  @override
  final AgentApplicationType appType;
  @override
  final String templateVersion;
  @override
  final DockerComposeConfig? config;
  @override
  final int? version;
  @override
  final String? templateCurrentVersion;
  @override
  final AgentProfileId? agentProfileId;
  @override
  final int? assignedApplicationsCount;
  @override
  final JsonObject? additionalInfo;

  factory _$AgentAppProfileRelationInfo([
    void Function(AgentAppProfileRelationInfoBuilder)? updates,
  ]) => (AgentAppProfileRelationInfoBuilder()..update(updates))._build();

  _$AgentAppProfileRelationInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    this.description,
    required this.appType,
    required this.templateVersion,
    this.config,
    this.version,
    this.templateCurrentVersion,
    this.agentProfileId,
    this.assignedApplicationsCount,
    this.additionalInfo,
  }) : super._();
  @override
  AgentAppProfileRelationInfo rebuild(
    void Function(AgentAppProfileRelationInfoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AgentAppProfileRelationInfoBuilder toBuilder() =>
      AgentAppProfileRelationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppProfileRelationInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        description == other.description &&
        appType == other.appType &&
        templateVersion == other.templateVersion &&
        config == other.config &&
        version == other.version &&
        templateCurrentVersion == other.templateCurrentVersion &&
        agentProfileId == other.agentProfileId &&
        assignedApplicationsCount == other.assignedApplicationsCount &&
        additionalInfo == other.additionalInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, appType.hashCode);
    _$hash = $jc(_$hash, templateVersion.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, templateCurrentVersion.hashCode);
    _$hash = $jc(_$hash, agentProfileId.hashCode);
    _$hash = $jc(_$hash, assignedApplicationsCount.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppProfileRelationInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('description', description)
          ..add('appType', appType)
          ..add('templateVersion', templateVersion)
          ..add('config', config)
          ..add('version', version)
          ..add('templateCurrentVersion', templateCurrentVersion)
          ..add('agentProfileId', agentProfileId)
          ..add('assignedApplicationsCount', assignedApplicationsCount)
          ..add('additionalInfo', additionalInfo))
        .toString();
  }
}

class AgentAppProfileRelationInfoBuilder
    implements
        Builder<
          AgentAppProfileRelationInfo,
          AgentAppProfileRelationInfoBuilder
        > {
  _$AgentAppProfileRelationInfo? _$v;

  AgentAppProfileIdBuilder? _id;
  AgentAppProfileIdBuilder get id => _$this._id ??= AgentAppProfileIdBuilder();
  set id(AgentAppProfileIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AgentApplicationType? _appType;
  AgentApplicationType? get appType => _$this._appType;
  set appType(AgentApplicationType? appType) => _$this._appType = appType;

  String? _templateVersion;
  String? get templateVersion => _$this._templateVersion;
  set templateVersion(String? templateVersion) =>
      _$this._templateVersion = templateVersion;

  DockerComposeConfigBuilder? _config;
  DockerComposeConfigBuilder get config =>
      _$this._config ??= DockerComposeConfigBuilder();
  set config(DockerComposeConfigBuilder? config) => _$this._config = config;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _templateCurrentVersion;
  String? get templateCurrentVersion => _$this._templateCurrentVersion;
  set templateCurrentVersion(String? templateCurrentVersion) =>
      _$this._templateCurrentVersion = templateCurrentVersion;

  AgentProfileIdBuilder? _agentProfileId;
  AgentProfileIdBuilder get agentProfileId =>
      _$this._agentProfileId ??= AgentProfileIdBuilder();
  set agentProfileId(AgentProfileIdBuilder? agentProfileId) =>
      _$this._agentProfileId = agentProfileId;

  int? _assignedApplicationsCount;
  int? get assignedApplicationsCount => _$this._assignedApplicationsCount;
  set assignedApplicationsCount(int? assignedApplicationsCount) =>
      _$this._assignedApplicationsCount = assignedApplicationsCount;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  AgentAppProfileRelationInfoBuilder() {
    AgentAppProfileRelationInfo._defaults(this);
  }

  AgentAppProfileRelationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _description = $v.description;
      _appType = $v.appType;
      _templateVersion = $v.templateVersion;
      _config = $v.config?.toBuilder();
      _version = $v.version;
      _templateCurrentVersion = $v.templateCurrentVersion;
      _agentProfileId = $v.agentProfileId?.toBuilder();
      _assignedApplicationsCount = $v.assignedApplicationsCount;
      _additionalInfo = $v.additionalInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppProfileRelationInfo other) {
    _$v = other as _$AgentAppProfileRelationInfo;
  }

  @override
  void update(void Function(AgentAppProfileRelationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppProfileRelationInfo build() => _build();

  _$AgentAppProfileRelationInfo _build() {
    _$AgentAppProfileRelationInfo _$result;
    try {
      _$result =
          _$v ??
          _$AgentAppProfileRelationInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AgentAppProfileRelationInfo',
              'name',
            ),
            description: description,
            appType: BuiltValueNullFieldError.checkNotNull(
              appType,
              r'AgentAppProfileRelationInfo',
              'appType',
            ),
            templateVersion: BuiltValueNullFieldError.checkNotNull(
              templateVersion,
              r'AgentAppProfileRelationInfo',
              'templateVersion',
            ),
            config: _config?.build(),
            version: version,
            templateCurrentVersion: templateCurrentVersion,
            agentProfileId: _agentProfileId?.build(),
            assignedApplicationsCount: assignedApplicationsCount,
            additionalInfo: additionalInfo,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'config';
        _config?.build();

        _$failedField = 'agentProfileId';
        _agentProfileId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentAppProfileRelationInfo',
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
