// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'integration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Integration extends Integration {
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
  final ConverterId defaultConverterId;
  @override
  final ConverterId? downlinkConverterId;
  @override
  final String routingKey;
  @override
  final String? secret;
  @override
  final JsonObject? configuration;
  @override
  final JsonObject? additionalInfo;

  factory _$Integration([void Function(IntegrationBuilder)? updates]) =>
      (IntegrationBuilder()..update(updates))._build();

  _$Integration._({
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
    required this.defaultConverterId,
    this.downlinkConverterId,
    required this.routingKey,
    this.secret,
    this.configuration,
    this.additionalInfo,
  }) : super._();
  @override
  Integration rebuild(void Function(IntegrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationBuilder toBuilder() => IntegrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Integration &&
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
        defaultConverterId == other.defaultConverterId &&
        downlinkConverterId == other.downlinkConverterId &&
        routingKey == other.routingKey &&
        secret == other.secret &&
        configuration == other.configuration &&
        additionalInfo == other.additionalInfo;
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
    _$hash = $jc(_$hash, defaultConverterId.hashCode);
    _$hash = $jc(_$hash, downlinkConverterId.hashCode);
    _$hash = $jc(_$hash, routingKey.hashCode);
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, additionalInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Integration')
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
          ..add('defaultConverterId', defaultConverterId)
          ..add('downlinkConverterId', downlinkConverterId)
          ..add('routingKey', routingKey)
          ..add('secret', secret)
          ..add('configuration', configuration)
          ..add('additionalInfo', additionalInfo))
        .toString();
  }
}

class IntegrationBuilder implements Builder<Integration, IntegrationBuilder> {
  _$Integration? _$v;

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

  ConverterIdBuilder? _defaultConverterId;
  ConverterIdBuilder get defaultConverterId =>
      _$this._defaultConverterId ??= ConverterIdBuilder();
  set defaultConverterId(ConverterIdBuilder? defaultConverterId) =>
      _$this._defaultConverterId = defaultConverterId;

  ConverterIdBuilder? _downlinkConverterId;
  ConverterIdBuilder get downlinkConverterId =>
      _$this._downlinkConverterId ??= ConverterIdBuilder();
  set downlinkConverterId(ConverterIdBuilder? downlinkConverterId) =>
      _$this._downlinkConverterId = downlinkConverterId;

  String? _routingKey;
  String? get routingKey => _$this._routingKey;
  set routingKey(String? routingKey) => _$this._routingKey = routingKey;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  JsonObject? _configuration;
  JsonObject? get configuration => _$this._configuration;
  set configuration(JsonObject? configuration) =>
      _$this._configuration = configuration;

  JsonObject? _additionalInfo;
  JsonObject? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(JsonObject? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  IntegrationBuilder() {
    Integration._defaults(this);
  }

  IntegrationBuilder get _$this {
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
      _defaultConverterId = $v.defaultConverterId.toBuilder();
      _downlinkConverterId = $v.downlinkConverterId?.toBuilder();
      _routingKey = $v.routingKey;
      _secret = $v.secret;
      _configuration = $v.configuration;
      _additionalInfo = $v.additionalInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Integration other) {
    _$v = other as _$Integration;
  }

  @override
  void update(void Function(IntegrationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Integration build() => _build();

  _$Integration _build() {
    _$Integration _$result;
    try {
      _$result =
          _$v ??
          _$Integration._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            name: BuiltValueNullFieldError.checkNotNull(
              name,
              r'Integration',
              'name',
            ),
            type: BuiltValueNullFieldError.checkNotNull(
              type,
              r'Integration',
              'type',
            ),
            debugMode: debugMode,
            debugSettings: _debugSettings?.build(),
            enabled: enabled,
            remote: remote,
            allowCreateDevicesOrAssets: allowCreateDevicesOrAssets,
            edgeTemplate: edgeTemplate,
            version: version,
            defaultConverterId: defaultConverterId.build(),
            downlinkConverterId: _downlinkConverterId?.build(),
            routingKey: BuiltValueNullFieldError.checkNotNull(
              routingKey,
              r'Integration',
              'routingKey',
            ),
            secret: secret,
            configuration: configuration,
            additionalInfo: additionalInfo,
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

        _$failedField = 'defaultConverterId';
        defaultConverterId.build();
        _$failedField = 'downlinkConverterId';
        _downlinkConverterId?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'Integration',
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
