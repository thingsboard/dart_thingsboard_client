// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_app_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AgentAppTemplate extends AgentAppTemplate {
  @override
  final TenantId? tenantId;
  @override
  final AgentApplicationType appType;
  @override
  final AgentAppConfigType? configType;
  @override
  final String currentVersion;
  @override
  final String? nextVersion;
  @override
  final BuiltList<AgentAppTemplateStartStepsInner>? startSteps;
  @override
  final BuiltList<AgentAppTemplateStartStepsInner>? upgradeSteps;
  @override
  final BuiltList<AgentAppTemplateStartStepsInner>? deleteSteps;
  @override
  final BuiltList<AgentAppTemplateStartStepsInner>? rollbackSteps;
  @override
  final BuiltList<AgentAppTemplateStartStepsInner>? restartSteps;

  factory _$AgentAppTemplate([
    void Function(AgentAppTemplateBuilder)? updates,
  ]) => (AgentAppTemplateBuilder()..update(updates))._build();

  _$AgentAppTemplate._({
    this.tenantId,
    required this.appType,
    this.configType,
    required this.currentVersion,
    this.nextVersion,
    this.startSteps,
    this.upgradeSteps,
    this.deleteSteps,
    this.rollbackSteps,
    this.restartSteps,
  }) : super._();
  @override
  AgentAppTemplate rebuild(void Function(AgentAppTemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AgentAppTemplateBuilder toBuilder() =>
      AgentAppTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AgentAppTemplate &&
        tenantId == other.tenantId &&
        appType == other.appType &&
        configType == other.configType &&
        currentVersion == other.currentVersion &&
        nextVersion == other.nextVersion &&
        startSteps == other.startSteps &&
        upgradeSteps == other.upgradeSteps &&
        deleteSteps == other.deleteSteps &&
        rollbackSteps == other.rollbackSteps &&
        restartSteps == other.restartSteps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, appType.hashCode);
    _$hash = $jc(_$hash, configType.hashCode);
    _$hash = $jc(_$hash, currentVersion.hashCode);
    _$hash = $jc(_$hash, nextVersion.hashCode);
    _$hash = $jc(_$hash, startSteps.hashCode);
    _$hash = $jc(_$hash, upgradeSteps.hashCode);
    _$hash = $jc(_$hash, deleteSteps.hashCode);
    _$hash = $jc(_$hash, rollbackSteps.hashCode);
    _$hash = $jc(_$hash, restartSteps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AgentAppTemplate')
          ..add('tenantId', tenantId)
          ..add('appType', appType)
          ..add('configType', configType)
          ..add('currentVersion', currentVersion)
          ..add('nextVersion', nextVersion)
          ..add('startSteps', startSteps)
          ..add('upgradeSteps', upgradeSteps)
          ..add('deleteSteps', deleteSteps)
          ..add('rollbackSteps', rollbackSteps)
          ..add('restartSteps', restartSteps))
        .toString();
  }
}

