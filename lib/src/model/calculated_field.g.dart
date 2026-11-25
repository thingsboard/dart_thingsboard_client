// Copyright © 2021-2026 ThingsBoard, Inc.
//
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculated_field.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CalculatedField extends CalculatedField {
  @override
  final CalculatedFieldId? id;
  @override
  final int? createdTime;
  @override
  final TenantId? tenantId;
  @override
  final EntityId? entityId;
  @override
  final CalculatedFieldType? type;
  @override
  final String? name;
  @override
  final DebugSettings? debugSettings;
  @override
  final int? configurationVersion;
  @override
  final CalculatedFieldConfiguration configuration;
  @override
  final int? version;
  @override
  final JsonObject? additionalInfo;
  @override
  final bool? debugMode;

  factory _$CalculatedField([void Function(CalculatedFieldBuilder)? updates]) =>
      (CalculatedFieldBuilder()..update(updates))._build();

  _$CalculatedField._({
    this.id,
    this.createdTime,
    this.tenantId,
    this.entityId,
    this.type,
    this.name,
    this.debugSettings,
    this.configurationVersion,
    required this.configuration,
    this.version,
    this.additionalInfo,
    this.debugMode,
  }) : super._();
  @override
  CalculatedField rebuild(void Function(CalculatedFieldBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CalculatedFieldBuilder toBuilder() => CalculatedFieldBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CalculatedField &&
        id == other.id &&
        createdTime == other.createdTime &&
        tenantId == other.tenantId &&
        entityId == other.entityId &&
        type == other.type &&
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
    _$hash = $jc(_$hash, type.hashCode);
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
    return (newBuiltValueToStringHelper(r'CalculatedField')
          ..add('id', id)
          ..add('createdTime', createdTime)
          ..add('tenantId', tenantId)
          ..add('entityId', entityId)
          ..add('type', type)
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

class CalculatedFieldBuilder
    implements Builder<CalculatedField, CalculatedFieldBuilder> {
  _$CalculatedField? _$v;

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

  CalculatedFieldType? _type;
  CalculatedFieldType? get type => _$this._type;
  set type(CalculatedFieldType? type) => _$this._type = type;

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

  CalculatedFieldConfiguration? _configuration;
  CalculatedFieldConfiguration? get configuration => _$this._configuration;
  set configuration(CalculatedFieldConfiguration? configuration) =>
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

  CalculatedFieldBuilder() {
    CalculatedField._defaults(this);
  }

  CalculatedFieldBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id?.toBuilder();
      _createdTime = $v.createdTime;
      _tenantId = $v.tenantId?.toBuilder();
      _entityId = $v.entityId;
      _type = $v.type;
      _name = $v.name;
      _debugSettings = $v.debugSettings?.toBuilder();
      _configurationVersion = $v.configurationVersion;
      _configuration = $v.configuration;
      _version = $v.version;
      _additionalInfo = $v.additionalInfo;
      _debugMode = $v.debugMode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CalculatedField other) {
    _$v = other as _$CalculatedField;
  }

  @override
  void update(void Function(CalculatedFieldBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CalculatedField build() => _build();

  _$CalculatedField _build() {
    _$CalculatedField _$result;
    try {
      _$result =
          _$v ??
          _$CalculatedField._(
            id: _id?.build(),
            createdTime: createdTime,
            tenantId: _tenantId?.build(),
            entityId: entityId,
            type: type,
            name: name,
            debugSettings: _debugSettings?.build(),
            configurationVersion: configurationVersion,
            configuration: BuiltValueNullFieldError.checkNotNull(
              configuration,
              r'CalculatedField',
              'configuration',
            ),
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
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CalculatedField',
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
