// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IntegrationInfo extends IntegrationInfo {
  @override
  final IntegrationId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final String name;
  @override
  final IntegrationType type;
  @override
  final bool? debugMode;
  @override
  final DebugSettings? debugSettings;
  @override
  final bool? enabled;
  @override
  final bool? remote;
  @override
  final bool? allowCreateDevicesOrAssets;
  @override
  final bool? edgeTemplate;
  @override
  final int? version;
  @override
  final JsonObject? status;
  @override
  final JsonObject? stats;

  factory _$IntegrationInfo([void Function(IntegrationInfoBuilder)? updates]) =>
      (IntegrationInfoBuilder()..update(updates))._build();

  _$IntegrationInfo._({
    this.id,
    this.createdTime,
    this.tenantId,
    required this.name,
    required this.type,
    this.debugMode,
    this.debugSettings,
    this.enabled,
    this.remote,
    this.allowCreateDevicesOrAssets,
    this.edgeTemplate,
    this.version,
    this.status,
    this.stats,
  }) : super._();
  @override
  IntegrationInfo rebuild(void Function(IntegrationInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationInfoBuilder toBuilder() => IntegrationInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IntegrationInfo &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        name == other.name &&
        type == other.type &&
        debugMode == other.debugMode &&
        debugSettings == other.debugSettings &&
        enabled == other.enabled &&
        remote == other.remote &&
        allowCreateDevicesOrAssets == other.allowCreateDevicesOrAssets &&
        edgeTemplate == other.edgeTemplate &&
        version == other.version &&
        status == other.status &&
        stats == other.stats;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, tenantId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, debugMode.hashCode);
    _$hash = $jc(_$hash, debugSettings.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, remote.hashCode);
    _$hash = $jc(_$hash, allowCreateDevicesOrAssets.hashCode);
    _$hash = $jc(_$hash, edgeTemplate.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, stats.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IntegrationInfo')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('name', name)
          ..add('type', type)
          ..add('debugMode', debugMode)
          ..add('debugSettings', debugSettings)
          ..add('enabled', enabled)
          ..add('remote', remote)
          ..add('allowCreateDevicesOrAssets', allowCreateDevicesOrAssets)
          ..add('edgeTemplate', edgeTemplate)
          ..add('version', version)
          ..add('status', status)
          ..add('stats', stats))
        .toString();
  }
}

class IntegrationInfoBuilder
    implements Builder<IntegrationInfo, IntegrationInfoBuilder> {
  _$IntegrationInfo? _$v;

  IntegrationIdBuilder? _id;
  IntegrationIdBuilder get id => _$this._id ??= IntegrationIdBuilder();
  set id(IntegrationIdBuilder? id) => _$this._id = id;

  int? _createdTime;
  int? get createdTime => _$this._createdTime;
  set createdTime(int? createdTime) => _$this._createdTime = createdTime;

  TenantIdBuilder? _tenantId;
  TenantIdBuilder get tenantId => _$this._tenantId ??= TenantIdBuilder();
  set tenantId(TenantIdBuilder? tenantId) => _$this._tenantId = tenantId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  IntegrationType? _type;
  IntegrationType? get type => _$this._type;
  set type(IntegrationType? type) => _$this._type = type;

  bool? _debugMode;
  bool? get debugMode => _$this._debugMode;
  set debugMode(bool? debugMode) => _$this._debugMode = debugMode;

  DebugSettingsBuilder? _debugSettings;
  DebugSettingsBuilder get debugSettings =>
      _$this._debugSettings ??= DebugSettingsBuilder();
  set debugSettings(DebugSettingsBuilder? debugSettings) =>
      _$this._debugSettings = debugSettings;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  bool? _remote;
  bool? get remote => _$this._remote;
  set remote(bool? remote) => _$this._remote = remote;

  bool? _allowCreateDevicesOrAssets;
  bool? get allowCreateDevicesOrAssets => _$this._allowCreateDevicesOrAssets;
  set allowCreateDevicesOrAssets(bool? allowCreateDevicesOrAssets) =>
      _$this._allowCreateDevicesOrAssets = allowCreateDevicesOrAssets;

  bool? _edgeTemplate;
  bool? get edgeTemplate => _$this._edgeTemplate;
  set edgeTemplate(bool? edgeTemplate) => _$this._edgeTemplate = edgeTemplate;

  int? _version;
  int? get version => _$this._version;
  set version(int? version) => _$this._version = version;

  JsonObject? _status;
  JsonObject? get status => _$this._status;
  set status(JsonObject? status) => _$this._status = status;

  JsonObject? _stats;
  JsonObject? get stats => _$this._stats;
  set stats(JsonObject? stats) => _$this._stats = stats;

  IntegrationInfoBuilder() {
    IntegrationInfo._defaults(this);
  }

  IntegrationInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _name = $v.name;
      _type = $v.type;
      _debugMode = $v.debugMode;
      _debugSettings = $v.debugSettings?.toBuilder();
      _enabled = $v.enabled;
      _remote = $v.remote;
      _allowCreateDevicesOrAssets = $v.allowCreateDevicesOrAssets;
      _edgeTemplate = $v.edgeTemplate;
      _version = $v.version;
      _status = $v.status;
      _stats = $v.stats;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IntegrationInfo other) {
    _$v = other as _$IntegrationInfo;
  }

  @override
  void update(void Function(IntegrationInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IntegrationInfo build() => _build();

  _$IntegrationInfo _build() {
    _$IntegrationInfo _$result;
    try {
      _$result =
          _$v ??
          _$IntegrationInfo._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'IntegrationInfo',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'IntegrationInfo',
              'type',
            ),
            debugMode: debugMode,
            debugSettings: _debugSettings?.build(),
            enabled: enabled,
            remote: remote,
            allowCreateDevicesOrAssets: allowCreateDevicesOrAssets,
            edgeTemplate: edgeTemplate,
            version: version,
            status: status,
            stats: stats,
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'IntegrationInfo',
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
