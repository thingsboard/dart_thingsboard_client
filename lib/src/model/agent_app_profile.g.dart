// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppProfile extends AgentAppProfile {
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

  factory _$AgentAppProfile([void Function(AgentAppProfileBuilder)? updates]) =>
      (AgentAppProfileBuilder()..update(updates))._build();

  _$AgentAppProfile._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    this.description,
    required this.appType,
    required this.templateVersion,
    this.config,
    this.version,
  }) : super._();
  @override
  AgentAppProfile rebuild(void Function(AgentAppProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppProfileBuilder toBuilder() => AgentAppProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppProfile &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        description == other.description &&
        appType == other.appType &&
        templateVersion == other.templateVersion &&
        config == other.config &&
        version == other.version;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppProfile')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('description', description)
          ..add('appType', appType)
          ..add('templateVersion', templateVersion)
          ..add('config', config)
          ..add('version', version))
        .toString();
  }
}

class AgentAppProfileBuilder
    implements Builder<AgentAppProfile, AgentAppProfileBuilder> {
  _$AgentAppProfile? _$v;

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

  AgentAppProfileBuilder() {
    AgentAppProfile._defaults(this);
  }

  AgentAppProfileBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppProfile other) {
    _$v = other as _$AgentAppProfile;
  }

  @override
  void update(void Function(AgentAppProfileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppProfile build() => _build();

  _$AgentAppProfile _build() {
    _$AgentAppProfile _$result;
    try {
      _$result =
          _$v ??
          _$AgentAppProfile._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'AgentAppProfile',
              'name',
            ),
            description: description,
            appType: BuiltValueNullFieldError.checkNotNull(
              appType,
              r'AgentAppProfile',
              'appType',
            ),
            templateVersion: BuiltValueNullFieldError.checkNotNull(
              templateVersion,
              r'AgentAppProfile',
              'templateVersion',
            ),
            config: _config?.build(),
            version: version,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentAppProfile',
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