class AgentAppTemplateBuilder
    implements Builder<AgentAppTemplate, AgentAppTemplateBuilder> {
  _$AgentAppTemplate? _$v;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  AgentApplicationType? _appType;
  AgentApplicationType? get appType => _$this._appType;
  set appType(AgentApplicationType? appType) => _$this._appType = appType;

  AgentAppConfigType? _configType;
  AgentAppConfigType? get configType => _$this._configType;
  set configType(AgentAppConfigType? configType) =>
      _$this._configType = configType;

  String? _currentVersion;
  String? get currentVersion => _$this._currentVersion;
  set currentVersion(String? currentVersion) =>
      _$this._currentVersion = currentVersion;

  String? _nextVersion;
  String? get nextVersion => _$this._nextVersion;
  set nextVersion(String? nextVersion) => _$this._nextVersion = nextVersion;

  ListBuilder<AgentAppTemplateStartStepsInner>? _startSteps;
  ListBuilder<AgentAppTemplateStartStepsInner> get startSteps =>
      _$this._startSteps ??= ListBuilder<AgentAppTemplateStartStepsInner>();
  set startSteps(ListBuilder<AgentAppTemplateStartStepsInner>? startSteps) =>
      _$this._startSteps = startSteps;

  ListBuilder<AgentAppTemplateStartStepsInner>? _upgradeSteps;
  ListBuilder<AgentAppTemplateStartStepsInner> get upgradeSteps =>
      _$this._upgradeSteps ??= ListBuilder<AgentAppTemplateStartStepsInner>();
  set upgradeSteps(
    ListBuilder<AgentAppTemplateStartStepsInner>? upgradeSteps,
  ) => _$this._upgradeSteps = upgradeSteps;

  ListBuilder<AgentAppTemplateStartStepsInner>? _deleteSteps;
  ListBuilder<AgentAppTemplateStartStepsInner> get deleteSteps =>
      _$this._deleteSteps ??= ListBuilder<AgentAppTemplateStartStepsInner>();
  set deleteSteps(ListBuilder<AgentAppTemplateStartStepsInner>? deleteSteps) =>
      _$this._deleteSteps = deleteSteps;

  ListBuilder<AgentAppTemplateStartStepsInner>? _rollbackSteps;
  ListBuilder<AgentAppTemplateStartStepsInner> get rollbackSteps =>
      _$this._rollbackSteps ??= ListBuilder<AgentAppTemplateStartStepsInner>();
  set rollbackSteps(
    ListBuilder<AgentAppTemplateStartStepsInner>? rollbackSteps,
  ) => _$this._rollbackSteps = rollbackSteps;

  ListBuilder<AgentAppTemplateStartStepsInner>? _restartSteps;
  ListBuilder<AgentAppTemplateStartStepsInner> get restartSteps =>
      _$this._restartSteps ??= ListBuilder<AgentAppTemplateStartStepsInner>();
  set restartSteps(
    ListBuilder<AgentAppTemplateStartStepsInner>? restartSteps,
  ) => _$this._restartSteps = restartSteps;

  AgentAppTemplateBuilder() {
    AgentAppTemplate._defaults(this);
  }

  AgentAppTemplateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tenantId = $v.tenantId?.toBuilder();
      _appType = $v.appType;
      _configType = $v.configType;
      _currentVersion = $v.currentVersion;
      _nextVersion = $v.nextVersion;
      _startSteps = $v.startSteps?.toBuilder();
      _upgradeSteps = $v.upgradeSteps?.toBuilder();
      _deleteSteps = $v.deleteSteps?.toBuilder();
      _rollbackSteps = $v.rollbackSteps?.toBuilder();
      _restartSteps = $v.restartSteps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AgentAppTemplate other) {
    _$v = other as _$AgentAppTemplate;
  }

  @override
  void update(void Function(AgentAppTemplateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AgentAppTemplate build() => _build();

  _$AgentAppTemplate _build() {
    _$AgentAppTemplate _$result;
    try {
      _$result =
          _$v ??
          _$AgentAppTemplate._(
            tenantId: _tenantId?.build(),
            appType: BuiltValueNullFieldError.checkNotNull(
              appType,
              r'AgentAppTemplate',
              'appType',
            ),
            configType: configType,
            currentVersion: BuiltValueNullFieldError.checkNotNull(
              currentVersion,
              r'AgentAppTemplate',
              'currentVersion',
            ),
            nextVersion: nextVersion,
            startSteps: _startSteps?.build(),
            upgradeSteps: _upgradeSteps?.build(),
            deleteSteps: _deleteSteps?.build(),
            rollbackSteps: _rollbackSteps?.build(),
            restartSteps: _restartSteps?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tenantId';
        _tenantId?.build();

        _$failedField = 'startSteps';
        _startSteps?.build();
        _$failedField = 'upgradeSteps';
        _upgradeSteps?.build();
        _$failedField = 'deleteSteps';
        _deleteSteps?.build();
        _$failedField = 'rollbackSteps';
        _rollbackSteps?.build();
        _$failedField = 'restartSteps';
        _restartSteps?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'AgentAppTemplate',
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
