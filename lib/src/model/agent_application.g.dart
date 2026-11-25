// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_application.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentApplication extends AgentApplication {
  @override
  final AgentApplicationId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final AgentId agentId;
  @override
  final String? name;
  @override
  final String? templateVersion;
  @override
  final String? desiredTemplateVersion;
  @override
  final AgentApplicationType appType;
  @override
  final DockerComposeConfig? config;
  @override
  final int? version;
  @override
  final String? projectName;
  @override
  final bool? pendingDeletion;
  @override
  final AgentApplicationOrigin? origin;
  @override
  final AgentAppProfileId? applicationProfileId;
  @override
  final int? profileConfigVersion;

  factory _$AgentApplication([
    void Function(AgentApplicationBuilder)? updates,
  ]) => (AgentApplicationBuilder()..update(updates))._build();

  _$AgentApplication._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.agentId,
    this.name,
    this.templateVersion,
    this.desiredTemplateVersion,
    required this.appType,
    this.config,
    this.version,
    this.projectName,
    this.pendingDeletion,
    this.origin,
    this.applicationProfileId,
    this.profileConfigVersion,
  }) : super._();
  @override
  AgentApplication rebuild(void Function(AgentApplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentApplicationBuilder toBuilder() =>
      AgentApplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentApplication &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        agentId == other.agentId &&
        name == other.name &&
        templateVersion == other.templateVersion &&
        desiredTemplateVersion == other.desiredTemplateVersion &&
        appType == other.appType &&
        config == other.config &&
        version == other.version &&
        projectName == other.projectName &&
        pendingDeletion == other.pendingDeletion &&
        origin == other.origin &&
        applicationProfileId == other.applicationProfileId &&
        profileConfigVersion == other.profileConfigVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, agentId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, templateVersion.hashCode);
    _$hash = $jc(_$hash, desiredTemplateVersion.hashCode);
    _$hash = $jc(_$hash, appType.hashCode);
    _$hash = $jc(_$hash, config.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, projectName.hashCode);
    _$hash = $jc(_$hash, pendingDeletion.hashCode);
    _$hash = $jc(_$hash, origin.hashCode);
    _$hash = $jc(_$hash, applicationProfileId.hashCode);
    _$hash = $jc(_$hash, profileConfigVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentApplication')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('agentId', agentId)
          ..add('name', name)
          ..add('templateVersion', templateVersion)
          ..add('desiredTemplateVersion', desiredTemplateVersion)
          ..add('appType', appType)
          ..add('config', config)
          ..add('version', version)
          ..add('projectName', projectName)
          ..add('pendingDeletion', pendingDeletion)
          ..add('origin', origin)
          ..add('applicationProfileId', applicationProfileId)
          ..add('profileConfigVersion', profileConfigVersion))
        .toString();
  }
}

class AgentApplicationBuilder
    implements Builder<AgentApplication, AgentApplicationBuilder> {
  _$AgentApplication? _$v;

  AgentApplicationIdBuilder? _id;
  AgentApplicationIdBuilder get id =>
      _$this._id ??= AgentApplicationIdBuilder();
  set id(AgentApplicationIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  AgentIdBuilder? _agentId;
  AgentIdBuilder get agentId => _$this._agentId ??= AgentIdBuilder();
  set agentId(AgentIdBuilder? agentId) => _$this._agentId = agentId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _templateVersion;
  String? get templateVersion => _$this._templateVersion;
  set templateVersion(String? templateVersion) =>
      _$this._templateVersion = templateVersion;

  String? _desiredTemplateVersion;
  String? get desiredTemplateVersion => _$this._desiredTemplateVersion;
  set desiredTemplateVersion(String? desiredTemplateVersion) =>
      _$this._desiredTemplateVersion = desiredTemplateVersion;

  AgentApplicationType? _appType;
  AgentApplicationType? get appType => _$this._appType;
  set appType(AgentApplicationType? appType) => _$this._appType = appType;

  DockerComposeConfigBuilder? _config;
  DockerComposeConfigBuilder get config =>
      _$this._config ??= DockerComposeConfigBuilder();
  set config(DockerComposeConfigBuilder? config) => _$this._config = config;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  bool? _pendingDeletion;
  bool? get pendingDeletion => _$this._pendingDeletion;
  set pendingDeletion(bool? pendingDeletion) =>
      _$this._pendingDeletion = pendingDeletion;

  AgentApplicationOrigin? _origin;
  AgentApplicationOrigin? get origin => _$this._origin;
  set origin(AgentApplicationOrigin? origin) => _$this._origin = origin;

  AgentAppProfileIdBuilder? _applicationProfileId;
  AgentAppProfileIdBuilder get applicationProfileId =>
      _$this._applicationProfileId ??= AgentAppProfileIdBuilder();
  set applicationProfileId(AgentAppProfileIdBuilder? applicationProfileId) =>
      _$this._applicationProfileId = applicationProfileId;

  int? _profileConfigVersion;
  int? get profileConfigVersion => _$this._profileConfigVersion;
  set profileConfigVersion(int? profileConfigVersion) =>
      _$this._profileConfigVersion = profileConfigVersion;

  AgentApplicationBuilder() {
    AgentApplication._defaults(this);
  }

  AgentApplicationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _agentId = $v.agentId.toBuilder();
      _name = $v.name;
      _templateVersion = $v.templateVersion;
      _desiredTemplateVersion = $v.desiredTemplateVersion;
      _appType = $v.appType;
      _config = $v.config?.toBuilder();
      _version = $v.version;
      _projectName = $v.projectName;
      _pendingDeletion = $v.pendingDeletion;
      _origin = $v.origin;
      _applicationProfileId = $v.applicationProfileId?.toBuilder();
      _profileConfigVersion = $v.profileConfigVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentApplication other) {
    _$v = other as _$AgentApplication;
  }

  @override
  void update(void Function(AgentApplicationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentApplication build() => _build();

  _$AgentApplication _build() {
    _$AgentApplication _$result;
    try {
      _$result =
          _$v ??
          _$AgentApplication._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            agentId: agentId.build(),
            name: name,
            templateVersion: templateVersion,
            desiredTemplateVersion: desiredTemplateVersion,
            appType: BuiltValueNullFieldError.checkNotNull(
              appType,
              r'AgentApplication',
              'appType',
            ),
            config: _config?.build(),
            version: version,
            projectName: projectName,
            pendingDeletion: pendingDeletion,
            origin: origin,
            applicationProfileId: _applicationProfileId?.build(),
            profileConfigVersion: profileConfigVersion,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'id';
        _id?.build();

        _$failedField = 'tenantId';
        _tenantId?.build();
        _$failedField = 'agentId';
        agentId.build();

        _$failedField = 'config';
        _config?.build();

        _$failedField = 'applicationProfileId';
        _applicationProfileId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentApplication',
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
